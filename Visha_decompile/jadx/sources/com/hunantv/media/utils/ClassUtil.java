package com.hunantv.media.utils;

import java.lang.reflect.Method;

public class ClassUtil {
    public static boolean isClassExist(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isMethodExist(String str, String str2) {
        try {
            Method[] declaredMethods = Class.forName(str).getDeclaredMethods();
            if (declaredMethods != null) {
                for (Method method : declaredMethods) {
                    if (method.getName().equals(str2)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
