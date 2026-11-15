package com.transsion.hubsdk.aosp.view;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranRenderNodeAnimatorAdapter;
import java.lang.reflect.Method;

public class TranAospRenderNodeAnimator implements ITranRenderNodeAnimatorAdapter {
    private static final String TAG = "TranAospRenderNodeAnimator";
    private static Class<?> sClass = TranDoorMan.getClass("android.view.RenderNodeAnimator");
    private Object mInstance;

    @Override
    public void clearPromote() {
        Class<?> cls = sClass;
        if (cls == null || this.mInstance == null) {
            TranSdkLog.w(TAG, "RenderNodeAnimator not found");
            return;
        }
        Method method = TranDoorMan.getMethod(cls, "clearPromote", new Class[0]);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mInstance, new Object[0]);
        } else {
            TranSdkLog.i(TAG, "clearPromote method is null!");
        }
    }

    @Override
    public void setInstance(Object obj) {
        this.mInstance = obj;
    }

    @Override
    public void setPromote(boolean z) {
        Class<?> cls = sClass;
        if (cls == null || this.mInstance == null) {
            TranSdkLog.w(TAG, "RenderNodeAnimator not found");
            return;
        }
        Method method = TranDoorMan.getMethod(cls, "setPromote", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mInstance, Boolean.valueOf(z));
        } else {
            TranSdkLog.i(TAG, "setPromote method is null!");
        }
    }
}
