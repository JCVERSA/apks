package com.transsion.hubsdk.aosp.graphics;

import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.os.IBinder;
import android.view.Display;
import android.view.SurfaceControl;
import com.transsion.hubsdk.api.graphics.TranGraphicBuffer;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.graphics.ITranGraphicBufferAdapter;
import java.lang.reflect.Method;

public class TranAospGraphicBuffer implements ITranGraphicBufferAdapter {
    private static final String TAG = "TranAospGraphicBuffer";
    private static Class<?> sBuilderClass = TranDoorMan.getClass("android.view.SurfaceControl$DisplayCaptureArgs$Builder");
    private static Class<?> sArgClass = TranDoorMan.getClass("android.view.SurfaceControl$DisplayCaptureArgs");

    private TranGraphicBuffer createBufferReflect(Object obj) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.graphics.GraphicBuffer"), "createFromHardwareBuffer", HardwareBuffer.class), null, obj);
        TranGraphicBuffer tranGraphicBuffer = new TranGraphicBuffer();
        if (objInvokeMethod != null) {
            Method method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getWidth", new Class[0]);
            Method method2 = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getHeight", new Class[0]);
            int iIntValue = ((Integer) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).intValue();
            int iIntValue2 = ((Integer) TranDoorMan.invokeMethod(method2, objInvokeMethod, new Object[0])).intValue();
            tranGraphicBuffer.setWidth(iIntValue);
            tranGraphicBuffer.setHeight(iIntValue2);
        }
        return tranGraphicBuffer;
    }

    @Override
    public TranGraphicBuffer createFromHardwareBuffer(Display display, int i, int i2) {
        TranGraphicBuffer tranGraphicBuffer = new TranGraphicBuffer();
        try {
            if (!TranThubVersionUtil.isLowerAndroidT() && !TranThubVersionUtil.isAndroidT()) {
                return tranGraphicBuffer;
            }
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(display.getClass(), "getAddress", new Class[0]), display, new Object[0]);
            Object objNewInstance = sBuilderClass.getConstructor(IBinder.class).newInstance(TranDoorMan.invokeMethod(TranDoorMan.getMethod(SurfaceControl.class, "getPhysicalDisplayToken", Long.TYPE), null, (Long) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getPhysicalDisplayId", new Class[0]), objInvokeMethod, new Object[0])));
            Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "setSourceCrop", Rect.class), objNewInstance, new Rect(0, 0, i, i2));
            Class<?> cls = objNewInstance.getClass();
            Class cls2 = Integer.TYPE;
            Object objInvokeMethod3 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(SurfaceControl.class, "captureDisplay", sArgClass), null, TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "build", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setSize", cls2, cls2), objInvokeMethod2, Integer.valueOf(i), Integer.valueOf(i2)), new Object[0]));
            return createBufferReflect(TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod3.getClass(), "getHardwareBuffer", new Class[0]), objInvokeMethod3, new Object[0]));
        } catch (Exception e) {
            TranSdkLog.d(TAG, "createFromHardwareBuffer fail:" + e);
            return tranGraphicBuffer;
        }
    }

    @Override
    public TranGraphicBuffer createFromHardwareBuffer(SurfaceControl surfaceControl, Rect rect) {
        TranGraphicBuffer tranGraphicBuffer = new TranGraphicBuffer();
        try {
            if (!TranThubVersionUtil.isRecentAndroidT()) {
                return tranGraphicBuffer;
            }
            Object objNewInstance = TranDoorMan.getClass("android.window.ScreenCapture$LayerCaptureArgs$Builder").getConstructor(SurfaceControl.class).newInstance(surfaceControl);
            Class<?> cls = objNewInstance.getClass();
            Class cls2 = Boolean.TYPE;
            Method method = TranDoorMan.getMethod(cls, "setCaptureSecureLayers", cls2);
            Boolean bool = Boolean.TRUE;
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.window.ScreenCapture"), "captureLayers", TranDoorMan.getClass("android.window.ScreenCapture$LayerCaptureArgs")), null, TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "build", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "setSourceCrop", Rect.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "setAllowProtected", cls2), TranDoorMan.invokeMethod(method, objNewInstance, bool), bool), new Rect(0, 0, rect.width(), rect.height())), new Object[0]));
            return createBufferReflect(TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getHardwareBuffer", new Class[0]), objInvokeMethod, new Object[0]));
        } catch (Exception e) {
            TranSdkLog.d(TAG, "createFromHardwareBuffer fail:" + e);
            return tranGraphicBuffer;
        }
    }
}
