package com.transsion.hubsdk.core.hardware.input;

import android.graphics.Region;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.view.ITranGestureCallback;
import com.transsion.hubsdk.api.view.ITranInputEventCallback;
import com.transsion.hubsdk.api.view.ITranTouchEventHandler;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.hardware.input.ITranInputManager;
import com.transsion.hubsdk.hardware.input.TranInputManager;
import com.transsion.hubsdk.interfaces.hardware.input.ITranInputManagerAdapter;
import com.transsion.hubsdk.view.ITranGestureListener;
import com.transsion.hubsdk.view.ITranInputEventListener;
import com.transsion.hubsdk.view.ITranInputMonitor;
import com.transsion.hubsdk.view.inputmethod.ITranStylusKeyListener;
import java.util.concurrent.ConcurrentHashMap;

public class TranThubInputManager implements ITranInputManagerAdapter {
    private static final String TAG = "TranThubInputManager";
    private ITranInputMonitor mInputMonitor;
    private ITranTouchEventHandler mTouchEventHandler;
    private TranInputManager mTranInputManager;
    private final ConcurrentHashMap<ITranGestureCallback, ITranGestureListener> mGestureListenerMap = new ConcurrentHashMap<>();
    private final ArrayMap<ITranInputEventCallback, ITranInputEventListener> mInputEventListenerMap = new ArrayMap<>();
    private ITranInputManager mService = ITranInputManager.Stub.asInterface(TranServiceManager.getServiceIBinder("input"));

    public class TranInputMonitor extends com.transsion.hubsdk.api.view.ITranInputMonitor.Stub {
        public TranInputMonitor() {
        }

        @Override
        public void dispose() throws RemoteException {
            if (TranThubInputManager.this.mInputMonitor != null) {
                TranThubInputManager.this.mInputMonitor.dispose();
            }
        }

        @Override
        public void pilferPointers() throws RemoteException {
            if (TranThubInputManager.this.mInputMonitor != null) {
                TranThubInputManager.this.mInputMonitor.pilferPointers();
            }
        }
    }

    public class TranStylusKeyListener extends ITranStylusKeyListener.Stub {
        private com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener mListener;

        public TranStylusKeyListener(com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener iTranStylusKeyListener) {
            this.mListener = iTranStylusKeyListener;
        }

        public void onKeyEvent(int i, KeyEvent keyEvent) throws RemoteException {
            com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener iTranStylusKeyListener = this.mListener;
            if (iTranStylusKeyListener != null) {
                iTranStylusKeyListener.onKeyEvent(i, keyEvent);
            }
        }
    }

    public class TranThubGestureCallback extends ITranGestureListener.Stub {
        private ITranGestureCallback mCallback;

        public TranThubGestureCallback(ITranGestureCallback iTranGestureCallback) {
            this.mCallback = iTranGestureCallback;
        }

        public void onNotifyGestureDetected(MotionEvent motionEvent, int i) {
            if (this.mCallback != null) {
                try {
                    TranSdkLog.e(TranThubInputManager.TAG, "onNotifyGestureDetected: ");
                    this.mCallback.onNotifyGestureDetected(motionEvent, i);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubInputManager.TAG, "onNotifyGestureDetected: " + e);
                }
            }
        }

        public void onTranGestureEvent(MotionEvent motionEvent) {
            ITranGestureCallback iTranGestureCallback = this.mCallback;
            if (iTranGestureCallback != null) {
                try {
                    iTranGestureCallback.onTranGestureEvent(motionEvent);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubInputManager.TAG, "onTranGestureEvent: " + e);
                }
            }
        }
    }

    public class TranThubInputEventCallback extends ITranInputEventListener.Stub {
        private ITranInputEventCallback mCallback;

        public TranThubInputEventCallback(ITranInputEventCallback iTranInputEventCallback) {
            this.mCallback = iTranInputEventCallback;
        }

        public void handleInputEvent(InputEvent inputEvent) {
            TranSdkLog.i(TranThubInputManager.TAG, "TranThubInputEventCallback.handleInputEvent: event=" + inputEvent);
            ITranInputEventCallback iTranInputEventCallback = this.mCallback;
            if (iTranInputEventCallback != null) {
                try {
                    iTranInputEventCallback.handleInputEvent(inputEvent);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubInputManager.TAG, "handleInputEvent: " + e);
                }
            }
        }
    }

    public class TranTouchEventHandler extends com.transsion.hubsdk.view.ITranTouchEventHandler.Stub {
        public TranTouchEventHandler() {
        }

        public void handleInputEvent(InputEvent inputEvent) throws RemoteException {
            if (TranThubInputManager.this.mTouchEventHandler != null) {
                TranThubInputManager.this.mTouchEventHandler.handleInputEvent(inputEvent);
            }
        }
    }

    private TranInputManager getTranInputManager() {
        if (this.mTranInputManager == null) {
            this.mTranInputManager = new TranInputManager();
        }
        return this.mTranInputManager;
    }

    public Object lambda$registerInputEventListener$11(ITranInputEventCallback iTranInputEventCallback, int i) throws RemoteException {
        if (this.mService == null || iTranInputEventCallback == null) {
            return null;
        }
        try {
            if (this.mInputEventListenerMap.containsKey(iTranInputEventCallback)) {
                TranSdkLog.w(TAG, "registerInputEventListener: listener already registered, keycode: " + i);
            } else {
                ITranInputEventListener tranThubInputEventCallback = new TranThubInputEventCallback(iTranInputEventCallback);
                this.mService.registerInputEventListener(tranThubInputEventCallback, i);
                this.mInputEventListenerMap.put(iTranInputEventCallback, tranThubInputEventCallback);
                TranSdkLog.i(TAG, "registerInputEventListener: listener registered successfully, keycode: " + i);
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerInputEventListener e:" + e);
            return null;
        }
    }

    public Object lambda$registerStylusKeyListener$0(com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener iTranStylusKeyListener) throws RemoteException {
        ITranInputManager iTranInputManager = this.mService;
        if (iTranInputManager == null) {
            return null;
        }
        iTranInputManager.registerStylusKeyListener(new TranStylusKeyListener(iTranStylusKeyListener));
        return null;
    }

    public Object lambda$registerTranGestureMonitor$6(ITranGestureCallback iTranGestureCallback, Bundle bundle) throws RemoteException {
        if (this.mService == null || iTranGestureCallback == null) {
            return null;
        }
        try {
            ITranGestureListener tranThubGestureCallback = new TranThubGestureCallback(iTranGestureCallback);
            if (this.mGestureListenerMap.putIfAbsent(iTranGestureCallback, tranThubGestureCallback) == null) {
                this.mService.registerTranGestureMonitor(tranThubGestureCallback, bundle);
                TranSdkLog.i(TAG, "registerTranGestureMonitor: listener registered successfully");
            } else {
                TranSdkLog.w(TAG, "registerTranGestureMonitor: listener already registered");
            }
            return null;
        } catch (RemoteException e) {
            this.mGestureListenerMap.remove(iTranGestureCallback);
            TranSdkLog.e(TAG, "registerTranGestureMonitor e:" + e);
            return null;
        }
    }

    public Object lambda$setBackGestureMode$4(boolean z) throws RemoteException {
        ITranInputManager iTranInputManager = this.mService;
        if (iTranInputManager == null) {
            return null;
        }
        iTranInputManager.setBackGestureMode(z);
        return null;
    }

    public Object lambda$setBackGestureResult$2(IBinder iBinder, boolean z) throws RemoteException {
        ITranInputManager iTranInputManager = this.mService;
        if (iTranInputManager == null) {
            return null;
        }
        iTranInputManager.setBackGestureResult(iBinder, z);
        return null;
    }

    public Object lambda$setTouchRegion$10(ITranGestureCallback iTranGestureCallback, Region region) throws RemoteException {
        ITranGestureListener iTranGestureListenerPutIfAbsent;
        if (this.mService == null || iTranGestureCallback == null) {
            return null;
        }
        try {
            ITranGestureListener tranThubGestureCallback = this.mGestureListenerMap.get(iTranGestureCallback);
            if (tranThubGestureCallback == null && (iTranGestureListenerPutIfAbsent = this.mGestureListenerMap.putIfAbsent(iTranGestureCallback, (tranThubGestureCallback = new TranThubGestureCallback(iTranGestureCallback)))) != null) {
                tranThubGestureCallback = iTranGestureListenerPutIfAbsent;
            }
            this.mService.setTouchRegion(tranThubGestureCallback, region);
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setTouchRegion e:" + e);
            return null;
        }
    }

    public Object lambda$singleKeyPanicBehaviorCheck$5(KeyEvent keyEvent) throws RemoteException {
        ITranInputManager iTranInputManager = this.mService;
        if (iTranInputManager == null) {
            return null;
        }
        iTranInputManager.singleKeyPanicBehaviorCheck(keyEvent);
        return null;
    }

    public Object lambda$tranPilferPointers$8(ITranGestureCallback iTranGestureCallback) throws RemoteException {
        ITranGestureListener iTranGestureListenerPutIfAbsent;
        if (this.mService == null || iTranGestureCallback == null) {
            return null;
        }
        try {
            ITranGestureListener tranThubGestureCallback = this.mGestureListenerMap.get(iTranGestureCallback);
            if (tranThubGestureCallback == null && (iTranGestureListenerPutIfAbsent = this.mGestureListenerMap.putIfAbsent(iTranGestureCallback, (tranThubGestureCallback = new TranThubGestureCallback(iTranGestureCallback)))) != null) {
                tranThubGestureCallback = iTranGestureListenerPutIfAbsent;
            }
            this.mService.tranPilferPointers(tranThubGestureCallback);
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "tranPilferPointers e:" + e);
            return null;
        }
    }

    public Object lambda$tranPilferPointersAwhile$9(ITranGestureCallback iTranGestureCallback, boolean z) throws RemoteException {
        ITranGestureListener iTranGestureListenerPutIfAbsent;
        if (this.mService == null || iTranGestureCallback == null) {
            return null;
        }
        try {
            ITranGestureListener tranThubGestureCallback = this.mGestureListenerMap.get(iTranGestureCallback);
            if (tranThubGestureCallback == null && (iTranGestureListenerPutIfAbsent = this.mGestureListenerMap.putIfAbsent(iTranGestureCallback, (tranThubGestureCallback = new TranThubGestureCallback(iTranGestureCallback)))) != null) {
                tranThubGestureCallback = iTranGestureListenerPutIfAbsent;
            }
            this.mService.tranPilferPointersAwhile(tranThubGestureCallback, z);
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "tranPilferPointersAwhile e:" + e);
            return null;
        }
    }

    public Object lambda$unregisterInputEventListener$12(ITranInputEventCallback iTranInputEventCallback, int i) throws RemoteException {
        if (this.mService == null || iTranInputEventCallback == null) {
            return null;
        }
        try {
            ITranInputEventListener iTranInputEventListenerRemove = this.mInputEventListenerMap.remove(iTranInputEventCallback);
            if (iTranInputEventListenerRemove != null) {
                this.mService.unregisterInputEventListener(iTranInputEventListenerRemove, i);
                TranSdkLog.i(TAG, "unregisterInputEventListener: listener unregistered successfully, keycode: " + i);
            } else {
                TranSdkLog.w(TAG, "unregisterInputEventListener: listener not found, keycode: " + i);
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterInputEventListener e:" + e);
            return null;
        }
    }

    public Object lambda$unregisterStylusKeyListener$1(com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener iTranStylusKeyListener) throws RemoteException {
        ITranInputManager iTranInputManager = this.mService;
        if (iTranInputManager == null) {
            return null;
        }
        iTranInputManager.unregisterStylusKeyListener(new TranStylusKeyListener(iTranStylusKeyListener));
        return null;
    }

    public Object lambda$unregisterTranGestureMonitor$7(ITranGestureCallback iTranGestureCallback) throws RemoteException {
        if (this.mService == null || iTranGestureCallback == null) {
            return null;
        }
        try {
            ITranGestureListener iTranGestureListenerRemove = this.mGestureListenerMap.remove(iTranGestureCallback);
            if (iTranGestureListenerRemove != null) {
                this.mService.unregisterTranGestureMonitor(iTranGestureListenerRemove);
                TranSdkLog.i(TAG, "unregisterTranGestureMonitor: listener unregistered successfully");
            } else {
                TranSdkLog.w(TAG, "unregisterTranGestureMonitor: listener not found in map");
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterTranGestureMonitor e:" + e);
            return null;
        }
    }

    public Object lambda$updateBackGestureRegion$3(IBinder iBinder, Region region) throws RemoteException {
        ITranInputManager iTranInputManager = this.mService;
        if (iTranInputManager == null) {
            return null;
        }
        iTranInputManager.updateBackGestureRegion(iBinder, region);
        return null;
    }

    @Override
    public boolean ignoreMultiWindowGesture() {
        ITranInputManager iTranInputManager = this.mService;
        if (iTranInputManager == null) {
            return false;
        }
        try {
            return iTranInputManager.ignoreMultiWindowGesture();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean injectInputEvent(InputEvent inputEvent, int i) {
        return getTranInputManager().injectInputEvent(inputEvent, i);
    }

    @Override
    public com.transsion.hubsdk.api.view.ITranInputMonitor monitorGestureInput(String str, int i, ITranTouchEventHandler iTranTouchEventHandler) {
        if (this.mService != null) {
            try {
                this.mTouchEventHandler = iTranTouchEventHandler;
                ITranInputMonitor iTranInputMonitorMonitorGestureInput = this.mService.monitorGestureInput(str, i, iTranTouchEventHandler != null ? new TranTouchEventHandler() : null);
                this.mInputMonitor = iTranInputMonitorMonitorGestureInput;
                if (iTranInputMonitorMonitorGestureInput != null) {
                    return new TranInputMonitor();
                }
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "monitorGestureInput:" + e);
            }
        }
        return null;
    }

    @Override
    public void registerInputEventListener(final ITranInputEventCallback iTranInputEventCallback, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$registerInputEventListener$11(iTranInputEventCallback, i);
            }
        }, "input");
    }

    @Override
    public void registerStylusKeyListener(final com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener iTranStylusKeyListener) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$registerStylusKeyListener$0(iTranStylusKeyListener);
            }
        }, "input_method_service");
        TranSdkLog.d(TAG, "registerStylusKeyListener sucess");
    }

    @Override
    public void registerTranGestureMonitor(final ITranGestureCallback iTranGestureCallback, final Bundle bundle) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$registerTranGestureMonitor$6(iTranGestureCallback, bundle);
            }
        }, "input");
    }

    @Override
    public void setBackGestureMode(final boolean z) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
                @Override
                public final Object run() {
                    return this.a.lambda$setBackGestureMode$4(z);
                }
            }, "input");
        }
    }

    @Override
    public void setBackGestureResult(final IBinder iBinder, final boolean z) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
                @Override
                public final Object run() {
                    return this.a.lambda$setBackGestureResult$2(iBinder, z);
                }
            }, "input");
        }
    }

    @VisibleForTesting
    public void setService(ITranInputManager iTranInputManager) {
        this.mService = iTranInputManager;
    }

    @Override
    public void setTouchRegion(final ITranGestureCallback iTranGestureCallback, final Region region) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setTouchRegion$10(iTranGestureCallback, region);
            }
        }, "input");
    }

    @Override
    public void singleKeyPanicBehaviorCheck(final KeyEvent keyEvent) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$singleKeyPanicBehaviorCheck$5(keyEvent);
            }
        }, "input");
    }

    @Override
    public void tranPilferPointers(final ITranGestureCallback iTranGestureCallback) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$tranPilferPointers$8(iTranGestureCallback);
            }
        }, "input");
    }

    @Override
    public void tranPilferPointersAwhile(final ITranGestureCallback iTranGestureCallback, final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$tranPilferPointersAwhile$9(iTranGestureCallback, z);
            }
        }, "input");
    }

    @Override
    public void unregisterInputEventListener(final ITranInputEventCallback iTranInputEventCallback, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$unregisterInputEventListener$12(iTranInputEventCallback, i);
            }
        }, "input");
    }

    @Override
    public void unregisterStylusKeyListener(final com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener iTranStylusKeyListener) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$unregisterStylusKeyListener$1(iTranStylusKeyListener);
            }
        }, "input_method_service");
        TranSdkLog.d(TAG, "unregisterStylusKeyListener sucess");
    }

    @Override
    public void unregisterTranGestureMonitor(final ITranGestureCallback iTranGestureCallback) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$unregisterTranGestureMonitor$7(iTranGestureCallback);
            }
        }, "input");
    }

    @Override
    public void updateBackGestureRegion(final IBinder iBinder, final Region region) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
                @Override
                public final Object run() {
                    return this.a.lambda$updateBackGestureRegion$3(iBinder, region);
                }
            }, "input");
        }
    }
}
