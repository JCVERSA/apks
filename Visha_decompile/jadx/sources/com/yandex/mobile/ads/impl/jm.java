package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class jm {

    @Nullable
    private static Method a;

    @Nullable
    public static IBinder a(Bundle bundle, @Nullable String str) {
        if (f92.a >= 18) {
            return bundle.getBinder(str);
        }
        Method method = a;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                a = method2;
                method2.setAccessible(true);
                method = a;
            } catch (NoSuchMethodException e) {
                et0.a("Failed to retrieve getIBinder method", (Exception) e);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            et0.a("Failed to invoke getIBinder via reflection", e2);
            return null;
        }
    }
}
