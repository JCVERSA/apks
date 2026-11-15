package le;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.hisavana.adsession.DeviceCategory;

public abstract class a {

    private static UiModeManager f65691a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = f65691a;
        if (uiModeManager == null) {
            return DeviceCategory.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        if (currentModeType != 1) {
            return currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV;
        }
        return DeviceCategory.MOBILE;
    }

    public static void b(Context context) {
        if (context != null) {
            f65691a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
