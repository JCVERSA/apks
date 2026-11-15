package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class c {

    private static Method f26786a;

    private static Method f26787b;

    public static IBinder a(Bundle bundle, String str) {
        return p0.f26854a >= 18 ? bundle.getBinder(str) : b(bundle, str);
    }

    private static IBinder b(Bundle bundle, String str) {
        Method method = f26786a;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                f26786a = method2;
                method2.setAccessible(true);
                method = f26786a;
            } catch (NoSuchMethodException e10) {
                s.g("BundleUtil", "Failed to retrieve getIBinder method", e10);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            s.g("BundleUtil", "Failed to invoke getIBinder via reflection", e11);
            return null;
        }
    }

    public static void c(Bundle bundle, String str, IBinder iBinder) {
        if (p0.f26854a >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            d(bundle, str, iBinder);
        }
    }

    private static void d(Bundle bundle, String str, IBinder iBinder) {
        Method method = f26787b;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                f26787b = method2;
                method2.setAccessible(true);
                method = f26787b;
            } catch (NoSuchMethodException e10) {
                s.g("BundleUtil", "Failed to retrieve putIBinder method", e10);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            s.g("BundleUtil", "Failed to invoke putIBinder via reflection", e11);
        }
    }
}
