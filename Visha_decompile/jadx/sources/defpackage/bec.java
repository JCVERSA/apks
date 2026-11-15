package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.hubsdk.api.dragdrop.TranDragDropManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public abstract class bec {
    public static cec a(Context context, boolean z) {
        if (!c() || context == null) {
            return null;
        }
        return d(context) ? exa.a(context, z) : xj5.a(context, z);
    }

    public static float[] b(Context context) {
        if (c()) {
            return (context == null || !d(context)) ? xj5.b() : exa.b(context);
        }
        return null;
    }

    public static boolean c() {
        return ydc.f();
    }

    public static boolean d(Context context) {
        if (!c() || olb.getOsVersionCode() < 17) {
            return false;
        }
        if (context == null) {
            return true;
        }
        try {
            return new TranDragDropManager(context.getApplicationContext()).isSupportedDragDrop();
        } catch (TranThubIncompatibleException e) {
            Log.w("VishaDragDropCompat", "THUB drag-drop not available, fallback to legacy", e);
            return false;
        }
    }
}
