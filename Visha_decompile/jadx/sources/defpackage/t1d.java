package defpackage;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.hisavana.adsession.DeviceCategory;

public abstract class t1d {
    public static UiModeManager a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = a;
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
            a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
