import Toybox.Lang;
import Toybox.WatchUi as Ui;

class apple_mapsDelegate extends WatchUi.BehaviorDelegate {

    // function initialize() {
    //     BehaviorDelegate.initialize();
    // }

    // function onMenu() as Boolean {
    //     WatchUi.pushView(new Rez.Menus.MainMenu(), new apple_mapsMenuDelegate(), WatchUi.SLIDE_UP);
    //     return true;
    // }

    var view;

    function initialize() {
        AppBase.initialize();
    }

    function onStart() {
        view = new AppleMapsView();
        Ui.pushView(view);
    }

    function onStop() {
        AppBase.onStop();
    }

    function onKey(keyEvent) {
        if (keyEvent.getPressed()) {
            var key = keyEvent.getKey();
            if (key == Ui.KEY_START) {
                // Simuler une nouvelle notification
                view.updateNotification("Tournez à droite dans 50m");
                return true;
            } else if (key == Ui.KEY_BACK) {
                // Simuler une autre notification
                view.updateNotification("Destination atteinte");
                return true;
            }
        }
        return AppBase.onKey(keyEvent);
    }
}