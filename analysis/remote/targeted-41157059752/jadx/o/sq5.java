package o;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import androidx.core.content.ContextCompat;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.lang.reflect.InvocationTargetException;

public class sq5 {
    public static boolean a() {
        return n("android.permission.ACCESS_COARSE_LOCATION");
    }

    public static boolean b() {
        if (Build.VERSION.SDK_INT >= 30) {
            return ts.a();
        }
        return false;
    }

    public static boolean c() {
        return n("android.permission.WRITE_EXTERNAL_STORAGE") || b();
    }

    public static boolean d() {
        return n("android.permission.READ_EXTERNAL_STORAGE") || b();
    }

    public static String e() {
        return Build.VERSION.SDK_INT < 30 ? "android.permission.WRITE_EXTERNAL_STORAGE" : "android.permission.MANAGE_EXTERNAL_STORAGE";
    }

    public static boolean f() {
        if (Build.VERSION.SDK_INT >= 23) {
            return us.a(GlobalConfig.getAppContext());
        }
        if (!az7.c0()) {
            return true;
        }
        try {
            return j(GlobalConfig.getAppContext(), "OP_SYSTEM_ALERT_WINDOW");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean g() {
        return Build.VERSION.SDK_INT < 30 ? c() : b();
    }

    public static boolean h(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return rq5.a(context.getPackageManager());
        }
        return Settings.Secure.getInt(context.getContentResolver(), "install_non_market_apps", 0) == 1;
    }

    public static boolean i(Context context) {
        int iCheckOpNoThrow;
        try {
            iCheckOpNoThrow = ((AppOpsManager) context.getSystemService("appops")).checkOpNoThrow("android:picture_in_picture", Process.myUid(), context.getPackageName());
        } catch (Exception e) {
            e.printStackTrace();
            iCheckOpNoThrow = 1;
        }
        return iCheckOpNoThrow == 0;
    }

    public static boolean j(Context context, String str) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getPackageName();
        int i = applicationInfo.uid;
        Object systemService = context.getSystemService("appops");
        try {
            Class<?> cls = Class.forName("android.app.AppOpsManager");
            Class<?> cls2 = Integer.TYPE;
            return de5.d(cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(systemService, Integer.valueOf(cls.getDeclaredField(str).getInt(Integer.class)), Integer.valueOf(i), packageName).toString(), -1) == 0;
        } catch (ClassNotFoundException unused) {
            throw new UnknownError("class not found");
        } catch (IllegalAccessException unused2) {
            throw new UnknownError("illegal access");
        } catch (NoSuchFieldException unused3) {
            throw new UnknownError("no such field");
        } catch (NoSuchMethodException unused4) {
            throw new UnknownError("no such method");
        } catch (InvocationTargetException unused5) {
            throw new UnknownError("invocation target");
        }
    }

    public static boolean k(String str) {
        str.hashCode();
        switch (str) {
            case "android.permission.POST_NOTIFICATIONS":
                if (uh.f()) {
                    return n("android.permission.POST_NOTIFICATIONS");
                }
                return true;
            case "android.permission.MANAGE_EXTERNAL_STORAGE":
                return b();
            case "android.permission.WRITE_EXTERNAL_STORAGE":
                return c();
            default:
                return false;
        }
    }

    public static boolean l() {
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        Context appContext = GlobalConfig.getAppContext();
        try {
            return appContext.getPackageManager().getPermissionInfo("com.android.permission.GET_INSTALLED_APPS", 0) == null || ContextCompat.checkSelfPermission(appContext, "com.android.permission.GET_INSTALLED_APPS") == 0;
        } catch (Exception e) {
            ProductionEnv.w("PermissionUtils", e);
        }
        return true;
    }

    public static boolean m() {
        return n("android.permission.WRITE_EXTERNAL_STORAGE");
    }

    public static boolean n(String str) {
        return !uh.k() || ContextCompat.checkSelfPermission(GlobalConfig.getAppContext(), str) == 0;
    }
}
