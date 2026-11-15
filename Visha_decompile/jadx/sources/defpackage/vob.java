package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class vob {
    public static final vob a = new vob();
    public static final String b = "VibrateUtils";
    public static final Class c;
    public static final Method d;
    public static final Bundle e;
    public static Object f;

    static {
        Class clsI = yj1.i("com.transsion.hubsdk.os.TranVibrator");
        c = clsI;
        d = yj1.k(clsI, "vibrate", String.class, Bundle.class);
        e = new Bundle();
        Object objNewInstance = null;
        if (clsI != null) {
            try {
                Constructor constructor = clsI.getConstructor(null);
                if (constructor != null) {
                    objNewInstance = constructor.newInstance(null);
                }
            } catch (Exception e2) {
                bq5.g(b, "Failed to get VIBRATOR instance. " + e2);
                return;
            }
        }
        f = objNewInstance;
    }

    public static final void a(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "vibratorName");
        try {
            if (f != null) {
                Bundle bundle = e;
                bundle.clear();
                bundle.putString("tran_vibrate_package", context.getPackageName());
                if (Build.VERSION.SDK_INT >= 30) {
                    bundle.putInt("tran_vibrate_usage", 18);
                }
                Method method = d;
                if (method != null) {
                    method.invoke(f, str, bundle);
                }
            }
        } catch (Exception e2) {
            bq5.g(b, "Failed to invoke vibrate " + e2);
        }
    }

    public static final void b(Context context) {
        y45.j(context, "context");
        a(context, "Az_scrol.he");
    }

    public static final void c(Context context) {
        y45.j(context, "context");
        a(context, "Cam_mode_sw.he");
    }

    public static final void d(Context context) {
        y45.j(context, "context");
        a(context, "Time_roller.he");
    }
}
