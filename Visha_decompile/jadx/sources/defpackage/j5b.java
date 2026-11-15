package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.Method;

public abstract class j5b {
    public static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            Log.w("TranVerifyKeyUtils", "getClass: " + str + " not found");
            return null;
        }
    }

    public static Method b(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            Log.w("TranVerifyKeyUtils", "getMethod: " + str + " not found in " + cls.getName());
            return null;
        }
    }

    public static Object c(Method method, Object obj, Object... objArr) {
        if (method == null) {
            return null;
        }
        method.setAccessible(true);
        return method.invoke(obj, objArr);
    }

    public static String d(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                return bundle.getString("com.transsion.appkey");
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TranVerifyKeyUtils", "readAppKey: package not found", e);
            return null;
        }
    }

    public static int e(Context context) {
        return f(context, "8C:5B:A6:2C:95:B4:C8:3A:67:1E:06:36:56:BC:F3:92:3D:EC:C0:63");
    }

    public static int f(Context context, String str) {
        try {
            return g(context, str);
        } catch (Exception e) {
            Log.e("TranVerifyKeyUtils", "verify failed", e);
            return -1;
        }
    }

    public static int g(Context context, String str) {
        Class clsA = a("com.transsion.hubsdk.TranServiceManager");
        if (clsA == null) {
            Log.w("TranVerifyKeyUtils", "class not found: com.transsion.hubsdk.TranServiceManager");
            return -1;
        }
        Method methodB = b(clsA, "getServiceIBinder", String.class);
        if (methodB == null) {
            Log.w("TranVerifyKeyUtils", "method not found: getServiceIBinder");
            return -1;
        }
        IBinder iBinder = (IBinder) c(methodB, null, "verify_key");
        Class clsA2 = a("com.transsion.hubsdk.verifykey.ITranVerifyKeyManager$Stub");
        if (iBinder == null || clsA2 == null) {
            Log.w("TranVerifyKeyUtils", "serviceIBinder or verifyStubClz is null");
            return -1;
        }
        Object objC = c(b(clsA2, "asInterface", IBinder.class), clsA2, iBinder);
        if (objC == null) {
            Log.w("TranVerifyKeyUtils", "asInterface returned null");
            return -1;
        }
        String strD = d(context);
        Log.i("TranVerifyKeyUtils", "verifyInternal: appKey = " + strD);
        if (strD == null) {
            Log.w("TranVerifyKeyUtils", "appKey not found in manifest meta-data (key: com.transsion.appkey)");
            return -1;
        }
        Method methodB2 = b(objC.getClass(), "verify", IBinder.class, String.class, String.class, String.class);
        if (methodB2 == null) {
            Log.w("TranVerifyKeyUtils", "method not found: verify");
            return -1;
        }
        Integer num = (Integer) c(methodB2, objC, new Binder(), strD, context.getPackageName(), str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
