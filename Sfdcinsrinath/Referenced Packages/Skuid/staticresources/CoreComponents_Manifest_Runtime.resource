{
	"id" : "skuidcore",
	"components" : [
	    {
	    	"id" : "panelset",
	    	"pathsToChildComponents" : ["panels>panel>components"]
	    },
	    {
	    	"id" : "grid",
	    	"pathsToChildComponents" : ["divisions>division>components"]
	    },
	    {
	    	"id" : "file",
	    	"customLabelDependencies" : [
	    		"error_invalid_file_upload_data_source",
	    		"error_could_not_find_upload_method"
	    	],
	    	"pathsToDataSourceAttributes" : [":datasource"]
	    },
	    {
			"id" : "image",
			"pathsToDataSourceAttributes" : [":datasource"]
		},
	    {
			"id" : "pagetitle",
			"customLabelDependencies" : [
				"clone",
	        	"confirm_delete",
	        	"delete",
	        	"deleting",
	        	"edit_page",
	        	"no",
	        	"no_but_i_would_like_to_delete",
	        	"no_dont_delete_anything",
	        	"share",
	        	"yes"
			],
			"pathsToActions" : ["actions"]
		},
		{
			"id" : "panel",
			"pathsToChildComponents" : ["components"]
		},
		{
			"id" : "search",
			"pathsToActions" : ["selectactions","resultactions>action>actions","objects>object>resultactions>action>actions"],
			"pathsToDataSourceAttributes" : ["objects>object:datasource"]
		},
		{
			"id": "skoocal",
			"customLabelDependencies": [
				"add_a_new",
				"add_new",
				"add_this",
				"apply",
				"day_scheduling_view",
				"delete",
				"list_view",
				"loading_calendar_events",
				"month_view",
				"new_event",
				"required_fields_have_no_value",
				"row_selected",
				"rows_selected",
				"search",
				"select_event_type_to_create",
				"show",
				"view_more",
				"week_view"
			],
			"pathsToChildComponents": ["sources>eventsource>onclickpopup>components"]
		},
		{
			"id" : "skootable",
			"pathsToActions" : ["actions","rowactions","massactions"],
			"customLabelDependencies" : [
				"actions",
				"add_a_new",
				"add_all_visible_objects",
				"add_new",
				"add_this",
				"apply",
				"applying_sort_order_change",
				"cannot_find_object_question",
				"custom_action",
				"column",
				"edit_row",
				"export_data",
				"flag_for_deletion",
				"list_view",
				"mass_update_selected_rows",
				"picture_view",
				"required_fields_have_no_value",
				"row_selected",
				"rows_selected", 
				"show",
				"summary_avg",
				"summary_max",
				"summary_med",
				"summary_min",
				"summary_sum",
				"table_settings",
				"toggle_selected_rows_for_deletion",
				"toggle_edit_mode_on_selected_rows",
				"view_more",
				"visible"
			]
		},
	    {
			"id" : "tabset",
			"pathsToChildComponents" : ["tabs>tab>components"],
			"customLabelDependencies" : ["loading"]
		},
		{
			"id" : "filterset",
			"pathsToChildComponents" : ["components"]
		},
		{
			"id" : "skuidheader",
			"pathsToChildComponents" : ["components"]
		},
		{
			"id" : "skuidfooter",
			"pathsToChildComponents" : ["components"]
		},
		{
			"id" : "wizard",
			"pathsToChildComponents": ["steps>step>components"],
			"pathsToActions": ["steps>step>actions"]
		},
		{
			"id" : "wrapper",
			"pathsToChildComponents" : ["components"],
			"pathsToDataSourceAttributes": [
				"styles>styleitem:datasource"
			]
		},
		{
			"id" : "deck",
			"pathsToChildComponents" : ["components"],
			"customLabelDependencies" : [
				"select_cards", 
				"toggle_selected_rows_for_deletion",
				"item_selected",
				"items_selected"
			]
		},
		{
			"id" : "buttonset",
			"pathsToActions" : ["buttons", "buttons>button>actions"]
		},
		{
			"id" : "queue",
			"pathsToActions" : ["actions"]
		},
		{
			"id" : "navigation",
			"customLabelDependencies" : ["expand_collapse"]
		},
		{
			"id" : "themecomposer",
			"js" : [
			     { "path" : "themecomposer.js" }
			],
			"css" : [
			     { "path" : "themecomposercss/style.css" }
			]
		},
		{
			"id" : "themelist",
			"js" : [
			     { "path" : "themecomposer.js" }
			]
		}
	],
	"js" : [
		{ "path" : "core.js" },
		{ "path" : "salesforce.js"}
	]
}