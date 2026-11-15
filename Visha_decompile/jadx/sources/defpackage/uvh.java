package defpackage;

import android.app.UiModeManager;
import android.content.Context;
import com.google.android.gms.internal.ads.zzfkb;

public abstract class uvh {
    public static UiModeManager a;

    public static zzfkb a() {
        UiModeManager uiModeManager = a;
        if (uiModeManager == null) {
            return zzfkb.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        if (currentModeType != 1) {
            return currentModeType != 4 ? zzfkb.OTHER : zzfkb.CTV;
        }
        return zzfkb.MOBILE;
    }

    public static void b(Context context) {
        if (context != null) {
            a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
