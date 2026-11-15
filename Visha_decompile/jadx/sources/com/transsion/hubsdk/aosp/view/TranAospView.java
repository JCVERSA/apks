package com.transsion.hubsdk.aosp.view;

import android.graphics.Bitmap;
import android.view.View;
import android.view.Window;
import com.transsion.hubsdk.api.view.TranUnionRenderEffectProxy;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranViewAdapter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.function.Consumer;

public class TranAospView implements ITranViewAdapter {
    private static final String TAG = "TranAospView";
    private static Class<?> sClassName = TranDoorMan.getClass("android.view.View");
    private static Class<?> sListenerClass = TranDoorMan.getClass("android.view.View$ListenerInfo");
    private static Class<?> sWindowClassName = TranDoorMan.getClass("android.view.Window");

    @Override
    public void clearHwuiLightSourceGeometry(View view) {
        TranSdkLog.e(TAG, "clearHwuiLightSourceGeometry not support");
    }

    @Override
    public void clearUnionRenderEffect(View view) {
        TranSdkLog.e(TAG, "clearUnionRenderEffect not support");
    }

    @Override
    public boolean enableBackdropBlurFilter(View view, boolean z, float f) {
        Method method = TranDoorMan.getMethod(view.getClass(), "enableBackdropBlurFilter", Boolean.TYPE, Float.TYPE);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, view, Boolean.valueOf(z), Float.valueOf(f))).booleanValue();
        }
        return false;
    }

    @Override
    public boolean forceRenderSdrUnderHdr(View view, boolean z) {
        Method method = TranDoorMan.getMethod(view.getClass(), "forceRenderSdrUnderHdr", Boolean.TYPE);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, view, Boolean.valueOf(z)));
        }
        return false;
    }

    @Override
    public float getDefaultLightZWhenAttached(View view) {
        TranSdkLog.e(TAG, "getDefaultLightZWhenAttached not support");
        return 0.0f;
    }

    @Override
    public boolean getForceClipOutShadow(View view) {
        TranSdkLog.e(TAG, "getForceClipOutShadow not support");
        return false;
    }

    @Override
    public boolean getLocalLightSourceTranslationEnabled(View view) {
        TranSdkLog.e(TAG, "getLocalLightSourceTranslationEnabled not support");
        return false;
    }

    @Override
    public float getLocalLightSourceTranslationX(View view) {
        TranSdkLog.e(TAG, "getLocalLightSourceTranslationX not support");
        return 0.0f;
    }

    @Override
    public float getLocalLightSourceTranslationY(View view) {
        TranSdkLog.e(TAG, "getLocalLightSourceTranslationY not support");
        return 0.0f;
    }

    @Override
    public long getRecordingFrameCount(View view) {
        TranSdkLog.e(TAG, "getRecordingFrameCount not support");
        return -1L;
    }

    @Override
    public TranUnionRenderEffectProxy getUnionRenderEffect(View view) {
        TranSdkLog.e(TAG, "getUnionRenderEffect not support");
        return null;
    }

    @Override
    public boolean hasSetKeyListener(View view) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "getListenerInfo", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(view, null);
            Field field = TranDoorMan.getField(sListenerClass, "mOnKeyListener");
            field.setAccessible(true);
            return field.get(objInvoke) != null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "hasSetKeyListener fail " + e);
            return false;
        }
    }

    @Override
    public boolean isRecreateDisplayList(View view) {
        try {
            Field field = TranDoorMan.getField(sClassName, "mRecreateDisplayList");
            field.setAccessible(true);
            Object obj = field.get(view);
            if (obj == null || !(obj instanceof Boolean)) {
                return false;
            }
            return ((Boolean) obj).booleanValue();
        } catch (IllegalAccessException e) {
            TranSdkLog.e(TAG, "isRecreateDisplayList fail " + e);
            return false;
        }
    }

    @Override
    public void setForceClipOutShadow(View view, boolean z) {
        TranSdkLog.e(TAG, "setForceClipOutShadow not support");
    }

    @Override
    public void setHwuiLightSourceGeometry(View view, float f, float f2, float f3, float f4) {
        TranSdkLog.e(TAG, "setHwuiLightSourceGeometry not support");
    }

    @Override
    public void setLocalLightSourceTranslation(View view, float f, float f2) {
        TranSdkLog.e(TAG, "setLocalLightSourceTranslation not support");
    }

    @Override
    public void setLocalLightSourceTranslationEnabled(View view, boolean z) {
        TranSdkLog.e(TAG, "setLocalLightSourceTranslationEnabled not support");
    }

    @Override
    public void setMaterialNoise(View view, Bitmap bitmap) {
        TranSdkLog.e(TAG, "setMaterialNoise not support");
    }

    @Override
    public boolean setOnUnionRenderFrameAvailableListener(View view, Consumer<View> consumer) {
        TranSdkLog.e(TAG, "setOnUnionRenderFrameAvailableListener not support");
        return false;
    }

    @Override
    public boolean setPromoteLayerEnabled(View view, boolean z) {
        TranSdkLog.e(TAG, "setPromoteLayerEnabled not support");
        return false;
    }

    @Override
    public void setSystemUiVisibility(Window window, int i) {
        try {
            Method method = TranDoorMan.getMethod(sWindowClassName, "getDecorView", new Class[0]);
            method.setAccessible(true);
            Object objInvokeMethod = TranDoorMan.invokeMethod(method, window, new Object[0]);
            if (objInvokeMethod == null || !(objInvokeMethod instanceof View)) {
                return;
            }
            Method method2 = TranDoorMan.getMethod(sClassName, "setSystemUiVisibility", Integer.TYPE);
            method2.setAccessible(true);
            method2.invoke((View) objInvokeMethod, Integer.valueOf(i));
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "setSystemUiVisibility fail " + e);
        }
    }

    @Override
    public void setUnionRenderEffect(View view, TranUnionRenderEffectProxy tranUnionRenderEffectProxy) {
        TranSdkLog.e(TAG, "setUnionRenderEffect not support");
    }

    @Override
    public boolean enableBackdropBlurFilter(View view, boolean z, float f, int i) {
        Method method = TranDoorMan.getMethod(view.getClass(), "enableBackdropBlurFilter", Boolean.TYPE, Float.TYPE, Integer.TYPE);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, view, Boolean.valueOf(z), Float.valueOf(f), Integer.valueOf(i))).booleanValue();
        }
        return false;
    }
}
