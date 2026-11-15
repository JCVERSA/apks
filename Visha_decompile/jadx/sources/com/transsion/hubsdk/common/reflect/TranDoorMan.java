package com.transsion.hubsdk.common.reflect;

import com.transsion.hubsdk.common.util.TranSdkLog;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class TranDoorMan {
    private static final boolean DEBUG = true;
    private static final String LOG_FAIL = " failed!";
    private static final String TAG = "TranDoorMan";

    public static Class getClass(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "access class " + str + LOG_FAIL, e);
            return null;
        }
    }

    public static <T> Constructor<T> getConstructor(Class<T> cls, Class<?>[] clsArr) {
        try {
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(clsArr);
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            if (clsArr != null) {
                int length = clsArr.length;
                for (int i = 0; i < length; i++) {
                    Class<?> cls2 = clsArr[i];
                    sb.append(cls2 == null ? "null," : cls2.getSimpleName());
                    sb.append(StringUtils.COMMA);
                }
            }
            TranSdkLog.e(TAG, "access constructor " + ((Object) sb) + " of " + cls + LOG_FAIL, e);
            return null;
        }
    }

    public static Field getField(Class<?> cls, String str) {
        while (cls != Object.class && cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "access filed " + str + " of " + cls + LOG_FAIL, e);
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static String getFieldString(String str, String str2, String str3) {
        try {
            Class<?> cls = Class.forName(str);
            Field field = getField(cls, str2);
            return field == null ? str3 : (String) field.get(cls.newInstance());
        } catch (Exception e) {
            TranSdkLog.e(TAG, "Failed to get value of getFieldString", e);
            return str3;
        }
    }

    public static <T> T getFieldValue(Field field, Object obj) {
        try {
            return (T) field.get(obj);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "Failed to get value of " + field, e);
            return null;
        }
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>... clsArr) {
        Exception e = null;
        while (cls != Object.class && cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Exception e2) {
                e = e2;
                cls = cls.getSuperclass();
            }
        }
        StringBuilder sb = new StringBuilder();
        if (clsArr != null) {
            int length = clsArr.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls2 = clsArr[i];
                sb.append(cls2 == null ? "null," : cls2.getSimpleName());
                sb.append(StringUtils.COMMA);
            }
        }
        TranSdkLog.e(TAG, "access method " + str + " " + ((Object) sb) + " of " + cls + LOG_FAIL, e);
        return null;
    }

    public static boolean getStaticFinalBoolean(Class<?> cls, String str, boolean z) {
        Field field = getField(cls, str);
        if (field == null) {
            return z;
        }
        try {
            return field.getBoolean(null);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "Failed to getBoolean value of " + field, e);
            return z;
        }
    }

    public static int getStaticFinalInt(Class<?> cls, String str, int i) {
        Field field = getField(cls, str);
        if (field == null) {
            return i;
        }
        try {
            return field.getInt(null);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "Failed to getInt value of " + field, e);
            return i;
        }
    }

    public static <T> T invokeMethod(Method method, Object obj, Object... objArr) {
        try {
            return (T) method.invoke(obj, objArr);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "Failed to invoke " + method, e);
            return null;
        }
    }

    public static Class getClass(String str, ClassLoader classLoader) {
        try {
            return Class.forName(str, false, classLoader);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "access class " + str + LOG_FAIL, e);
            return null;
        }
    }
}
