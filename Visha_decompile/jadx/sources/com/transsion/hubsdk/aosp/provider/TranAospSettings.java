package com.transsion.hubsdk.aosp.provider;

import android.content.ContentResolver;
import android.content.Context;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.provider.ITranSettingsAdapter;
import java.lang.reflect.Method;

public class TranAospSettings implements ITranSettingsAdapter {
    private static final String TAG = "TranAospSettings";
    private Context mContext = TranHubSdkManager.getContext();
    private static Class<?> sClassName = TranDoorMan.getClass("android.provider.Settings$Secure");
    private static Class<?> sSystemClassName = TranDoorMan.getClass("android.provider.Settings$System");
    private static Class<?> sGlobalClassName = TranDoorMan.getClass("android.provider.Settings$Global");

    @Override
    public int getSecureIntForUser(String str, int i, int i2) {
        Class<?> cls = sClassName;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "getIntForUser", ContentResolver.class, String.class, cls2, cls2);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, this.mContext.getContentResolver(), str, Integer.valueOf(i), Integer.valueOf(i2));
            return (objInvoke == null || !(objInvoke instanceof Integer)) ? i : ((Integer) objInvoke).intValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getSecureIntForUser fail " + th);
            return i;
        }
    }

    @Override
    public String getSecureStringForUser(String str, int i) {
        Method method = TranDoorMan.getMethod(sClassName, "getStringForUser", ContentResolver.class, String.class, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, this.mContext.getContentResolver(), str, Integer.valueOf(i));
            if (objInvoke == null || !(objInvoke instanceof String)) {
                return null;
            }
            return (String) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getSecureStringForUser fail " + th);
            return null;
        }
    }

    @Override
    public float getSystemFloatForUser(String str, float f, int i) {
        Method method = TranDoorMan.getMethod(sSystemClassName, "getFloatForUser", ContentResolver.class, String.class, Float.TYPE, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, this.mContext.getContentResolver(), str, Float.valueOf(f), Integer.valueOf(i));
            return (objInvoke == null || !(objInvoke instanceof Float)) ? f : ((Float) objInvoke).floatValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getSystemFloatForUser fail " + th);
            return f;
        }
    }

    @Override
    public long getSystemLongForUser(ContentResolver contentResolver, String str, long j, int i) {
        Method method = TranDoorMan.getMethod(sSystemClassName, "getLongForUser", ContentResolver.class, String.class, Long.TYPE, Integer.TYPE);
        return method != null ? ((Long) TranDoorMan.invokeMethod(method, null, contentResolver, str, Long.valueOf(j), Integer.valueOf(i))).longValue() : j;
    }

    @Override
    public boolean putGlobalInt(Context context, String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sGlobalClassName, "putInt", ContentResolver.class, String.class, Integer.TYPE), null, context.getContentResolver(), str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean putSecureInt(Context context, String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "putInt", ContentResolver.class, String.class, Integer.TYPE), null, context.getContentResolver(), str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean putSecureIntForUser(String str, int i, int i2) {
        Class<?> cls = sClassName;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "putIntForUser", ContentResolver.class, String.class, cls2, cls2);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, this.mContext.getContentResolver(), str, Integer.valueOf(i), Integer.valueOf(i2));
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "putSecureIntForUser fail " + th);
            return false;
        }
    }

    @Override
    public boolean putSecureStringForUser(String str, String str2, int i) {
        Method method = TranDoorMan.getMethod(sClassName, "putStringForUser", ContentResolver.class, String.class, String.class, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, this.mContext.getContentResolver(), str, str2, Integer.valueOf(i));
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "putSecureStringForUser fail " + th);
            return false;
        }
    }

    @Override
    public boolean putSystemFloatForUser(String str, float f, int i) {
        Method method = TranDoorMan.getMethod(sSystemClassName, "putFloatForUser", ContentResolver.class, String.class, Float.TYPE, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, this.mContext.getContentResolver(), str, Float.valueOf(f), Integer.valueOf(i));
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "putSystemFloatForUser fail " + th);
            return false;
        }
    }

    @Override
    public int getSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2) {
        Class<?> cls = sClassName;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "getIntForUser", ContentResolver.class, String.class, cls2, cls2);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, contentResolver, str, Integer.valueOf(i), Integer.valueOf(i2));
            return (objInvoke == null || !(objInvoke instanceof Integer)) ? i : ((Integer) objInvoke).intValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getSecureIntForUser fail " + th);
            return i;
        }
    }

    @Override
    public String getSecureStringForUser(ContentResolver contentResolver, String str, int i) {
        Method method = TranDoorMan.getMethod(sClassName, "getStringForUser", ContentResolver.class, String.class, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, contentResolver, str, Integer.valueOf(i));
            if (objInvoke == null || !(objInvoke instanceof String)) {
                return null;
            }
            return (String) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getSecureStringForUser fail " + th);
            return null;
        }
    }

    @Override
    public float getSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i) {
        Method method = TranDoorMan.getMethod(sSystemClassName, "getFloatForUser", ContentResolver.class, String.class, Float.TYPE, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, contentResolver, str, Float.valueOf(f), Integer.valueOf(i));
            return (objInvoke == null || !(objInvoke instanceof Float)) ? f : ((Float) objInvoke).floatValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getSystemFloatForUser fail " + th);
            return f;
        }
    }

    @Override
    public boolean putSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2) {
        Class<?> cls = sClassName;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "putIntForUser", ContentResolver.class, String.class, cls2, cls2);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, contentResolver, str, Integer.valueOf(i), Integer.valueOf(i2));
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "putSecureIntForUser fail " + th);
            return false;
        }
    }

    @Override
    public boolean putSecureStringForUser(ContentResolver contentResolver, String str, String str2, int i) {
        Method method = TranDoorMan.getMethod(sClassName, "putStringForUser", ContentResolver.class, String.class, String.class, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, contentResolver, str, str2, Integer.valueOf(i));
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "putSecureStringForUser fail " + th);
            return false;
        }
    }

    @Override
    public boolean putSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i) {
        Method method = TranDoorMan.getMethod(sSystemClassName, "putFloatForUser", ContentResolver.class, String.class, Float.TYPE, Integer.TYPE);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, contentResolver, str, Float.valueOf(f), Integer.valueOf(i));
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "putSystemFloatForUser fail " + th);
            return false;
        }
    }
}
