import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class apple_mapsApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
        Communications.registerForNotifications(method(:onNotification));
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    function onNotification(notification) {
        var title = notification.getTitle();
        var message = notification.getBody();
        System.println(title + ": " + message);
        WatchUi.requestUpdate();
    }
    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new apple_mapsView(), new apple_mapsDelegate() ];
    }

}

function getApp() as apple_mapsApp {
    return Application.getApp() as apple_mapsApp;
}