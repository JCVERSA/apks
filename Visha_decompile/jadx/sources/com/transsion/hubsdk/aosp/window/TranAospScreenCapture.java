package com.transsion.hubsdk.aosp.window;

import android.graphics.Rect;
import android.view.SurfaceControl;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.window.ITranScreenCaptureAdapter;
import java.lang.reflect.Method;

public class TranAospScreenCapture implements ITranScreenCaptureAdapter {
    private static final String TAG = "TranAospScreenCapture";

    @Override
    public boolean containsSecureLayers(Object obj) {
        Boolean bool;
        Method method = TranDoorMan.getMethod(obj.getClass(), "containsSecureLayers", new Class[0]);
        if (method == null || (bool = (Boolean) TranDoorMan.invokeMethod(method, obj, new Object[0])) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override
    public Object getCaptureArgs(SurfaceControl surfaceControl, Rect rect) {
        try {
            Class cls = TranDoorMan.getClass("android.window.ScreenCapture$LayerCaptureArgs$Builder");
            Object objNewInstance = cls.getConstructor(SurfaceControl.class).newInstance(surfaceControl);
            Class cls2 = Boolean.TYPE;
            Method method = TranDoorMan.getMethod(cls, "setCaptureSecureLayers", cls2);
            Method method2 = TranDoorMan.getMethod(cls, "setAllowProtected", cls2);
            Method method3 = TranDoorMan.getMethod(cls, "setSourceCrop", Rect.class);
            Method method4 = TranDoorMan.getMethod(cls, "build", new Class[0]);
            Boolean bool = Boolean.TRUE;
            TranDoorMan.invokeMethod(method, objNewInstance, bool);
            TranDoorMan.invokeMethod(method2, objNewInstance, bool);
            TranDoorMan.invokeMethod(method3, objNewInstance, rect);
            Object objInvokeMethod = TranDoorMan.invokeMethod(method4, objNewInstance, new Object[0]);
            return TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.window.ScreenCapture"), "captureLayers", objInvokeMethod.getClass()), null, objInvokeMethod);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getCaptureArgs error: " + e);
            return null;
        }
    }
}
