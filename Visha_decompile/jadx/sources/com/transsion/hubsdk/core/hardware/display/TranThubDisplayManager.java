package com.transsion.hubsdk.core.hardware.display;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.ArrayMap;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.hardware.display.TranDisplayManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.display.BuildConfig;
import com.transsion.hubsdk.hardware.display.ITranDisplayManager;
import com.transsion.hubsdk.hardware.display.ITranDisplayManagerCallback;
import com.transsion.hubsdk.hardware.display.ITranFlexButtonCallback;
import com.transsion.hubsdk.hardware.display.ITranPowerStateChangedCallback;
import com.transsion.hubsdk.hardware.display.ITranShoulderButtonCallback;
import com.transsion.hubsdk.hardware.display.ITranSmartButtonCallback;
import com.transsion.hubsdk.hardware.display.ITranTentModeCallback;
import com.transsion.hubsdk.interfaces.hardware.display.ITranDisplayManagerAdapter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.function.Function;

public class TranThubDisplayManager implements ITranDisplayManagerAdapter {
    public static final int EVENT_DISPLAY_ADDED = 1;
    public static final int EVENT_DISPLAY_CHANGED = 2;
    public static final int EVENT_DISPLAY_REMOVED = 3;
    public static final long EVENT_FLAG_DISPLAY_ADDED = 1;
    public static final long EVENT_FLAG_DISPLAY_CHANGED = 4;
    public static final long EVENT_FLAG_DISPLAY_REMOVED = 2;
    private static final String TAG = "TranThubDisplayManager";
    private static TranThubDisplayManager sInstance;
    private TranDisplayManagerCallback mCallback;
    private final Object mLock = new Object();
    private long mDualRegisteredEventsMask = 0;
    protected final ArrayList<TranDisplayListenerDelegate> mDualDisplayListeners = new ArrayList<>();
    private ArrayMap<String, TranThubPowerStateChangedListener> mArrayMap = new ArrayMap<>();
    private ITranDisplayManager mService = ITranDisplayManager.Stub.asInterface(TranServiceManager.getServiceIBinder(BuildConfig.FLAVOR));

    @Retention(RetentionPolicy.SOURCE)
    public @interface DisplayEvent {
    }

    public static final class TranDisplayListenerDelegate extends Handler {
        public long mEventsMask;
        public final TranDisplayManager.DualDisplayListener mListener;

        public TranDisplayListenerDelegate(TranDisplayManager.DualDisplayListener dualDisplayListener, Looper looper, long j) {
            super(looper);
            this.mListener = dualDisplayListener;
            this.mEventsMask = j;
        }

        public void clearEvents() {
            removeCallbacksAndMessages(null);
        }

        @Override
        public synchronized void handleMessage(Message message) {
            try {
                int i = message.what;
                if (i != 1) {
                    if (i == 3 && (this.mEventsMask & 2) != 0) {
                        this.mListener.onDisplayRemoved(message.arg1);
                    }
                } else if ((this.mEventsMask & 1) != 0) {
                    this.mListener.onDisplayAdded(message.arg1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public void sendDualDisplayEvent(int i, int i2) {
            sendMessage(obtainMessage(i2, i, 0));
        }

        public synchronized void setEventsMask(long j) {
            this.mEventsMask = j;
        }
    }

    public final class TranDisplayManagerCallback extends ITranDisplayManagerCallback.Stub {
        private TranDisplayManagerCallback() {
        }

        public void onDisplayEvent(int i, int i2) {
            TranSdkLog.d(TranThubDisplayManager.TAG, "onDualDisplayEvent: displayId=" + i + ", event=" + i2);
            TranThubDisplayManager.this.handleDualDisplayEvent(i, i2);
        }
    }

    public class TranFlexButtonCallback extends ITranFlexButtonCallback.Stub {
        private TranDisplayManager.ITranFlexButtonCallback mTranFlexButtonCallback;

        public TranFlexButtonCallback(TranDisplayManager.ITranFlexButtonCallback iTranFlexButtonCallback) {
            this.mTranFlexButtonCallback = iTranFlexButtonCallback;
        }

        public void onKeyDown() {
            TranDisplayManager.ITranFlexButtonCallback iTranFlexButtonCallback = this.mTranFlexButtonCallback;
            if (iTranFlexButtonCallback != null) {
                iTranFlexButtonCallback.onKeyDown();
            }
        }

        public void onKeyUp() {
            TranDisplayManager.ITranFlexButtonCallback iTranFlexButtonCallback = this.mTranFlexButtonCallback;
            if (iTranFlexButtonCallback != null) {
                iTranFlexButtonCallback.onKeyUp();
            }
        }
    }

    public class TranShoulderButtonCallback extends ITranShoulderButtonCallback.Stub {
        private TranDisplayManager.ITranShoulderButtonCallback mTranShoulderButtonCallback;

        public TranShoulderButtonCallback(TranDisplayManager.ITranShoulderButtonCallback iTranShoulderButtonCallback) {
            this.mTranShoulderButtonCallback = iTranShoulderButtonCallback;
        }

        public void onKeyEvent(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            TranDisplayManager.ITranShoulderButtonCallback iTranShoulderButtonCallback = this.mTranShoulderButtonCallback;
            if (iTranShoulderButtonCallback != null) {
                iTranShoulderButtonCallback.onKeyEvent(i, i2, i3, i4, i5);
            }
        }
    }

    public class TranSmartButtonCallback extends ITranSmartButtonCallback.Stub {
        private TranDisplayManager.ITranSmartButtonCallback mTranSmartButtonCallback;

        public TranSmartButtonCallback(TranDisplayManager.ITranSmartButtonCallback iTranSmartButtonCallback) {
            this.mTranSmartButtonCallback = iTranSmartButtonCallback;
        }

        public void onPress() {
            TranDisplayManager.ITranSmartButtonCallback iTranSmartButtonCallback = this.mTranSmartButtonCallback;
            if (iTranSmartButtonCallback != null) {
                iTranSmartButtonCallback.onPress();
            }
        }
    }

    public class TranTentModeCallback extends ITranTentModeCallback.Stub {
        TranDisplayManager.ITranTentModeCallback mTentModeCallback;

        public TranTentModeCallback(TranDisplayManager.ITranTentModeCallback iTranTentModeCallback) {
            this.mTentModeCallback = iTranTentModeCallback;
        }

        public void onTentStateChanged(int i) {
            TranDisplayManager.ITranTentModeCallback iTranTentModeCallback = this.mTentModeCallback;
            if (iTranTentModeCallback != null) {
                iTranTentModeCallback.onTentStateChanged(i);
            }
        }
    }

    public class TranThubPowerStateChangedListener extends ITranPowerStateChangedCallback.Stub {
        TranDisplayManager.TranPowerStateChangedCallback mCallback;

        public TranThubPowerStateChangedListener(TranDisplayManager.TranPowerStateChangedCallback tranPowerStateChangedCallback) {
            this.mCallback = tranPowerStateChangedCallback;
        }

        public void onColorFadeSateChanged(int i) throws RemoteException {
            TranDisplayManager.TranPowerStateChangedCallback tranPowerStateChangedCallback = this.mCallback;
            if (tranPowerStateChangedCallback != null) {
                tranPowerStateChangedCallback.onColorFadeSateChanged(i);
            }
        }

        public void onPowerModeAndBrightnessChanged(int i, float f) throws RemoteException {
            TranDisplayManager.TranPowerStateChangedCallback tranPowerStateChangedCallback = this.mCallback;
            if (tranPowerStateChangedCallback != null) {
                tranPowerStateChangedCallback.onPowerModeAndBrightnessChanged(i, f);
            }
        }
    }

    private TranThubDisplayManager() {
    }

    private int findDisplayListenerLocked(TranDisplayManager.DualDisplayListener dualDisplayListener) {
        int size = this.mDualDisplayListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mDualDisplayListeners.get(i).mListener == dualDisplayListener) {
                return i;
            }
        }
        return -1;
    }

    public static synchronized TranThubDisplayManager getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new TranThubDisplayManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    private static Looper getLooperForHandler(Handler handler) {
        Looper looper = handler != null ? handler.getLooper() : Looper.myLooper();
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        if (looper != null) {
            return looper;
        }
        throw new IllegalArgumentException("Could not get Looper for the UI thread.");
    }

    public Object lambda$closeDualDisplayForSelfie$2() throws RemoteException {
        ITranDisplayManager iTranDisplayManager = this.mService;
        if (iTranDisplayManager == null) {
            return null;
        }
        iTranDisplayManager.closeDualDisplayForSelfie();
        return null;
    }

    public Object lambda$getCurSelfieDisplayId$5() throws RemoteException {
        ITranDisplayManager iTranDisplayManager = this.mService;
        if (iTranDisplayManager != null) {
            return Integer.valueOf(iTranDisplayManager.getCurSelfieDisplayId());
        }
        return 0;
    }

    public Object lambda$getForcedUsingDisplayMode$0() throws RemoteException {
        ITranDisplayManager iTranDisplayManager = this.mService;
        if (iTranDisplayManager != null) {
            return Integer.valueOf(iTranDisplayManager.getForcedUsingDisplayMode());
        }
        return 0;
    }

    public Object lambda$getSourceConnectFlag$1() throws RemoteException {
        ITranDisplayManager iTranDisplayManager = this.mService;
        if (iTranDisplayManager != null) {
            return Integer.valueOf(iTranDisplayManager.getSourceConnectFlag());
        }
        return 0;
    }

    public Object lambda$isDualDisplayForSelfie$4() throws RemoteException {
        ITranDisplayManager iTranDisplayManager = this.mService;
        return iTranDisplayManager != null ? Boolean.valueOf(iTranDisplayManager.isDualDisplayForSelfie()) : Boolean.FALSE;
    }

    public Object lambda$openDualDisplayForSelfie$3(Bundle bundle) throws RemoteException {
        ITranDisplayManager iTranDisplayManager = this.mService;
        if (iTranDisplayManager == null) {
            return null;
        }
        iTranDisplayManager.openDualDisplayForSelfie(bundle);
        return null;
    }

    public TranThubPowerStateChangedListener lambda$registerPowerStateChangedCallback$7(TranDisplayManager.TranPowerStateChangedCallback tranPowerStateChangedCallback, String str) {
        return new TranThubPowerStateChangedListener(tranPowerStateChangedCallback);
    }

    public Object lambda$setTranAutoBrightnessTemporarily$6(int i, boolean z, String str) throws RemoteException {
        ITranDisplayManager iTranDisplayManager = this.mService;
        if (iTranDisplayManager == null) {
            return null;
        }
        iTranDisplayManager.setTranAutoBrightnessTemporarily(i, z, str);
        return null;
    }

    private void registerDualCallbackIfNeededLocked() {
        if (this.mCallback == null) {
            this.mCallback = new TranDisplayManagerCallback();
            updateDualCallbackIfNeededLocked();
        }
    }

    private void updateDualCallbackIfNeededLocked() {
        int size = this.mDualDisplayListeners.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i = (int) (((long) i) | this.mDualDisplayListeners.get(i2).mEventsMask);
        }
        long j = i;
        if (j != this.mDualRegisteredEventsMask) {
            try {
                this.mService.registerDualCallbackWithEventMask(this.mCallback, j);
                this.mDualRegisteredEventsMask = j;
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void addShowInDualDisplay(String str, String str2) {
        if (TranThubVersionUtil.isLowerAndroidT()) {
            return;
        }
        try {
            this.mService.addShowInDualDisplay(str, str2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public void closeDualDisplay() {
        ITranDisplayManager iTranDisplayManager;
        if (TranThubVersionUtil.isLowerAndroidT() || (iTranDisplayManager = this.mService) == null) {
            return;
        }
        try {
            iTranDisplayManager.closeDualDisplay();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public void closeDualDisplayForSelfie() {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$closeDualDisplayForSelfie$2();
            }
        }, BuildConfig.FLAVOR);
    }

    @Override
    public void executeSmartbuttonFunction(int i, String str, String str2, boolean z) {
        ITranDisplayManager iTranDisplayManager;
        if (TranThubVersionUtil.isRecentAndroidT() && (iTranDisplayManager = this.mService) != null) {
            try {
                iTranDisplayManager.executeSmartbuttonFunction(i, str, str2, z);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "executeSmartbuttonFunction fail");
            }
        }
    }

    @Override
    public int getCurSelfieDisplayId() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getCurSelfieDisplayId$5();
            }
        }, BuildConfig.FLAVOR)).intValue();
        TranSdkLog.i(TAG, "getCurSelfieDisplayId");
        return iIntValue;
    }

    @Override
    public int getForcedUsingDisplayMode() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getForcedUsingDisplayMode$0();
            }
        }, BuildConfig.FLAVOR)).intValue();
        TranSdkLog.i(TAG, "getForcedUsingDisplayMode result:" + iIntValue);
        return iIntValue;
    }

    @Override
    public int getSecondaryDisplayId() {
        if (TranThubVersionUtil.isLowerAndroidT()) {
            return -1;
        }
        try {
            return this.mService.getSecondaryDisplayId();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getSecondaryDisplayId : e = " + e);
            return -1;
        }
    }

    @Override
    public int getSourceConnectFlag() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getSourceConnectFlag$1();
            }
        }, BuildConfig.FLAVOR)).intValue();
        TranSdkLog.i(TAG, "getSourceConnectFlag result:" + iIntValue);
        return iIntValue;
    }

    public void handleDualDisplayEvent(int i, int i2) {
        synchronized (this.mLock) {
            try {
                int size = this.mDualDisplayListeners.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.mDualDisplayListeners.get(i3).sendDualDisplayEvent(i, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean isDualDisplayForSelfie() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isDualDisplayForSelfie$4();
            }
        }, BuildConfig.FLAVOR)).booleanValue();
        TranSdkLog.i(TAG, "isDualDisplayForSelfie");
        return zBooleanValue;
    }

    @Override
    public boolean isTentMode() {
        ITranDisplayManager iTranDisplayManager;
        if (!TranThubVersionUtil.isRecentAndroidT() || (iTranDisplayManager = this.mService) == null) {
            return false;
        }
        try {
            return iTranDisplayManager.isTentMode();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public void openDualDisplay() {
        if (TranThubVersionUtil.isLowerAndroidT() || this.mService == null) {
            return;
        }
        try {
            TranSdkLog.d(TAG, "openDualDisplay: 1");
            this.mService.openDualDisplay();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public void openDualDisplayForSelfie(final Bundle bundle) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$openDualDisplayForSelfie$3(bundle);
            }
        }, BuildConfig.FLAVOR);
    }

    @Override
    public void registerDualDisplayListener(TranDisplayManager.DualDisplayListener dualDisplayListener, Handler handler) {
        if (TranThubVersionUtil.isLowerAndroidT() || this.mService == null) {
            return;
        }
        if (dualDisplayListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mLock) {
            try {
                int iFindDisplayListenerLocked = findDisplayListenerLocked(dualDisplayListener);
                if (iFindDisplayListenerLocked < 0) {
                    this.mDualDisplayListeners.add(new TranDisplayListenerDelegate(dualDisplayListener, getLooperForHandler(handler), 7L));
                    registerDualCallbackIfNeededLocked();
                } else {
                    this.mDualDisplayListeners.get(iFindDisplayListenerLocked).setEventsMask(7L);
                }
                updateDualCallbackIfNeededLocked();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void registerFlexButtonCallback(int i, TranDisplayManager.ITranFlexButtonCallback iTranFlexButtonCallback) {
        if (TranThubVersionUtil.isRecentAndroidT() && this.mService != null) {
            try {
                this.mService.registerFlexButtonCallback(new TranFlexButtonCallback(iTranFlexButtonCallback), i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "registerFlexButtonCallback fail");
            }
        }
    }

    @Override
    public boolean registerPowerStateChangedCallback(final TranDisplayManager.TranPowerStateChangedCallback tranPowerStateChangedCallback, String str) {
        TranThubPowerStateChangedListener tranThubPowerStateChangedListenerComputeIfAbsent = this.mArrayMap.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.lambda$registerPowerStateChangedCallback$7(tranPowerStateChangedCallback, (String) obj);
            }
        });
        try {
            ITranDisplayManager iTranDisplayManager = this.mService;
            if (iTranDisplayManager != null) {
                return iTranDisplayManager.registerPowerStateChangedCallback(tranThubPowerStateChangedListenerComputeIfAbsent, str);
            }
            return false;
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "registerPowerStateChangedCallback fail:" + e);
            return false;
        }
    }

    @Override
    public void registerShoulderButtonCallback(int i, TranDisplayManager.ITranShoulderButtonCallback iTranShoulderButtonCallback) {
        if (TranThubVersionUtil.isRecentAndroidT() && this.mService != null) {
            try {
                this.mService.registerShoulderButtonCallback(new TranShoulderButtonCallback(iTranShoulderButtonCallback), i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "registerShoulderButtonCallback fail");
            }
        }
    }

    @Override
    public void registerSmartButtonCallback(int i, TranDisplayManager.ITranSmartButtonCallback iTranSmartButtonCallback) {
        if (TranThubVersionUtil.isRecentAndroidU() && this.mService != null) {
            try {
                this.mService.registerSmartButtonCallback(new TranSmartButtonCallback(iTranSmartButtonCallback), i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "registerSmartButtonCallback fail");
            }
        }
    }

    @Override
    public void registerTentModeCallback(int i, TranDisplayManager.ITranTentModeCallback iTranTentModeCallback) {
        if (TranThubVersionUtil.isRecentAndroidT() && this.mService != null) {
            try {
                this.mService.registerTentModeCallback(new TranTentModeCallback(iTranTentModeCallback), i);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void setBrightness(int i, float f) {
        try {
            this.mService.setBrightness(i, f);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setBrightness : e = " + e);
        }
    }

    @VisibleForTesting
    public void setService(ITranDisplayManager iTranDisplayManager) {
        this.mService = iTranDisplayManager;
    }

    @Override
    public void setTemporaryBrightness(int i, float f) {
        try {
            this.mService.setTemporaryBrightness(i, f);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setTemporaryBrightness: e = " + e);
        }
    }

    @Override
    public void setTranAutoBrightnessTemporarily(final int i, final boolean z, final String str) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setTranAutoBrightnessTemporarily$6(i, z, str);
            }
        }, BuildConfig.FLAVOR);
    }

    @Override
    public boolean unRegisterPowerStateChangedListener(String str) {
        boolean zUnRegisterPowerStateChangedListener = false;
        try {
            ITranDisplayManager iTranDisplayManager = this.mService;
            if (iTranDisplayManager == null) {
                return false;
            }
            zUnRegisterPowerStateChangedListener = iTranDisplayManager.unRegisterPowerStateChangedListener(str);
            this.mArrayMap.remove(str);
            return zUnRegisterPowerStateChangedListener;
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "unRegisterPowerStateChangedListener fail:" + e);
            return zUnRegisterPowerStateChangedListener;
        }
    }

    @Override
    public void unregisterDualDisplayListener(TranDisplayManager.DualDisplayListener dualDisplayListener) {
        if (TranThubVersionUtil.isLowerAndroidT() || this.mService == null) {
            return;
        }
        if (dualDisplayListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mLock) {
            try {
                int iFindDisplayListenerLocked = findDisplayListenerLocked(dualDisplayListener);
                if (iFindDisplayListenerLocked >= 0) {
                    this.mDualDisplayListeners.get(iFindDisplayListenerLocked).clearEvents();
                    this.mDualDisplayListeners.remove(iFindDisplayListenerLocked);
                    updateDualCallbackIfNeededLocked();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void unregisterFlexButtonCallback(int i) {
        ITranDisplayManager iTranDisplayManager;
        if (TranThubVersionUtil.isRecentAndroidT() && (iTranDisplayManager = this.mService) != null) {
            try {
                iTranDisplayManager.unregisterFlexButtonCallback(i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "unregisterFlexButtonCallback fail");
            }
        }
    }

    @Override
    public void unregisterShoulderButtonCallback(int i) {
        ITranDisplayManager iTranDisplayManager;
        if (TranThubVersionUtil.isRecentAndroidT() && (iTranDisplayManager = this.mService) != null) {
            try {
                iTranDisplayManager.unregisterShoulderButtonCallback(i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "unregisterShoulderButtonCallback fail");
            }
        }
    }

    @Override
    public void unregisterSmartButtonCallback(int i) {
        ITranDisplayManager iTranDisplayManager;
        if (TranThubVersionUtil.isRecentAndroidU() && (iTranDisplayManager = this.mService) != null) {
            try {
                iTranDisplayManager.unregisterSmartButtonCallback(i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "unregisterSmartButtonCallback fail");
            }
        }
    }

    @Override
    public void unregisterTentModeCallback(int i) {
        ITranDisplayManager iTranDisplayManager;
        if (TranThubVersionUtil.isRecentAndroidT() && (iTranDisplayManager = this.mService) != null) {
            try {
                iTranDisplayManager.unregisterTentModeCallback(i);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }
}
