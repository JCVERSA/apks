package com.transsion.hubsdk.aosp.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.os.IBinder;
import android.view.Display;
import android.view.SurfaceControl;
import android.view.SurfaceView;
import android.view.View;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.display.BuildConfig;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceControlAdapter;
import java.lang.reflect.Method;

public class TranAospSurfaceControl implements ITranSurfaceControlAdapter {
    private static final String TAG = "TranAospSurfaceControl";
    private static Class<?> sTransactionClass = TranDoorMan.getClass("android.view.SurfaceControl$Transaction");
    private Context mContext;
    private DisplayManager mDisplayManager;
    private SurfaceView mSurfaceView;

    public TranAospSurfaceControl() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        if (this.mDisplayManager == null) {
            this.mDisplayManager = (DisplayManager) context.getSystemService(BuildConfig.FLAVOR);
        }
    }

    @Override
    public void apply(SurfaceControl.Transaction transaction, boolean z) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "apply", Boolean.TYPE);
            method.setAccessible(true);
            method.invoke(transaction, Boolean.valueOf(z));
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "apply fail " + th);
        }
    }

    @Override
    public Bitmap captureDisplayAsBitmap(Rect rect) {
        try {
            Display display = this.mDisplayManager.getDisplay(0);
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(display.getClass(), "getAddress", new Class[0]), display, new Object[0]);
            Long l = (Long) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getPhysicalDisplayId", new Class[0]), objInvokeMethod, new Object[0]);
            l.longValue();
            IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(TranDoorMan.getMethod(SurfaceControl.class, "getPhysicalDisplayToken", Long.TYPE), null, l);
            int iWidth = rect.width();
            int iHeight = rect.height();
            Object objNewInstance = Class.forName("android.view.SurfaceControl$DisplayCaptureArgs$Builder").getConstructor(IBinder.class).newInstance(iBinder);
            Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "setSourceCrop", Rect.class), objNewInstance, rect);
            Class<?> cls = objInvokeMethod2.getClass();
            Class cls2 = Integer.TYPE;
            Object objInvokeMethod3 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setSize", cls2, cls2), objInvokeMethod2, Integer.valueOf(iWidth), Integer.valueOf(iHeight));
            Object objInvokeMethod4 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(SurfaceControl.class, "captureDisplay", Class.forName("android.view.SurfaceControl$DisplayCaptureArgs")), null, TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod3.getClass(), "build", new Class[0]), objInvokeMethod3, new Object[0]));
            if (((Boolean) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod4.getClass(), "containsSecureLayers", new Class[0]), objInvokeMethod4, new Object[0])).booleanValue()) {
                return null;
            }
            return (Bitmap) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod4.getClass(), "asBitmap", new Class[0]), objInvokeMethod4, new Object[0]);
        } catch (Throwable th) {
            TranSdkLog.i(TAG, "captureDisplayAsBitmap failed: " + th.getMessage());
            return null;
        }
    }

    @Override
    public boolean checkProtectedContent(SurfaceControl surfaceControl) {
        Method method = TranDoorMan.getMethod(surfaceControl.getClass(), "checkProtectedContent", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, surfaceControl, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public SurfaceControl createSfWithContainerLayer(String str, boolean z, SurfaceControl surfaceControl, String str2) {
        try {
            Class cls = TranDoorMan.getClass("android.view.SurfaceSession");
            Class cls2 = TranDoorMan.getClass("android.view.SurfaceControl$Builder");
            return (SurfaceControl) TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "build", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setCallsite", String.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setParent", SurfaceControl.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setHidden", Boolean.TYPE), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setName", String.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setContainerLayer", new Class[0]), TranDoorMan.getConstructor(cls2, cls.getClasses()).newInstance(null), new Object[0]), str), Boolean.valueOf(z)), surfaceControl), str2), new Object[0]);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getSurfaceControl fail:" + e);
            return null;
        }
    }

    @Override
    public SurfaceControl createSfWithEffectLayer(String str, SurfaceControl surfaceControl, String str2) {
        try {
            Class cls = TranDoorMan.getClass("android.view.SurfaceSession");
            Class cls2 = TranDoorMan.getClass("android.view.SurfaceControl$Builder");
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setCallsite", String.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setName", String.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setEffectLayer", new Class[0]), TranDoorMan.getConstructor(cls2, cls.getClasses()).newInstance(null), new Object[0]), str), str2);
            Method method = TranDoorMan.getMethod(cls2, "build", new Class[0]);
            return surfaceControl != null ? (SurfaceControl) TranDoorMan.invokeMethod(method, TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "setParent", SurfaceControl.class), objInvokeMethod, surfaceControl), new Object[0]) : (SurfaceControl) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getSurfaceControl fail:" + e);
            return null;
        }
    }

    @Override
    public IBinder getDefaultApplyToken(SurfaceControl.Transaction transaction) {
        Method method = TranDoorMan.getMethod(transaction.getClass(), "getDefaultApplyToken", new Class[0]);
        if (method != null) {
            return (IBinder) TranDoorMan.invokeMethod(method, transaction, new Object[0]);
        }
        return null;
    }

    @Override
    public IBinder getPhysicalDisplayToken(long j) {
        try {
            Method method = TranDoorMan.getMethod(SurfaceControl.class, "getPhysicalDisplayToken", Long.TYPE);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, Long.valueOf(j));
            if (objInvoke == null || !(objInvoke instanceof IBinder)) {
                return null;
            }
            return (IBinder) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.i(TAG, "getPhysicalDisplayToken failed: " + th.getMessage());
            return null;
        }
    }

    @Override
    public void isRequestChangeScale(String str, String str2) {
        if (this.mSurfaceView == null) {
            this.mSurfaceView = new SurfaceView(this.mContext);
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mSurfaceView.getClass(), "isRequestChangeScale", String.class, String.class), this.mSurfaceView, str, str2);
    }

    @Override
    public SurfaceControl.Transaction remove(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "remove", SurfaceControl.class);
            method.setAccessible(true);
            Object objInvoke = method.invoke(transaction, surfaceControl);
            if (objInvoke == null || !(objInvoke instanceof SurfaceControl.Transaction)) {
                return null;
            }
            return (SurfaceControl.Transaction) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "remove fail " + th);
            return null;
        }
    }

    @Override
    public void setDefaultApplyToken(SurfaceControl.Transaction transaction, IBinder iBinder) {
        Method method = TranDoorMan.getMethod(transaction.getClass(), "setDefaultApplyToken", IBinder.class);
        if (method != null) {
            TranDoorMan.invokeMethod(method, transaction, iBinder);
        }
    }

    @Override
    public SurfaceControl.Transaction setMatrix(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Matrix matrix, float[] fArr) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "setMatrix", SurfaceControl.class, Matrix.class, float[].class);
            method.setAccessible(true);
            Object objInvoke = method.invoke(transaction, surfaceControl, matrix, fArr);
            if (objInvoke == null || !(objInvoke instanceof SurfaceControl.Transaction)) {
                return null;
            }
            return (SurfaceControl.Transaction) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setMatrix fail " + th);
            return null;
        }
    }

    @Override
    public SurfaceControl.Transaction setMultiWindowLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "setMultiWindowLayer", SurfaceControl.class, Boolean.TYPE);
            method.setAccessible(true);
            Object objInvoke = method.invoke(transaction, surfaceControl, Boolean.valueOf(z));
            if (objInvoke == null || !(objInvoke instanceof SurfaceControl.Transaction)) {
                return null;
            }
            return (SurfaceControl.Transaction) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setMultiWindowLayer fail " + th);
            return null;
        }
    }

    @Override
    public SurfaceControl.Transaction setRelativeLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, SurfaceControl surfaceControl2, int i) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "setRelativeLayer", SurfaceControl.class, SurfaceControl.class, Integer.TYPE);
            method.setAccessible(true);
            Object objInvoke = method.invoke(transaction, surfaceControl, surfaceControl2, Integer.valueOf(i));
            if (objInvoke == null || !(objInvoke instanceof SurfaceControl.Transaction)) {
                return null;
            }
            return (SurfaceControl.Transaction) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setRelativeLayer fail " + th);
            return null;
        }
    }

    @Override
    public SurfaceControl.Transaction setShadowRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "setShadowRadius", SurfaceControl.class, Float.TYPE);
            method.setAccessible(true);
            Object objInvoke = method.invoke(transaction, surfaceControl, Float.valueOf(f));
            if (objInvoke == null || !(objInvoke instanceof SurfaceControl.Transaction)) {
                return null;
            }
            return (SurfaceControl.Transaction) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setWindowCrop fail " + th);
            return null;
        }
    }

    @Override
    public void setSmoothCornerRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f) {
        TranSdkLog.d(TAG, "setSmoothCornerRadius: " + f);
    }

    @Override
    public void setTranSmoothCorner(View view, float f, float f2) {
        TranSdkLog.d(TAG, "setTranSmoothCorner: " + view + " " + f + " " + f2);
    }

    @Override
    public SurfaceControl.Transaction setTrustedOverlay(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "setTrustedOverlay", SurfaceControl.class, Boolean.TYPE);
            method.setAccessible(true);
            Object objInvoke = method.invoke(transaction, surfaceControl, Boolean.valueOf(z));
            if (objInvoke == null || !(objInvoke instanceof SurfaceControl.Transaction)) {
                return null;
            }
            return (SurfaceControl.Transaction) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setTrustedOverlay fail " + th);
            return null;
        }
    }

    @Override
    public SurfaceControl.Transaction setWindowCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect) {
        try {
            Method method = TranDoorMan.getMethod(sTransactionClass, "setWindowCrop", SurfaceControl.class, Rect.class);
            method.setAccessible(true);
            Object objInvoke = method.invoke(transaction, surfaceControl, rect);
            if (objInvoke == null || !(objInvoke instanceof SurfaceControl.Transaction)) {
                return null;
            }
            return (SurfaceControl.Transaction) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setWindowCrop fail " + th);
            return null;
        }
    }

    @Override
    public boolean smoothcornerCubicEdgeEnabled() {
        return false;
    }

    @Override
    public void startVfxAnimation(View view, int i, float f, float[] fArr, float f2, float f3) {
        TranSdkLog.d(TAG, "startVfxAnimation: " + view + " " + i);
    }
}
