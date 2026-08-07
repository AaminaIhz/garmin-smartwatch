import Toybox.Graphics;
import Toybox.WatchUi;

class ProfileSettingsMenuView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    function onUpdate(dc as Dc) as Void {
        
        // Makes screen black and clears it
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        // gets screen dimensions
        var width = dc.getWidth();
        var height = dc.getHeight();

        var centerX = width / 2;

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            centerX,
            (height * 0.45).toNumber(),
            Graphics.FONT_MEDIUM,
            "Profile",
            Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER
        );

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.drawText(centerX, (height * 0.60).toNumber(), Graphics.FONT_XTINY, "START to open", Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
    }
}
