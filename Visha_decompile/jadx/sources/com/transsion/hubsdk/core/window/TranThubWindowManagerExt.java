package com.transsion.hubsdk.core.window;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.Surface;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.aosp.view.TranScrollCaptureResponseExt;
import com.transsion.hubsdk.aosp.window.TranAospWindowManagerExt;
import com.transsion.hubsdk.api.window.TranScreenshotHardwareBuffer;
import com.transsion.hubsdk.api.window.TranWindowManagerExt;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.window.ITranWindowManagerExtAdapter;
import com.transsion.hubsdk.internal.policy.ITranKeyguardDismissCallback;
import com.transsion.hubsdk.view.ITranDisplayFoldListener;
import com.transsion.hubsdk.view.ITranSystemGestureExclusionListener;
import com.transsion.hubsdk.view.ITranWindowManager;
import java.util.List;

public class TranThubWindowManagerExt implements ITranWindowManagerExtAdapter {
    private static final String TAG = "TranThubWindowManagerExt";
    private TranGestureExclusionListener mTranGestureExclusionListener = null;
    private TranDisplayFoldListener mTranDisplayFoldListener = null;
    private ITranWindowManager mService = ITranWindowManager.Stub.asInterface(TranServiceManager.getServiceIBinder("window"));

    public static class TranDisplayFoldListener extends ITranDisplayFoldListener.Stub {
        private final TranWindowManagerExt.TranDisplayFoldListener mDisplayFoldListener;

        public TranDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener) {
            this.mDisplayFoldListener = tranDisplayFoldListener;
        }

        public void onDisplayFoldChanged(int i, boolean z) {
            TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener = this.mDisplayFoldListener;
            if (tranDisplayFoldListener != null) {
                tranDisplayFoldListener.onDisplayFoldChanged(i, z);
            }
        }
    }

    public static class TranGestureExclusionListener extends ITranSystemGestureExclusionListener.Stub {
        private final TranWindowManagerExt.TranSystemGestureExclusionListener mExclusionListener;

        public TranGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener) {
            this.mExclusionListener = tranSystemGestureExclusionListener;
        }

        public void onSystemGestureExclusionChanged(int i, Region region, Region region2) {
            TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener = this.mExclusionListener;
            if (tranSystemGestureExclusionListener != null) {
                tranSystemGestureExclusionListener.onSystemGestureExclusionChanged(i, region, region2);
            }
        }
    }

    public static class TranKeyguardDismissListener extends ITranKeyguardDismissCallback.Stub {
        private final TranWindowManagerExt.TranKeyguardDismissCallback mCallback;

        public TranKeyguardDismissListener(TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback) {
            this.mCallback = tranKeyguardDismissCallback;
        }

        public void onDismissCancelled() {
            TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback = this.mCallback;
            if (tranKeyguardDismissCallback != null) {
                tranKeyguardDismissCallback.onDismissCancelled();
            }
        }

        public void onDismissError() {
            TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback = this.mCallback;
            if (tranKeyguardDismissCallback != null) {
                tranKeyguardDismissCallback.onDismissError();
            }
        }

        public void onDismissSucceeded() {
            TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback = this.mCallback;
            if (tranKeyguardDismissCallback != null) {
                tranKeyguardDismissCallback.onDismissSucceeded();
            }
        }
    }

    public Object lambda$getBuffer$0(int i, Rect rect) throws RemoteException {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            return iTranWindowManager.getBuffer(i, rect);
        }
        return null;
    }

    public Object lambda$getDockedStackSide$3() throws RemoteException {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            return Integer.valueOf(iTranWindowManager.getDockedStackSide());
        }
        return 0;
    }

    public Object lambda$getInitialDisplayDensity$2(int i) throws RemoteException {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            return Integer.valueOf(iTranWindowManager.getInitialDisplayDensity(i));
        }
        return -1;
    }

    public Object lambda$notifyScreenshotListeners$1(int i) throws RemoteException {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            return iTranWindowManager.notifyScreenshotListeners(i);
        }
        return null;
    }

    @Override
    public void dismissKeyguard(TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback, CharSequence charSequence) {
        if (this.mService != null) {
            try {
                this.mService.dismissKeyguard(new TranKeyguardDismissListener(tranKeyguardDismissCallback), charSequence);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "dismissKeyguard fail" + e);
            }
        }
    }

    @Override
    public void endCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt) {
    }

    @Override
    public TranScreenshotHardwareBuffer getBuffer(final int i, final Rect rect) {
        com.transsion.hubsdk.window.TranScreenshotHardwareBuffer tranScreenshotHardwareBuffer = (com.transsion.hubsdk.window.TranScreenshotHardwareBuffer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getBuffer$0(i, rect);
            }
        }, "window");
        TranScreenshotHardwareBuffer tranScreenshotHardwareBuffer2 = new TranScreenshotHardwareBuffer();
        if (tranScreenshotHardwareBuffer == null) {
            TranSdkLog.w(TAG, "TranScreenshotHardwareBuffer is null");
            return tranScreenshotHardwareBuffer2;
        }
        tranScreenshotHardwareBuffer2.setHardwareBuffer(tranScreenshotHardwareBuffer.getHardwareBuffer());
        tranScreenshotHardwareBuffer2.setColorSpace(tranScreenshotHardwareBuffer.getColorSpace());
        tranScreenshotHardwareBuffer2.setContainsSecureLayers(tranScreenshotHardwareBuffer.containsSecureLayers());
        tranScreenshotHardwareBuffer2.setContainsHdrLayers(tranScreenshotHardwareBuffer.containsHdrLayers());
        tranScreenshotHardwareBuffer2.setBitmap(tranScreenshotHardwareBuffer.asBitmap());
        TranSdkLog.d(TAG, "getBuffer mTranScreenshotHardwareBuffer:" + tranScreenshotHardwareBuffer2);
        return tranScreenshotHardwareBuffer2;
    }

    @Override
    public int getDockedStackSide() {
        return ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getDockedStackSide$3();
            }
        }, "window")).intValue();
    }

    @Override
    public int getInitialDisplayDensity(final int i) {
        return ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getInitialDisplayDensity$2(i);
            }
        }, "window")).intValue();
    }

    @Override
    public List<ComponentName> notifyScreenshotListeners(final int i) {
        return (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$notifyScreenshotListeners$1(i);
            }
        }, "window");
    }

    @Override
    public void registerDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener) {
        if (this.mService != null) {
            TranDisplayFoldListener tranDisplayFoldListener2 = new TranDisplayFoldListener(tranDisplayFoldListener);
            this.mTranDisplayFoldListener = tranDisplayFoldListener2;
            try {
                this.mService.registerDisplayFoldListener(tranDisplayFoldListener2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "registerDisplayFoldListener fail" + e);
            }
        }
    }

    @Override
    public void registerSystemGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i) {
        if (this.mService != null) {
            try {
                TranGestureExclusionListener tranGestureExclusionListener = new TranGestureExclusionListener(tranSystemGestureExclusionListener);
                this.mTranGestureExclusionListener = tranGestureExclusionListener;
                this.mService.registerSystemGestureExclusionListener(tranGestureExclusionListener, i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "registerSystemGestureExclusionListener fail:" + e);
            }
        }
    }

    @Override
    public void requestImage(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Rect rect) {
    }

    @Override
    public void requestScrollCapture(Context context, int i, IBinder iBinder, int i2, TranAospWindowManagerExt.ITranScrollCaptureResponseListener iTranScrollCaptureResponseListener) {
    }

    @Override
    public void startCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Surface surface, TranWindowManagerExt.ITranScrollCaptureCallbacks iTranScrollCaptureCallbacks) {
    }

    @Override
    public void unregisterDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener) {
        TranDisplayFoldListener tranDisplayFoldListener2;
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null || (tranDisplayFoldListener2 = this.mTranDisplayFoldListener) == null) {
            return;
        }
        try {
            iTranWindowManager.unregisterDisplayFoldListener(tranDisplayFoldListener2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterDisplayFoldListener fail" + e);
        }
    }

    @Override
    public void unregisterSystemGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i) {
        TranGestureExclusionListener tranGestureExclusionListener;
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null || (tranGestureExclusionListener = this.mTranGestureExclusionListener) == null) {
            return;
        }
        try {
            iTranWindowManager.unregisterSystemGestureExclusionListener(tranGestureExclusionListener, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerSystemGestureExclusionListener fail:" + e);
        }
    }
}
