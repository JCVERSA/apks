package defpackage;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import com.transsion.hubsdk.display.BuildConfig;

public abstract class h6e {
    public static boolean a(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(BuildConfig.FLAVOR);
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null || !display.isHdr()) {
            return false;
        }
        for (int i : display.getHdrCapabilities().getSupportedHdrTypes()) {
            if (i == 1) {
                return true;
            }
        }
        return false;
    }
}
