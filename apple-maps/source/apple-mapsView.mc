import Toybox.Graphics;
import Toybox.WatchUi as Ui;

class apple_mapsView extends Ui.View {
    var notificationText = "Aucune notification";

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
        View.onShow();
    }

    // Update the view
    function onUpdate(dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        // View.onUpdate(dc);
        // Effacer l'écran avec un fond noir
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        // Définir la couleur du texte en blanc
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);

        // Obtenir les dimensions de l'écran
        var width = dc.getWidth();
        var height = dc.getHeight();

        // Définir la police
        var font = Graphics.FONT_XLARGE;

        // Afficher le texte de la notification au centre
        dc.drawText(width / 2, height / 2, font, notificationText, Graphics.TEXT_JUSTIFY_CENTER);
    
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
        View.onHide();
    }

    // Fonction pour mettre à jour le texte de la notification
    function updateNotification(text) {
        notificationText = text;
        // Redessiner la vue
        Ui.requestUpdate();
    }

}
