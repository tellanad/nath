({
    embedVideo: function(url) {
        
        return embedYoutube(url);

        function embedYoutube (url) {  

            var URLvideo = "https://www.youtube.com/embed/__URLVIDEO?showinfo=0&autohide=1";        
            var HASHvideo = getQueryParam(url, 'v');
            URLvideo = URLvideo.replace('__URLVIDEO', HASHvideo);

            return URLvideo;
        }

        function getQueryParam(url, param ) {

            if (!url){
                return null;
            }
            else{
                param = param.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
                var regexS = "[\\?&]"+param+"=([^&#]*)";
                var regex = new RegExp( regexS );
                var results = regex.exec( url );    
            } 
            
            return results == null ? null : results[1];
    	} 
    }, 
    heightVideo: function(heigth) {
        if (heigth < 0) {
            return 0;
        } else {
            return heigth;
        }
    }
})