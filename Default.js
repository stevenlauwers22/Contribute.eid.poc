Contribute = window.Contribute || {};
Contribute.eid = Contribute.eid || {};

Contribute.eid.uitlezen = function(sessionId) {
	var attributes = {
        code: 'be.fedict.eid.applet.Applet.class',
        archive: 'eid-applet-package-1.1.3.jar',
        width: 600,
        height: 300
    };

    var parameters = {
        TargetPage: 'https://qfbam.cronos.be',
        AppletService: 'https://tools.contribute.be/ingpoc/applet-service;jsessionid=' + sessionId,
        BackgroundColor: '#ffffff',
        Language: 'en',
        HideDetailsButton: true
    };
    
    var version = '1.6';
    deployJava.runApplet(attributes, parameters, version);
};

Contribute.eid.uitlezenMetCode = function (sessionId) {
    var attributes = {
        code: 'be.fedict.eid.applet.Applet.class',
        archive: 'eid-applet-package-1.1.3.jar',
        width: 600,
        height: 300
	};

	var parameters = {
		TargetPage: 'https://qfbam.cronos.be',
		AppletService: 'https://tools.contribute.be/ingpoc/authentication-service;jsessionid=' + sessionId,
		BackgroundColor: '#ffffff',
		Language: 'en',
		HideDetailsButton: true
	};
    
	var version = '1.6';
	deployJava.runApplet(attributes, parameters, version);
};
