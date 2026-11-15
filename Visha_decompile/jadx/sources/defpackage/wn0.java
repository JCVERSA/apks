package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class wn0 {
    public static Method a;
    public static Method b;

    public static IBinder a(Bundle bundle, String str) {
        return blb.a >= 18 ? bundle.getBinder(str) : b(bundle, str);
    }

    public static IBinder b(Bundle bundle, String str) {
        Method method = a;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                a = method2;
                method2.setAccessible(true);
                method = a;
            } catch (NoSuchMethodException e) {
                op5.g("BundleUtil", "Failed to retrieve getIBinder method", e);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            op5.g("BundleUtil", "Failed to invoke getIBinder via reflection", e2);
            return null;
        }
    }

    public static void c(Bundle bundle, String str, IBinder iBinder) {
        if (blb.a >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            d(bundle, str, iBinder);
        }
    }

    public static void d(Bundle bundle, String str, IBinder iBinder) {
        Method method = b;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                b = method2;
                method2.setAccessible(true);
                method = b;
            } catch (NoSuchMethodException e) {
                op5.g("BundleUtil", "Failed to retrieve putIBinder method", e);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            op5.g("BundleUtil", "Failed to invoke putIBinder via reflection", e2);
        }
    }
}
