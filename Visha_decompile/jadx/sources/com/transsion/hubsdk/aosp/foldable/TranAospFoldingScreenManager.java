package com.transsion.hubsdk.aosp.foldable;

import android.content.Context;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.foldable.ITranFoldingScreenAdapter;
import java.lang.reflect.Method;

public class TranAospFoldingScreenManager implements ITranFoldingScreenAdapter {
    private static final String EXCEPTION_TEXT = " dont has class of TranFoldingScreenManager";
    private static Class<?> sClassName = TranDoorMan.getClass("com.transsion.hubsdk.foldable.TranFoldingScreen");
    private Object mInstance = getInstance();

    private Object getInstance() {
        try {
            Class<?> cls = sClassName;
            if (cls != null) {
                return cls.newInstance();
            }
            return null;
        } catch (Exception e) {
            TranSdkLog.e(getClass().getSimpleName(), "getInstance fail:" + e);
            return null;
        }
    }

    @Override
    public void addActivityEmbeddingPkg(Context context, String str) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls == null) {
            throw new TranThubIncompatibleException(EXCEPTION_TEXT);
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "addActivityEmbeddingPkg", Context.class, String.class), this.mInstance, context, str);
    }

    @Override
    public String getActivityEmbeddingPkgs(Context context) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls != null) {
            return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getActivityEmbeddingPkgs", Context.class), this.mInstance, context);
        }
        throw new TranThubIncompatibleException(EXCEPTION_TEXT);
    }

    @Override
    public int getCompatibleMode(Context context, String str) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls == null) {
            throw new TranThubIncompatibleException(EXCEPTION_TEXT);
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getCompatibleMode", Context.class, String.class), this.mInstance, context, str);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public boolean getHoverModeStateForPackage(Context context, String str) throws TranThubIncompatibleException {
        Method method;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.foldable.TranFoldingScreen");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getHoverModeStateForPackage", Context.class, String.class)) == null) {
            return false;
        }
        try {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, cls.newInstance(), context, str));
        } catch (Exception e) {
            TranSdkLog.e(getClass().getSimpleName(), "getHoverModeStateForPackage fail:" + e);
            return false;
        }
    }

    @Override
    public int getScreenRelayMode(Context context) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls == null) {
            throw new TranThubIncompatibleException(EXCEPTION_TEXT);
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getScreenRelayMode", Context.class), this.mInstance, context);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public boolean isPkgInActivityEmbedding(Context context, String str) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls == null) {
            throw new TranThubIncompatibleException(EXCEPTION_TEXT);
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "isPkgInActivityEmbedding", Context.class, String.class), this.mInstance, context, str);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public void removeActivityEmbeddingPkg(Context context, String str) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls == null) {
            throw new TranThubIncompatibleException(EXCEPTION_TEXT);
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "removeActivityEmbeddingPkg", Context.class, String.class), this.mInstance, context, str);
    }

    @Override
    public void setCompatibleMode(Context context, String str, int i) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls == null) {
            throw new TranThubIncompatibleException(EXCEPTION_TEXT);
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setCompatibleMode", Context.class, String.class, Integer.TYPE), this.mInstance, context, str, Integer.valueOf(i));
    }

    @Override
    public void setHoverModeStateForPackage(Context context, String str, boolean z, boolean z2) throws TranThubIncompatibleException {
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.foldable.TranFoldingScreen");
        if (cls != null) {
            Class cls2 = Boolean.TYPE;
            try {
                TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setHoverModeStateForPackage", Context.class, String.class, cls2, cls2), cls.newInstance(), context, str, Boolean.valueOf(z), Boolean.valueOf(z2));
            } catch (Exception e) {
                TranSdkLog.e(getClass().getSimpleName(), "setHoverModeStateForPackage fail:" + e);
            }
        }
    }

    @Override
    public void setScreenRelayMode(Context context, int i) throws TranThubIncompatibleException {
        Class<?> cls = sClassName;
        if (cls == null) {
            throw new TranThubIncompatibleException(EXCEPTION_TEXT);
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setScreenRelayMode", Context.class, Integer.TYPE), this.mInstance, context, Integer.valueOf(i));
    }

    @Override
    public void setCompatibleMode(Context context, String str, int i, boolean z) throws TranThubIncompatibleException {
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.foldable.TranFoldingScreen");
        if (cls != null) {
            try {
                TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setCompatibleMode", Context.class, String.class, Integer.TYPE, Boolean.TYPE), cls.newInstance(), context, str, Integer.valueOf(i), Boolean.valueOf(z));
            } catch (Exception e) {
                TranSdkLog.e(getClass().getSimpleName(), "setCompatibleMode fail:" + e);
            }
        }
    }
}
