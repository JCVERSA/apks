package com.transsion.hubsdk.aosp.window;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.HardwareBuffer;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.IDisplayFoldListener;
import android.view.IScrollCaptureCallbacks;
import android.view.IScrollCaptureConnection;
import android.view.IScrollCaptureResponseListener;
import android.view.ISystemGestureExclusionListener;
import android.view.IWindowManager;
import android.view.ScrollCaptureResponse;
import android.view.Surface;
import android.view.WindowManagerGlobal;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.transsion.hubsdk.aosp.view.TranScrollCaptureResponseExt;
import com.transsion.hubsdk.api.window.TranScreenshotHardwareBuffer;
import com.transsion.hubsdk.api.window.TranWindowManagerExt;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.window.ITranWindowManagerExtAdapter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TranAospWindowManagerExt implements ITranWindowManagerExtAdapter {
    private static final String TAG = "TranAospWindowManagerExt";
    private static Class<?> sClassIWindowManager = TranDoorMan.getClass("android.view.IWindowManager$Stub");
    private static Class<?> sClassServiceManager = TranDoorMan.getClass("android.os.ServiceManager");
    private TranAospDisplayFoldListener mTranDisplayFoldListener = null;
    private TranAospGestureExclusionListener mTranGestureExclusionListener;
    private Object mWindowManager;

    public interface ITranScrollCaptureResponseListener {
        void onScrollCaptureResponse(TranScrollCaptureResponseExt tranScrollCaptureResponseExt);
    }

    public static class TranAospDisplayFoldListener extends IDisplayFoldListener.Stub {
        TranWindowManagerExt.TranDisplayFoldListener mFoldListener;

        public TranAospDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener) {
            this.mFoldListener = tranDisplayFoldListener;
        }

        public void onDisplayFoldChanged(int i, boolean z) {
            TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener = this.mFoldListener;
            if (tranDisplayFoldListener != null) {
                tranDisplayFoldListener.onDisplayFoldChanged(i, z);
            }
        }
    }

    public class TranAospGestureExclusionListener extends ISystemGestureExclusionListener.Stub {
        TranWindowManagerExt.TranSystemGestureExclusionListener mExclusionListener;

        public TranAospGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener) {
            this.mExclusionListener = tranSystemGestureExclusionListener;
        }

        public void onSystemGestureExclusionChanged(int i, Region region, Region region2) {
            TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener = this.mExclusionListener;
            if (tranSystemGestureExclusionListener != null) {
                tranSystemGestureExclusionListener.onSystemGestureExclusionChanged(i, region, region2);
            }
        }
    }

    private Object getWindowManager() {
        if (this.mWindowManager == null) {
            this.mWindowManager = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassIWindowManager, "asInterface", IBinder.class), sClassIWindowManager, TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassServiceManager, "getService", String.class), sClassServiceManager, "window"));
        }
        return this.mWindowManager;
    }

    @Override
    public void dismissKeyguard(final TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback, CharSequence charSequence) {
        try {
            WindowManagerGlobal.getWindowManagerService().dismissKeyguard(new IKeyguardDismissCallback.Stub() {
                public void onDismissCancelled() throws RemoteException {
                    TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback2 = tranKeyguardDismissCallback;
                    if (tranKeyguardDismissCallback2 != null) {
                        tranKeyguardDismissCallback2.onDismissCancelled();
                    }
                }

                public void onDismissError() throws RemoteException {
                    TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback2 = tranKeyguardDismissCallback;
                    if (tranKeyguardDismissCallback2 != null) {
                        tranKeyguardDismissCallback2.onDismissError();
                    }
                }

                public void onDismissSucceeded() throws RemoteException {
                    TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback2 = tranKeyguardDismissCallback;
                    if (tranKeyguardDismissCallback2 != null) {
                        tranKeyguardDismissCallback2.onDismissSucceeded();
                    }
                }
            }, charSequence);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "dismissKeyguard fail " + e);
        }
    }

    @Override
    public void endCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt) {
        try {
            IScrollCaptureConnection iScrollCaptureConnection = tranScrollCaptureResponseExt.mConnection;
            if (iScrollCaptureConnection != null) {
                iScrollCaptureConnection.endCapture();
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "endCapture fail： " + e);
        }
    }

    @Override
    public TranScreenshotHardwareBuffer getBuffer(int i, Rect rect) {
        Object objInvokeMethod;
        TranScreenshotHardwareBuffer tranScreenshotHardwareBuffer = new TranScreenshotHardwareBuffer();
        if (TranThubVersionUtil.isAndroidT() || TranThubVersionUtil.isAndroidS()) {
            TranSdkLog.w(TAG, "This interface is not supported.");
            return tranScreenshotHardwareBuffer;
        }
        try {
            Constructor declaredConstructor = TranDoorMan.getClass("android.window.ScreenCapture$CaptureArgs$Builder").getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            Object objNewInstance = declaredConstructor.newInstance(null);
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "setSourceCrop", Rect.class), objNewInstance, rect);
            objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objNewInstance.getClass(), "build", new Class[0]), objNewInstance, new Object[0]);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "newInstance fail:" + e);
            objInvokeMethod = null;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.window.ScreenCapture"), "createSyncCaptureListener", new Class[0]), null, new Object[0]);
        Object objInvokeMethod3 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod3 != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod3.getClass(), "captureDisplay", Integer.TYPE, TranDoorMan.getClass("android.window.ScreenCapture$CaptureArgs"), TranDoorMan.getClass("android.window.ScreenCapture$ScreenCaptureListener")), objInvokeMethod3, Integer.valueOf(i), objInvokeMethod, objInvokeMethod2);
        }
        Object objInvokeMethod4 = objInvokeMethod2 != null ? TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod2.getClass(), "getBuffer", new Class[0]), objInvokeMethod2, new Object[0]) : null;
        if (objInvokeMethod4 != null) {
            Method method = TranDoorMan.getMethod(objInvokeMethod4.getClass(), "getHardwareBuffer", new Class[0]);
            Method method2 = TranDoorMan.getMethod(objInvokeMethod4.getClass(), "getColorSpace", new Class[0]);
            Method method3 = TranDoorMan.getMethod(objInvokeMethod4.getClass(), "containsSecureLayers", new Class[0]);
            Method method4 = TranDoorMan.getMethod(objInvokeMethod4.getClass(), "containsHdrLayers", new Class[0]);
            Method method5 = TranDoorMan.getMethod(objInvokeMethod4.getClass(), "asBitmap", new Class[0]);
            Object objInvokeMethod5 = TranDoorMan.invokeMethod(method, objInvokeMethod4, new Object[0]);
            Object objInvokeMethod6 = TranDoorMan.invokeMethod(method2, objInvokeMethod4, new Object[0]);
            Object objInvokeMethod7 = TranDoorMan.invokeMethod(method3, objInvokeMethod4, new Object[0]);
            Object objInvokeMethod8 = TranDoorMan.invokeMethod(method4, objInvokeMethod4, new Object[0]);
            Object objInvokeMethod9 = TranDoorMan.invokeMethod(method5, objInvokeMethod4, new Object[0]);
            HardwareBuffer hardwareBuffer = objInvokeMethod5 instanceof HardwareBuffer ? (HardwareBuffer) objInvokeMethod5 : null;
            ColorSpace colorSpace = objInvokeMethod6 instanceof ColorSpace ? (ColorSpace) objInvokeMethod6 : null;
            boolean zBooleanValue = objInvokeMethod7 instanceof Boolean ? ((Boolean) objInvokeMethod7).booleanValue() : false;
            boolean zBooleanValue2 = objInvokeMethod8 instanceof Boolean ? ((Boolean) objInvokeMethod8).booleanValue() : false;
            Bitmap bitmap = objInvokeMethod9 instanceof Bitmap ? (Bitmap) objInvokeMethod9 : null;
            tranScreenshotHardwareBuffer.setHardwareBuffer(hardwareBuffer);
            tranScreenshotHardwareBuffer.setColorSpace(colorSpace);
            tranScreenshotHardwareBuffer.setContainsSecureLayers(zBooleanValue);
            tranScreenshotHardwareBuffer.setContainsHdrLayers(zBooleanValue2);
            tranScreenshotHardwareBuffer.setBitmap(bitmap);
        }
        return tranScreenshotHardwareBuffer;
    }

    @Override
    public int getDockedStackSide() {
        Method method;
        if (getWindowManager() == null || (method = TranDoorMan.getMethod(this.mWindowManager.getClass(), "getDockedStackSide", new Class[0])) == null) {
            return 0;
        }
        return ((Integer) TranDoorMan.invokeMethod(method, this.mWindowManager, new Object[0])).intValue();
    }

    @Override
    public int getInitialDisplayDensity(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.IWindowManager"), "getInitialDisplayDensity", Integer.TYPE), TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]), Integer.valueOf(i));
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return -1;
    }

    @Override
    public List<ComponentName> notifyScreenshotListeners(int i) {
        ArrayList arrayList = new ArrayList();
        if (getWindowManager() != null) {
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mWindowManager.getClass(), "notifyScreenshotListeners", Integer.TYPE), this.mWindowManager, Integer.valueOf(i));
            if (objInvokeMethod instanceof List) {
                Iterator it = ((List) objInvokeMethod).iterator();
                while (it.hasNext()) {
                    arrayList.add((ComponentName) ComponentName.class.cast(it.next()));
                }
            }
        }
        return arrayList;
    }

    @Override
    public void registerDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener) {
        IWindowManager windowManagerService = WindowManagerGlobal.getWindowManagerService();
        try {
            TranAospDisplayFoldListener tranAospDisplayFoldListener = new TranAospDisplayFoldListener(tranDisplayFoldListener);
            this.mTranDisplayFoldListener = tranAospDisplayFoldListener;
            windowManagerService.registerDisplayFoldListener(tranAospDisplayFoldListener);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerDisplayFoldListener fail " + e);
        }
    }

    @Override
    public void registerSystemGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i) {
        IWindowManager windowManagerService = WindowManagerGlobal.getWindowManagerService();
        try {
            TranAospGestureExclusionListener tranAospGestureExclusionListener = new TranAospGestureExclusionListener(tranSystemGestureExclusionListener);
            this.mTranGestureExclusionListener = tranAospGestureExclusionListener;
            windowManagerService.registerSystemGestureExclusionListener(tranAospGestureExclusionListener, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerSystemGestureExclusionListener fail " + e);
        }
    }

    @Override
    public void requestImage(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Rect rect) {
        try {
            IScrollCaptureConnection iScrollCaptureConnection = tranScrollCaptureResponseExt.mConnection;
            if (iScrollCaptureConnection != null) {
                iScrollCaptureConnection.requestImage(rect);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "requestImage fail： " + e);
        }
    }

    @Override
    public void requestScrollCapture(Context context, int i, IBinder iBinder, int i2, final ITranScrollCaptureResponseListener iTranScrollCaptureResponseListener) {
        try {
            WindowManagerGlobal.getWindowManagerService().requestScrollCapture(i, iBinder, i2, new IScrollCaptureResponseListener.Stub() {
                public void onScrollCaptureResponse(ScrollCaptureResponse scrollCaptureResponse) {
                    TranScrollCaptureResponseExt tranScrollCaptureResponseExt = new TranScrollCaptureResponseExt();
                    tranScrollCaptureResponseExt.mDescription = scrollCaptureResponse.getDescription();
                    tranScrollCaptureResponseExt.mConnection = scrollCaptureResponse.getConnection();
                    tranScrollCaptureResponseExt.mWindowBounds = scrollCaptureResponse.getWindowBounds();
                    tranScrollCaptureResponseExt.mBoundsInWindow = scrollCaptureResponse.getBoundsInWindow();
                    tranScrollCaptureResponseExt.mWindowTitle = scrollCaptureResponse.getWindowTitle();
                    tranScrollCaptureResponseExt.mPackageName = scrollCaptureResponse.getPackageName();
                    tranScrollCaptureResponseExt.mMessages = scrollCaptureResponse.getMessages();
                    iTranScrollCaptureResponseListener.onScrollCaptureResponse(tranScrollCaptureResponseExt);
                }
            });
        } catch (Exception e) {
            TranSdkLog.w(TAG, "TranAospWindowManagerExt requestScrollCapture e = " + e);
        }
    }

    @Override
    public void startCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Surface surface, final TranWindowManagerExt.ITranScrollCaptureCallbacks iTranScrollCaptureCallbacks) {
        IScrollCaptureConnection iScrollCaptureConnection = tranScrollCaptureResponseExt.mConnection;
        if (iScrollCaptureConnection == null) {
            return;
        }
        try {
            iScrollCaptureConnection.startCapture(surface, new IScrollCaptureCallbacks.Stub() {
                public void onCaptureEnded() {
                    TranWindowManagerExt.ITranScrollCaptureCallbacks iTranScrollCaptureCallbacks2 = iTranScrollCaptureCallbacks;
                    if (iTranScrollCaptureCallbacks2 != null) {
                        iTranScrollCaptureCallbacks2.onCaptureEnded();
                    }
                }

                public void onCaptureStarted() {
                    TranWindowManagerExt.ITranScrollCaptureCallbacks iTranScrollCaptureCallbacks2 = iTranScrollCaptureCallbacks;
                    if (iTranScrollCaptureCallbacks2 != null) {
                        iTranScrollCaptureCallbacks2.onCaptureStarted();
                    }
                }

                public void onImageRequestCompleted(int i, Rect rect) {
                    TranWindowManagerExt.ITranScrollCaptureCallbacks iTranScrollCaptureCallbacks2 = iTranScrollCaptureCallbacks;
                    if (iTranScrollCaptureCallbacks2 != null) {
                        iTranScrollCaptureCallbacks2.onImageRequestCompleted(i, rect);
                    }
                }
            });
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "startCapture fail： " + e);
        }
    }

    @Override
    public void unregisterDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener) {
        IWindowManager windowManagerService = WindowManagerGlobal.getWindowManagerService();
        TranAospDisplayFoldListener tranAospDisplayFoldListener = this.mTranDisplayFoldListener;
        if (tranAospDisplayFoldListener != null) {
            try {
                windowManagerService.unregisterDisplayFoldListener(tranAospDisplayFoldListener);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unregisterDisplayFoldListener fail " + e);
            }
        }
    }

    @Override
    public void unregisterSystemGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i) {
        IWindowManager windowManagerService = WindowManagerGlobal.getWindowManagerService();
        TranAospGestureExclusionListener tranAospGestureExclusionListener = this.mTranGestureExclusionListener;
        if (tranAospGestureExclusionListener != null) {
            try {
                windowManagerService.unregisterSystemGestureExclusionListener(tranAospGestureExclusionListener, i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unregisterSystemGestureExclusionListener fail " + e);
            }
        }
    }
}
