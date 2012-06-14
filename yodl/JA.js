//I *think* I need to rebuild the software for this to work


//line for .onDOMReady
//line for .onDOMReady
YAHOO.uk.ac.york.dlib.anim.helpPopUp.init();

//function for help pop-up
YAHOO.uk.ac.york.dlib.home.helpPopUp = function () {
	return { 
		init: function () {
		var yue = YAHOO.util.Event;
		YAHOO.uk.ac.york.dlib.home.panel1 = new YAHOO.widget.Panel("panel1", { width:"320px", visible:false, constraintoviewport:true } );
		YAHOO.uk.ac.york.dlib.home.panel1.render();
		yue.addListener("show1", "click", YAHOO.uk.ac.york.dlib.home.show, YAHOO.uk.ac.york.dlib.home.panel1, true);
		}
	}
}()

//line for .onDOMReady
YAHOO.uk.ac.york.dlib.anim.LoginBox1().init();
 
//alternate homepage login
YAHOO.uk.ac.york.dlib.anim.LoginBox1 = function () {
    return {
        init: function () {
            $("#acl-login li.fade1 a").click(function (e) {
            	//if statement here if something or other do all of this, else do just the second bit; or just duplicate
                $("form#acl-login").animate({
                    //"marginTop": '-=80'
                // replaced with following line }, 500, function () {
                }, function () {
                    //$(this).fadeTo(1000, 0.9);
                    // Animation complete.
                    $("#acl-login li.fade a").slideUp();
                    $('#acl-login li').slideDown('slow', function () {
                        $("#acl-login ul.acl li input:first").focus();
                    })
                });
                
                e.stopPropagation();
                return false;
            });
            
        }
    }
}()
