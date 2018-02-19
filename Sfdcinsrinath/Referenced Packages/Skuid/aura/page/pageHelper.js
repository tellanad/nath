({
	loadSkuid : function(component) {

		var helper = this;

		if (component.isReady && component.mainElement && !component.hasRendered) {
			component.hasRendered = true;
		} else {
			return;
		}

		var paramsToSend,
			useURLParams = component.get('v.useURLParameters'),
			pageParam = component.get('v.page'),
			idParam = component.get('v.id'),
			recordIdParam = component.get('v.recordId'),
			parametersParam = component.get('v.parameters'),
			typeParam = component.get('v.type');
		
		if (useURLParams) {
			paramsToSend = skuid.utils.getQueryParamsObject(window.location.search);
		} else {
			paramsToSend = {};
		}
		
		if (parametersParam) {
			skuid.$.extend(paramsToSend,JSON.parse(parametersParam));
		}
		
		if (pageParam) {
			paramsToSend.page = pageParam;
		}
		// If we don't have a pageParameter, we need to shut down and wait for the parameter to be populated
		if (!paramsToSend.page) {
			return;
		}
		
		if (recordIdParam) {
			paramsToSend.id = recordIdParam;
		}

		if (idParam) {
			paramsToSend.id = idParam;
		}

		helper.setupRemotingStubs(component);

		var sitePrefix = null;
		skuid.utils._setAttachmentBaseUrl((sitePrefix ? sitePrefix : '') + '/servlet/servlet.FileDownload?file=blah');

		skuid.loader.load({
			pageName : pageParam,
			pageType: typeParam,
			parameters: paramsToSend,
			wrapper: skuid.$(component.mainElement).attr('id', skuid.utils.generateUniqueId()) // SKUID-3419: the page element must have an id
		});
	},
	setupRemotingStubs: function(component){

		var helper = this;
		// Hack our remotingStubs methods
		skuid.RemotingStubs = {
			load : function(request,callback) {
				helper.runRemotingAction(component.get('c.load'),{ json : request },callback);
			},
			save : function(request,callback) {
				helper.runRemotingAction(component.get('c.save'),{ json : request },callback);
			},
			getModelMetadata : function(request,callback) {
				helper.runRemotingAction(component.get('c.getModelMetadata'),{ options : request },callback);
			},
			doSearch : function(request,callback) {
				helper.runRemotingAction(component.get('c.doSearch'),{ json : request },callback);
			},
			proxy : function(request,callback) {
				helper.runRemotingAction(component.get('c.proxy'),{ request: request},callback);
			},
			updatePersonalizationSettings : function(pageId,settingsJson,callback) {
				helper.runRemotingAction(component.get('c.updatePersonalizationSettings'),{ pageId : pageId, settingsJson : settingsJson },callback);
			},
			getLightningComponentMetadata : function(componentType,callback){
				helper.runRemotingAction(component.get('c.getLightningComponentMetadata'),{ componentType: componentType },callback);
			},
			getBodiesOfZIPResourceFiles : function(request,callback){
				helper.runRemotingAction(component.get('c.getBodiesOfZIPResourceFiles'),{ request: request },callback);
			},
			componentPackService: function(pageType,callback){
				helper.runRemotingAction(component.get('c.componentPackService'),{ pageType: pageType },callback);
			},
			pageService: function(pageName,pageModule,callback){
				helper.runRemotingAction(component.get('c.pageService'),{ pageName: pageName, pageModule: pageModule },callback);
			},
			themeService: function(themeToRequest,callback){
				helper.runRemotingAction(component.get('c.themeService'),{ themeToRequest: themeToRequest },callback);
			},
			metaService: function(request,callback){
				helper.runRemotingAction(component.get('c.metaService'),{ request: request },callback);
			}
		};
	},
	runRemotingAction : function(action,request,callback,options) {    

		action.setParams(request);
		
		action.setCallback(this, function(action) {
			var result = action.getReturnValue(),
				state = action.getState(),
				event = {};
			
			if (state === "SUCCESS") {
				event.status = state;
			}
			else if (state === "ERROR") {
				var errors = action.getError();
				if (errors) {
					if (errors[0] && errors[0].message) {
						event.message = "Error message: " + errors[0].message;
					}
				} else {
					event.message = 'Unknown error';
				}
			}
			
			callback && callback(result,event);
		});
		
		/* global $A */
		if (options && options.getCallback===false) {
			$A.enqueueAction(action);
		} else {
			$A.getCallback(function(){
				$A.enqueueAction(action);
			})();
		}
	}
	// eslint-disable-next-line semi
})