package com.transsion.hubsdk.core.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.aosp.app.TranAospActivityManagerExt;
import com.transsion.hubsdk.api.app.TranActivityManager;
import com.transsion.hubsdk.api.app.TranTaskStackListener;
import com.transsion.hubsdk.api.app.TranUserSwitchObserver;
import com.transsion.hubsdk.app.ITranActivityManager;
import com.transsion.hubsdk.app.ITranActivityStartObserver;
import com.transsion.hubsdk.app.ITranAppRecoveryCallback;
import com.transsion.hubsdk.app.ITranBloodOxygenLedStateCallback;
import com.transsion.hubsdk.app.ITranPackageDataObserver;
import com.transsion.hubsdk.app.ITranProcessObserver;
import com.transsion.hubsdk.app.ITranTaskStackListener;
import com.transsion.hubsdk.app.ITranUserSwitchObserver;
import com.transsion.hubsdk.app.audio.ITranAudioVolumeListener;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityManagerAdapter;
import com.transsion.hubsdk.internal.app.ITranNecessityWindowService;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public class TranThubActivityManager implements ITranActivityManagerAdapter {
    private static final int MAX_USER_SWITCH_OBSERVER_COUNT = 30;
    private static final String TAG = "TranThubActivityManager";
    private final ArrayMap<TranActivityManager.ITranProcessObserverInner, TranThubProcessObserver> mListenerMap = new ArrayMap<>();
    private final ArrayMap<TranTaskStackListener, TranThubTaskStackListener> mTaskStackListenerMaps = new ArrayMap<>();
    private final ArrayMap<TranUserSwitchObserver, TranThubUserSwitchObserver> mUserSwitchListenerMap = new ArrayMap<>();
    private Map<TranActivityManager.ITranBloodOxygenLedStateCallback, TranThubBloodOxygenLedStateCallback> mBloodOxygenMap = new ConcurrentHashMap();
    private final ArrayMap<TranActivityManager.TranActivityStartObserver, TranThubActivityStartObserver> mActivityStartObserverMap = new ArrayMap<>();
    private final Map<ITranAudioVolumeListener, TranAudioVolumeListener> mAudioVolumeListenerMap = new ConcurrentHashMap();
    private ITranActivityManager mService = ITranActivityManager.Stub.asInterface(TranServiceManager.getServiceIBinder("activity"));

    public class TranAppRecoveryCallback extends ITranAppRecoveryCallback.Stub {
        private IBinder mBinder;
        private TranActivityManager.ITranAppRecoveryCallback mCallback;

        public TranAppRecoveryCallback(TranActivityManager.ITranAppRecoveryCallback iTranAppRecoveryCallback, IBinder iBinder) {
            this.mCallback = iTranAppRecoveryCallback;
            this.mBinder = iBinder;
        }

        public void onSaveStateWhenError(Bundle bundle) throws Throwable {
            Bundle bundle2;
            Throwable th;
            String str;
            StringBuilder sb;
            if (this.mCallback == null || (bundle2 = TranThubActivityManager.this.mService) == null) {
                return;
            }
            try {
                try {
                    try {
                        bundle2 = new Bundle();
                        this.mCallback.onSaveStateWhenError(bundle2);
                        try {
                            TranThubActivityManager.this.mService.setActivityState(this.mBinder, bundle2);
                        } catch (RemoteException e) {
                            e = e;
                            str = TranThubActivityManager.TAG;
                            sb = new StringBuilder();
                            sb.append("setActivityState error: ");
                            sb.append(e);
                            TranSdkLog.e(str, sb.toString());
                        }
                    } catch (Exception e2) {
                        bundle2 = null;
                        TranSdkLog.e(TranThubActivityManager.TAG, "onSaveStateWhenError error: " + e2);
                        try {
                            TranThubActivityManager.this.mService.setActivityState(this.mBinder, (Bundle) null);
                        } catch (RemoteException e3) {
                            e = e3;
                            str = TranThubActivityManager.TAG;
                            sb = new StringBuilder();
                            sb.append("setActivityState error: ");
                            sb.append(e);
                            TranSdkLog.e(str, sb.toString());
                        }
                    }
                } catch (Throwable th2) {
                    bundle2 = bundle;
                    th = th2;
                    try {
                        TranThubActivityManager.this.mService.setActivityState(this.mBinder, bundle2);
                    } catch (RemoteException e4) {
                        TranSdkLog.e(TranThubActivityManager.TAG, "setActivityState error: " + e4);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                TranThubActivityManager.this.mService.setActivityState(this.mBinder, bundle2);
                throw th;
            }
        }
    }

    public class TranAudioVolumeListener extends ITranAudioVolumeListener.Stub {
        private final ITranAudioVolumeListener mListener;

        public TranAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener) {
            this.mListener = iTranAudioVolumeListener;
        }

        public void onAudioVolumeChange(int i, int i2, int i3, String str) throws RemoteException {
            ITranAudioVolumeListener iTranAudioVolumeListener = this.mListener;
            if (iTranAudioVolumeListener != null) {
                iTranAudioVolumeListener.onAudioVolumeChange(i, i2, i3, str);
            }
        }
    }

    public class TranPackageDataObserver extends ITranPackageDataObserver.Stub {
        private TranAospActivityManagerExt.ITranPackageDataObserverExtInner mTranPackageDataObserver;

        public TranPackageDataObserver(TranAospActivityManagerExt.ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner) {
            this.mTranPackageDataObserver = iTranPackageDataObserverExtInner;
        }

        public void onRemoveCompleted(String str, boolean z) {
            TranAospActivityManagerExt.ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner = this.mTranPackageDataObserver;
            if (iTranPackageDataObserverExtInner != null) {
                iTranPackageDataObserverExtInner.onRemoveCompleted(str, z);
            }
        }
    }

    public class TranThubActivityStartObserver extends ITranActivityStartObserver.Stub {
        private TranActivityManager.TranActivityStartObserver mObserver;

        public TranThubActivityStartObserver(TranActivityManager.TranActivityStartObserver tranActivityStartObserver) {
            this.mObserver = tranActivityStartObserver;
        }

        public void onRealStartActivity(String str, String str2, int i) throws RemoteException {
            TranActivityManager.TranActivityStartObserver tranActivityStartObserver = this.mObserver;
            if (tranActivityStartObserver != null) {
                tranActivityStartObserver.onRealStartActivity(str, str2, i);
            }
        }
    }

    public class TranThubBloodOxygenLedStateCallback extends ITranBloodOxygenLedStateCallback.Stub {
        private TranActivityManager.ITranBloodOxygenLedStateCallback mCallback;

        public TranThubBloodOxygenLedStateCallback(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) {
            this.mCallback = iTranBloodOxygenLedStateCallback;
        }

        public void onBloodOxygenLedStateChange(int i) throws RemoteException {
            TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback = this.mCallback;
            if (iTranBloodOxygenLedStateCallback != null) {
                iTranBloodOxygenLedStateCallback.onBloodOxygenLedStateChange(i);
            }
        }
    }

    public class TranThubNecessityServiceCallback extends ITranNecessityWindowService.Stub {
        private com.transsion.hubsdk.api.app.ITranNecessityWindowService mCallback;

        public TranThubNecessityServiceCallback(com.transsion.hubsdk.api.app.ITranNecessityWindowService iTranNecessityWindowService) {
            this.mCallback = iTranNecessityWindowService;
        }

        public void interceptUnknowSourceWindow(Bundle bundle) {
            com.transsion.hubsdk.api.app.ITranNecessityWindowService iTranNecessityWindowService = this.mCallback;
            if (iTranNecessityWindowService != null) {
                try {
                    iTranNecessityWindowService.interceptUnknowSourceWindow(bundle);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubActivityManager.TAG, "interceptUnknowSourceWindow: " + e);
                }
            }
        }

        public void scanUnknowSourceIfNeedWindow(Bundle bundle) {
            com.transsion.hubsdk.api.app.ITranNecessityWindowService iTranNecessityWindowService = this.mCallback;
            if (iTranNecessityWindowService != null) {
                try {
                    iTranNecessityWindowService.scanUnknowSourceIfNeedWindow(bundle);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubActivityManager.TAG, "scanUnknowSourceIfNeedWindow: " + e);
                }
            }
        }
    }

    public class TranThubProcessObserver extends ITranProcessObserver.Stub {
        private TranActivityManager.ITranProcessObserverInner mObserverInner;

        public TranThubProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner) {
            this.mObserverInner = iTranProcessObserverInner;
        }

        public void onForegroundActivitiesChanged(int i, int i2, boolean z) throws RemoteException {
            this.mObserverInner.onForegroundActivitiesChanged(i, i2, z);
        }

        public void onForegroundServicesChanged(int i, int i2, int i3) throws RemoteException {
            this.mObserverInner.onForegroundServicesChanged(i, i2, i3);
        }

        public void onProcessDied(int i, int i2) throws RemoteException {
            this.mObserverInner.onProcessDied(i, i2);
        }
    }

    public class TranThubTaskStackListener extends ITranTaskStackListener.Stub {
        private TranTaskStackListener mListener;

        public TranThubTaskStackListener(TranTaskStackListener tranTaskStackListener) {
            this.mListener = tranTaskStackListener;
        }

        public void onLockTaskModeChanged(int i) {
            TranSdkLog.d(TranThubActivityManager.TAG, "onLockTaskModeChanged mListener" + this.mListener);
            TranTaskStackListener tranTaskStackListener = this.mListener;
            if (tranTaskStackListener != null) {
                tranTaskStackListener.onLockTaskModeChanged(i);
            }
        }

        public void onTaskCreated(int i, ComponentName componentName) throws RemoteException {
            TranSdkLog.d(TranThubActivityManager.TAG, "onTaskCreated mListener" + this.mListener);
            TranTaskStackListener tranTaskStackListener = this.mListener;
            if (tranTaskStackListener != null) {
                tranTaskStackListener.onTaskCreated(i, componentName);
            }
        }

        public void onTaskFocusChanged(int i, boolean z) {
            TranSdkLog.d(TranThubActivityManager.TAG, "onTaskFocusChanged mListener" + this.mListener);
            TranTaskStackListener tranTaskStackListener = this.mListener;
            if (tranTaskStackListener != null) {
                tranTaskStackListener.onTaskFocusChanged(i, z);
            }
        }
    }

    public class TranThubUserSwitchObserver extends ITranUserSwitchObserver.Stub {
        private TranUserSwitchObserver mObserver;

        public TranThubUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver) {
            this.mObserver = tranUserSwitchObserver;
        }

        public void onUserSwitchComplete(int i) throws RemoteException {
            this.mObserver.onUserSwitchComplete(i);
        }

        public void onUserSwitching(int i) throws RemoteException {
            this.mObserver.onUserSwitching(i);
        }
    }

    public Object lambda$backgroundAllowlistUid$5(int i) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.backgroundAllowlistUid(i);
        return null;
    }

    public Object lambda$changeCompactionMem$27() throws RemoteException {
        return null;
    }

    public Object lambda$enableHiber$10(boolean z) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.enableHiber(z);
        return null;
    }

    public Object lambda$forceStopPackageNecessity$15(String str, int i, int i2) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.forceStopPackageNecessity(str, i, i2);
        return null;
    }

    public Object lambda$gameSceneEnd$33(String str, boolean z) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.gameSceneEnd(str, z);
        return null;
    }

    public Object lambda$gameSceneStart$32(String str, String str2, boolean z, List list) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.gameSceneStart(str, str2, z, list);
        return null;
    }

    public Object lambda$getAppListMode$12(int i) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return iTranActivityManager.getAppListMode(i);
        }
        return null;
    }

    public Object lambda$getCleanProtectList$3() throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return iTranActivityManager.getCleanProtectList();
        }
        return null;
    }

    public Object lambda$getLocale$7() throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return iTranActivityManager.getLocale().mLocale;
        }
        return null;
    }

    public Object lambda$getMEMCList$19(String str) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return iTranActivityManager.getMEMCList(str);
        }
        return null;
    }

    public Object lambda$getMemoryForMF$29() throws RemoteException {
        return this.mService != null ? 0 : null;
    }

    public Object lambda$getSwapFileSizeList$23() throws RemoteException {
        return null;
    }

    public Object lambda$getTargetFps$20(String str, String str2) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return Integer.valueOf(iTranActivityManager.getTargetFps(str, str2));
        }
        return null;
    }

    public Object lambda$getTopActivityInfo$0() throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return iTranActivityManager.getTopActivityInfo();
        }
        return null;
    }

    public Object lambda$getTranGameList$18(int i) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return iTranActivityManager.getTranGameList(i);
        }
        return null;
    }

    public Object lambda$isEnabledHiber$9() throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return Boolean.valueOf(iTranActivityManager.isEnabledHiber());
        }
        return null;
    }

    public Object lambda$isGameGuardSupport$31() throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        return iTranActivityManager != null ? Boolean.valueOf(iTranActivityManager.isGameGuardSupport()) : Boolean.FALSE;
    }

    public Object lambda$isInGameGuardProtectedList$30(String str) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        return iTranActivityManager != null ? Boolean.valueOf(iTranActivityManager.isInGameGuardProtectedList(str)) : Boolean.FALSE;
    }

    public Object lambda$isLowRamDeviceStatic$2() throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        return iTranActivityManager != null ? Boolean.valueOf(iTranActivityManager.isLowRamDeviceStatic()) : Boolean.FALSE;
    }

    public Object lambda$isMatchCurMemSelection$22() throws RemoteException {
        if (this.mService != null) {
            return Boolean.FALSE;
        }
        return null;
    }

    public Object lambda$isMemSettingEnterEnabled$21() throws RemoteException {
        if (this.mService != null) {
            return Boolean.FALSE;
        }
        return null;
    }

    public Object lambda$isMemoryEnoughToMF$26() throws RemoteException {
        return this.mService != null ? 0 : null;
    }

    public Object lambda$isUxCompactionSupport$24() throws RemoteException {
        if (this.mService != null) {
            return Boolean.FALSE;
        }
        return null;
    }

    public Object lambda$isWhiteApp$13(String str) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return Boolean.valueOf(iTranActivityManager.isWhiteApp(str));
        }
        return null;
    }

    public Object lambda$notifyInterceptUnknowSource$16(boolean z) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.notifyInterceptUnknowSource(z);
        return null;
    }

    public TranThubActivityStartObserver lambda$registerActivityStartObserver$35(TranActivityManager.TranActivityStartObserver tranActivityStartObserver) {
        return new TranThubActivityStartObserver(tranActivityStartObserver);
    }

    public TranAudioVolumeListener lambda$registerAudioVolumeListener$36(ITranAudioVolumeListener iTranAudioVolumeListener) {
        return new TranAudioVolumeListener(iTranAudioVolumeListener);
    }

    public TranThubBloodOxygenLedStateCallback lambda$registerBloodOxygenLedStateListener$34(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) {
        return new TranThubBloodOxygenLedStateCallback(iTranBloodOxygenLedStateCallback);
    }

    public Object lambda$setAppMode$11(int i, int i2) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.setAppMode(i, i2);
        return null;
    }

    public Object lambda$setBlackListToSystem$14(List list) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.setBlackListToSystem(list);
        return null;
    }

    public Object lambda$setCleanProtect$4(String str, boolean z) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        return iTranActivityManager != null ? Boolean.valueOf(iTranActivityManager.setCleanProtect(str, z)) : Boolean.FALSE;
    }

    public Object lambda$setGameParam$17(String str, String str2, String str3) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            return Boolean.valueOf(iTranActivityManager.setGameParam(str, str2, str3));
        }
        return null;
    }

    public Object lambda$setLedMusicPlay$8(boolean z) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.setLedMusicPlay(z);
        return null;
    }

    public Object lambda$startUserInBackground$1(int i) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        return iTranActivityManager != null ? Boolean.valueOf(iTranActivityManager.startUserInBackground(i)) : Boolean.FALSE;
    }

    public Object lambda$switchMemFusion$28() throws RemoteException {
        return null;
    }

    public Object lambda$switchUXCompaction$25() throws RemoteException {
        return null;
    }

    public Object lambda$unregisterTaskStackListener$6(TranTaskStackListener tranTaskStackListener) throws RemoteException {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        iTranActivityManager.unregisterTaskStackListener(this.mTaskStackListenerMaps.get(tranTaskStackListener));
        this.mTaskStackListenerMaps.remove(tranTaskStackListener);
        return null;
    }

    @Override
    public Bundle applyToAppLockAsUser(int i, Bundle bundle, int i2) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.applyToAppLockAsUser(i, bundle, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "applyToAppLockAsUser error: " + e);
            return null;
        }
    }

    @Override
    public void backgroundAllowlistUid(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$backgroundAllowlistUid$5(i);
            }
        }, "activity");
        TranSdkLog.i(TAG, "backgroundAllowlistUid uid:" + i);
    }

    @Override
    public long calculateReclaimableMemory() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0L;
        }
        try {
            return iTranActivityManager.calculateReclaimableMemory();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "calculateReclaimableMemory error: " + e);
            return 0L;
        }
    }

    @Override
    @Deprecated
    public void changeCompactionMem(String str) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$changeCompactionMem$27();
            }
        }, "window");
    }

    @Override
    public boolean clearApplicationUserData(String str, TranAospActivityManagerExt.ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.clearApplicationUserData(str, new TranPackageDataObserver(iTranPackageDataObserverExtInner));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "clearApplicationUserData:" + e);
            return false;
        }
    }

    @Override
    public void doClean(int i, List<String> list) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return;
        }
        try {
            iTranActivityManager.doClean(i, list);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "doClean:" + e);
        }
    }

    @Override
    public void enableHiber(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$enableHiber$10(z);
            }
        }, "activity");
        TranSdkLog.d(TAG, "enableHiber");
    }

    @Override
    public void forceStopPackage(String str) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.forceStopPackage(str);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "forceStopPackage fail:" + e);
            }
        }
    }

    @Override
    public void forceStopPackageNecessity(final String str, final int i, final int i2) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$forceStopPackageNecessity$15(str, i, i2);
            }
        }, "activity");
        TranSdkLog.d(TAG, "forceStopPackageNecessity");
    }

    @Override
    public void gameSceneEnd(final String str, final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$gameSceneEnd$33(str, z);
            }
        }, "activity");
        TranSdkLog.d(TAG, "gameSceneEnd");
    }

    @Override
    public void gameSceneStart(final String str, final String str2, final boolean z, final List<String> list) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$gameSceneStart$32(str, str2, z, list);
            }
        }, "activity");
        TranSdkLog.d(TAG, "gameSceneStart");
    }

    @Override
    public int[] getAppListMode(final int i) {
        int[] iArr = (int[]) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getAppListMode$12(i);
            }
        }, "activity");
        TranSdkLog.d(TAG, "getAppListMode");
        return iArr;
    }

    @Override
    public int getBackgroundRestrictionExemptionReason(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return -1;
        }
        try {
            return iTranActivityManager.getBackgroundRestrictionExemptionReason(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getBackgroundRestrictionExemptionReason error: " + e);
            return -1;
        }
    }

    @Override
    public int getBloodOxygenLedState() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getBloodOxygenLedState();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getBloodOxygenLedState error: " + e);
            return 0;
        }
    }

    @Override
    public List<String> getCleanProtectList() {
        List<String> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getCleanProtectList$3();
            }
        }, "activity");
        TranSdkLog.i(TAG, "getCleanProtectList mLists:" + list);
        return list;
    }

    @Override
    public Configuration getConfigurationExt(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.getConfigurationExt(runningTaskInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getConfigurationExt:" + e);
            return null;
        }
    }

    @Override
    public String getCpuId(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.getCpuId(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getCpuId error: " + e);
            return null;
        }
    }

    @Override
    public int getCurrentUser() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getCurrentUser();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getCurrentUser fail :" + e);
            return 0;
        }
    }

    @Override
    public int getDisplayId(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getDisplayId(runningTaskInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getDisplayId fail :" + e);
            return 0;
        }
    }

    @Override
    public Bundle getJavaProcessRss() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.getJavaProcessRss();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getJavaProcessRss error: " + e);
            return null;
        }
    }

    @Override
    public long[] getKernelMemInfo() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.getKernelMemInfo();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getKernelMemInfo error: " + e);
            return null;
        }
    }

    @Override
    public String getLaunchedFromPackage(IBinder iBinder) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.getLaunchedFromPackage(iBinder);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getLaunchedFromPackage fail :" + e);
            return null;
        }
    }

    @Override
    public int getLaunchedFromUid(IBinder iBinder) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getLaunchedFromUid(iBinder);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getLaunchedFromUid fail :" + e);
            return 0;
        }
    }

    @Override
    public List<Bundle> getLightEffectInfos(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                return iTranActivityManager.getLightEffectInfos(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getLightEffectInfos error: ", e);
            }
        }
        return Collections.emptyList();
    }

    @Override
    public Bundle getLightStyleDataBundle(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                return iTranActivityManager.getLightStyleDataBundle(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getLightStyleDataBundle error: ", e);
            }
        }
        return new Bundle();
    }

    @Override
    public int[] getLightStyleIdArray(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                return iTranActivityManager.getLightStyleIdArray(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getLightStyleIdArray error: ", e);
            }
        }
        return new int[0];
    }

    @Override
    public int[] getLightStyleIdData(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                return iTranActivityManager.getLightStyleIdData(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getLightStyleIdData error: ", e);
            }
        }
        return new int[0];
    }

    @Override
    public Locale getLocale() {
        Locale locale = (Locale) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getLocale$7();
            }
        }, "activity");
        TranSdkLog.e(TAG, "getLocale");
        return locale;
    }

    @Override
    public int getLockTaskModeState() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getLockTaskModeState();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getLockTaskModeState fail :" + e);
            return 0;
        }
    }

    @Override
    public List<String> getMEMCList(final String str) {
        List<String> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getMEMCList$19(str);
            }
        }, "activity");
        TranSdkLog.d(TAG, "getMEMCList");
        return list;
    }

    @Override
    @Deprecated
    public int getMemoryForMF(String str) {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getMemoryForMF$29();
            }
        }, "activity")).intValue();
        TranSdkLog.d(TAG, "getMemoryForMF");
        return iIntValue;
    }

    @Override
    public Bundle getNativeProcessRss() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.getNativeProcessRss();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNativeProcessRss error: " + e);
            return null;
        }
    }

    @Override
    public ComponentName getRealActivity(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return null;
        }
        try {
            return iTranActivityManager.getRealActivity(runningTaskInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getRealActivity fail :" + e);
            return null;
        }
    }

    @Override
    @Deprecated
    public List<String> getSwapFileSizeList() {
        List<String> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getSwapFileSizeList$23();
            }
        }, "activity");
        TranSdkLog.d(TAG, "getSwapFileSizeList");
        return list;
    }

    @Override
    public int getTargetFps(final String str, final String str2) {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getTargetFps$20(str, str2);
            }
        }, "activity")).intValue();
        TranSdkLog.d(TAG, "getTargetFps");
        return iIntValue;
    }

    @Override
    public ActivityInfo getTopActivityInfo() {
        ActivityInfo activityInfo = (ActivityInfo) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getTopActivityInfo$0();
            }
        }, "activity");
        TranSdkLog.i(TAG, "getTopActivityInfo mActivityInfo:" + activityInfo);
        return activityInfo;
    }

    @Override
    public int getTopActivityType(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getTopActivityType(runningTaskInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTopActivityType fail :" + e);
            return 0;
        }
    }

    @Override
    public String getTranAppmSystemInfo(String str) {
        try {
            ITranActivityManager iTranActivityManager = this.mService;
            return iTranActivityManager != null ? iTranActivityManager.getTranAppmSystemInfo(str) : "unknown";
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTranAppmSystemInfo fail: " + e);
            return "unknown";
        }
    }

    @Override
    public List<String> getTranGameList(final int i) {
        List<String> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getTranGameList$18(i);
            }
        }, "activity");
        TranSdkLog.d(TAG, "getTranGameList");
        return list;
    }

    @Override
    public int getUserId(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getUserId(runningTaskInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getUserId fail :" + e);
            return 0;
        }
    }

    @Override
    public int getWindowingMode(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return 0;
        }
        try {
            return iTranActivityManager.getWindowingMode(runningTaskInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getWindowingMode:" + e);
            return 0;
        }
    }

    @Override
    public void hookDisturbStatus(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return;
        }
        try {
            iTranActivityManager.hookDisturbStatus(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookDisturbStatus:" + e);
        }
    }

    @Override
    public boolean ignoreCPUAndMemoryPressureForPreload() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.ignoreCPUAndMemoryPressureForPreload();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "ignoreCPUAndMemoryPressureForPreload error: " + e);
            return false;
        }
    }

    @Override
    public boolean inMultiWindowMode(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.inMultiWindowMode(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "inMultiWindowMode:" + e);
            return false;
        }
    }

    @Override
    public boolean isEnabledHiber() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isEnabledHiber$9();
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "isEnabledHiber");
        return zBooleanValue;
    }

    @Override
    public boolean isGameGuardSupport() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isGameGuardSupport$31();
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "isGameGuardSupport");
        return zBooleanValue;
    }

    @Override
    public boolean isInGameGuardProtectedList(final String str) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isInGameGuardProtectedList$30(str);
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "isInGameGuardProtectedList");
        return zBooleanValue;
    }

    @Override
    public boolean isInLockTaskMode() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.isInLockTaskMode();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isInLockTaskMode fail:" + e);
            return false;
        }
    }

    @Override
    public boolean isLowRamDeviceStatic() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isLowRamDeviceStatic$2();
            }
        }, "activity")).booleanValue();
        TranSdkLog.i(TAG, "isLowRamDeviceStatic result:" + zBooleanValue);
        return zBooleanValue;
    }

    @Override
    @Deprecated
    public boolean isMatchCurMemSelection() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isMatchCurMemSelection$22();
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "isMatchCurMemSelection");
        return zBooleanValue;
    }

    @Override
    @Deprecated
    public boolean isMemSettingEnterEnabled() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isMemSettingEnterEnabled$21();
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "isMemSettingEnterEnabled");
        return zBooleanValue;
    }

    @Override
    @Deprecated
    public int isMemoryEnoughToMF(String str) {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isMemoryEnoughToMF$26();
            }
        }, "activity")).intValue();
        TranSdkLog.d(TAG, "isMemoryEnoughToMF");
        return iIntValue;
    }

    @Override
    public boolean isRequestChangeParams(String str, String str2) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.isRequestChangeParams(str, str2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isRequestChangeParams:" + e);
            return false;
        }
    }

    @Override
    public boolean isUserRunning(int i, int i2) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.isUserRunning(i, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isUserRunning error: " + e);
            return false;
        }
    }

    @Override
    @Deprecated
    public boolean isUxCompactionSupport() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isUxCompactionSupport$24();
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "isUxCompactionSupport");
        return zBooleanValue;
    }

    @Override
    public boolean isVisible(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.isVisible(runningTaskInfo);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isVisible fail :" + e);
            return false;
        }
    }

    @Override
    public boolean isWhiteApp(final String str) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isWhiteApp$13(str);
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "isWhiteApp");
        return zBooleanValue;
    }

    @Override
    public void notifyInterceptUnknowSource(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$notifyInterceptUnknowSource$16(z);
            }
        }, "activity");
        TranSdkLog.d(TAG, "notifyInterceptUnknowSource");
    }

    @Override
    public boolean registerActivityStartObserver(String[] strArr, TranActivityManager.TranActivityStartObserver tranActivityStartObserver) {
        TranThubActivityStartObserver tranThubActivityStartObserverComputeIfAbsent;
        if (this.mService != null && (tranThubActivityStartObserverComputeIfAbsent = this.mActivityStartObserverMap.computeIfAbsent(tranActivityStartObserver, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.lambda$registerActivityStartObserver$35((TranActivityManager.TranActivityStartObserver) obj);
            }
        })) != null) {
            try {
                return this.mService.registerActivityStartObserver(strArr, tranThubActivityStartObserverComputeIfAbsent);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "registerActivityStartObserver error: " + e);
            }
        }
        return false;
    }

    @Override
    public void registerAppRecoveryCallback(TranActivityManager.ITranAppRecoveryCallback iTranAppRecoveryCallback, IBinder iBinder) {
        if (this.mService != null) {
            try {
                this.mService.registerAppRecoveryCallback(new TranAppRecoveryCallback(iTranAppRecoveryCallback, iBinder), iBinder);
            } catch (RemoteException unused) {
                TranSdkLog.e(TAG, "registerAppRecoveryCallback error");
            }
        }
    }

    @Override
    public boolean registerAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener) {
        if (iTranAudioVolumeListener != null && this.mService != null) {
            try {
                return this.mService.registerAudioVolumeListener(this.mAudioVolumeListenerMap.computeIfAbsent(iTranAudioVolumeListener, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.a.lambda$registerAudioVolumeListener$36((ITranAudioVolumeListener) obj);
                    }
                }));
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "registerAudioVolumeListener error: " + e);
            }
        }
        return false;
    }

    @Override
    public void registerBloodOxygenLedStateListener(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) {
        TranThubBloodOxygenLedStateCallback tranThubBloodOxygenLedStateCallbackComputeIfAbsent = this.mBloodOxygenMap.computeIfAbsent(iTranBloodOxygenLedStateCallback, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.lambda$registerBloodOxygenLedStateListener$34((TranActivityManager.ITranBloodOxygenLedStateCallback) obj);
            }
        });
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.registerBloodOxygenLedStateListener(tranThubBloodOxygenLedStateCallbackComputeIfAbsent);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "registerBloodOxygenLedStateListener error: ", e);
            }
        }
    }

    @Override
    public void registerProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner) {
        if (this.mService == null) {
            return;
        }
        TranThubProcessObserver tranThubProcessObserver = new TranThubProcessObserver(iTranProcessObserverInner);
        this.mListenerMap.put(iTranProcessObserverInner, tranThubProcessObserver);
        try {
            this.mService.registerProcessObserver(tranThubProcessObserver);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void registerTaskStackListener(TranTaskStackListener tranTaskStackListener) {
        if (this.mService == null || tranTaskStackListener == null) {
            return;
        }
        try {
            TranThubTaskStackListener tranThubTaskStackListener = new TranThubTaskStackListener(tranTaskStackListener);
            this.mTaskStackListenerMaps.put(tranTaskStackListener, tranThubTaskStackListener);
            this.mService.registerTaskStackListener(tranThubTaskStackListener);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerTaskStackListener:" + e);
        }
    }

    @Override
    public void registerTranNecessityServices(com.transsion.hubsdk.api.app.ITranNecessityWindowService iTranNecessityWindowService) {
        if (this.mService == null || iTranNecessityWindowService == null) {
            return;
        }
        try {
            this.mService.registerTranNecessityServices(new TranThubNecessityServiceCallback(iTranNecessityWindowService));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerTranNecessityServices e:" + e);
        }
    }

    @Override
    public void registerUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver, String str) {
        if (this.mService == null) {
            return;
        }
        if (this.mUserSwitchListenerMap.size() > 30) {
            TranSdkLog.e(TAG, "registerUserSwitchObserver mUserSwitchListenerMap.size() is " + this.mUserSwitchListenerMap.size());
        }
        if (tranUserSwitchObserver != null) {
            try {
                TranThubUserSwitchObserver tranThubUserSwitchObserver = new TranThubUserSwitchObserver(tranUserSwitchObserver);
                this.mUserSwitchListenerMap.put(tranUserSwitchObserver, tranThubUserSwitchObserver);
                this.mService.registerUserSwitchObserver(tranThubUserSwitchObserver, str);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "registerUserSwitchObserver:" + e);
            }
        }
    }

    @Override
    public void reportAbnormalApp(Bundle bundle, String str, String str2) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.reportAbnormalApp(bundle, str, str2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "reportAbnormalApp error: " + e);
            }
        }
    }

    @Override
    public boolean resetAllTest() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.resetAllTest();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "resetAllTest error: " + e);
            return false;
        }
    }

    @Override
    public void resumeAppSwitches() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.resumeAppSwitches();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "resumeAppSwitches error: " + e);
            }
        }
    }

    @Override
    public boolean sendMallocDebugSignal(String str, String str2) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.sendMallocDebugSignal(str, str2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "sendMallocDebugSignal error: " + e);
            return false;
        }
    }

    @Override
    public boolean setAppForFixAdj(int i, String str, String str2) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setAppForFixAdj(i, str, str2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setAppForFixAdj error: " + e);
            return false;
        }
    }

    @Override
    public boolean setAppIdleForLimit(String str, int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setAppIdleForLimit(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setAppIdleForLimit error: " + e);
            return false;
        }
    }

    @Override
    public List<String> setAppInCgroup(int i, String str, boolean z) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                return iTranActivityManager.setAppInCgroup(i, str, z).getList();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setMemoryPresureLevel error: " + e);
            }
        }
        return Collections.emptyList();
    }

    @Override
    public void setAppMode(final int i, final int i2) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setAppMode$11(i, i2);
            }
        }, "activity");
        TranSdkLog.d(TAG, "setAppMode");
    }

    @Override
    public void setAudioPatch(String str) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.setAudioPatch(str);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setAudioPatch error: " + e);
            }
        }
    }

    @Override
    public void setBlackListToSystem(final List<String> list) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setBlackListToSystem$14(list);
            }
        }, "activity");
        TranSdkLog.d(TAG, "setBlackListToSystem");
    }

    @Override
    public boolean setCleanProtect(final String str, final boolean z) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setCleanProtect$4(str, z);
            }
        }, "activity")).booleanValue();
        TranSdkLog.i(TAG, "setCleanProtect result:" + zBooleanValue);
        return zBooleanValue;
    }

    @Override
    public boolean setCpuPresureLevel(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setCpuPresureLevel(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setCpuPresureLevel error: " + e);
            return false;
        }
    }

    @Override
    public boolean setCpuSystemSence(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setCpuSystemSence(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setCpuSystemSence error: " + e);
            return false;
        }
    }

    @Override
    public boolean setCpuUsagePercentForKill(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setCpuUsagePercentForKill(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setCpuUsagePercentForKill error: " + e);
            return false;
        }
    }

    @Override
    public void setCurrentActivityKeepAwake() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return;
        }
        try {
            iTranActivityManager.setCurrentActivityKeepAwake();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setCurrentActivityKeepAwake fail:" + e);
        }
    }

    @Override
    public boolean setETControl(String str, boolean z) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setETControl(str, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setETControl:" + e);
            return false;
        }
    }

    @Override
    public boolean setGameParam(final String str, final String str2, final String str3) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setGameParam$17(str, str2, str3);
            }
        }, "activity")).booleanValue();
        TranSdkLog.d(TAG, "setGameParam");
        return zBooleanValue;
    }

    @Override
    public void setLedMusicPlay(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setLedMusicPlay$8(z);
            }
        }, "activity");
        TranSdkLog.e(TAG, "setLedMusicPlay");
    }

    @Override
    public void setLightingEffect(int[] iArr) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.setLightingEffect(iArr);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setLightingEffect error: ", e);
            }
        }
    }

    @Override
    public void setLightingScene(int i, int[] iArr, Bundle bundle) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.setLightingScene(i, iArr, bundle);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setLightingScene error: ", e);
            }
        }
    }

    @Override
    public boolean setMemSystemSence(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setMemSystemSence(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMemSystemSence error: " + e);
            return false;
        }
    }

    @Override
    public boolean setMemoryPresureLevel(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setMemoryPresureLevel(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMemoryPresureLevel error: " + e);
            return false;
        }
    }

    @VisibleForTesting
    public void setService(ITranActivityManager iTranActivityManager) {
        this.mService = iTranActivityManager;
    }

    @Override
    public boolean setTestMode(boolean z) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.setTestMode(z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setTestMode error: " + e);
            return false;
        }
    }

    @Override
    public boolean startProfile(UserHandle userHandle) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.startProfile(userHandle);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "startProfile fail:" + e);
            return false;
        }
    }

    @Override
    public void startTNE(String str, long j, int i, String str2) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.startTNE(str, j, i, str2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "startTNE fail:" + e);
            }
        }
    }

    @Override
    public boolean startUserInBackground(final int i) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$startUserInBackground$1(i);
            }
        }, "activity")).booleanValue();
        TranSdkLog.i(TAG, "startUserInBackground result:" + zBooleanValue);
        return zBooleanValue;
    }

    @Override
    public void stopAppForUser(String str, int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.stopAppForUser(str, i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "stopAppForUser error: " + e);
            }
        }
    }

    @Override
    public boolean swipeUpClean(String str, int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.swipeUpClean(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "swipeUpClean error: " + e);
            return false;
        }
    }

    @Override
    @Deprecated
    public void switchMemFusion(boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$switchMemFusion$28();
            }
        }, "window");
    }

    @Override
    @Deprecated
    public void switchUXCompaction(boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$switchUXCompaction$25();
            }
        }, "window");
    }

    @Override
    public void toggleFreeformWindowingMode(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return;
        }
        try {
            iTranActivityManager.toggleFreeformWindowingMode(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "toggleFreeformWindowingMode:" + e);
        }
    }

    @Override
    public boolean triggerCpuKillAppForLimit(String str, String str2, int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerCpuKillAppForLimit(str, str2, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerCpuKillAppForLimit error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerHealthBlockAppForLimit(String str, int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerHealthBlockAppForLimit(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerHealthBlockAppForLimit error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMPSKByMemAvailable(long j) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMPSKByMemAvailable(j);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMPSKByMemAvailable error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMPSKByMemAvailableExt(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMPSKByMemAvailableExt(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMPSKByMemAvailable with int error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMPSKByMemFree(long j) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMPSKByMemFree(j);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMPSKByMemFree error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMPSKByMemFreeExt(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMPSKByMemFreeExt(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMPSKByMemFree with int error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMPSKBySwapFree(long j) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMPSKBySwapFree(j);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMPSKBySwapFree error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMPSKBySwapFreeExt(int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMPSKBySwapFreeExt(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMPSKBySwapFree with int error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMemPressureforSortKill() {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMemPressureforSortKill();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMemPressureforSortKill error: " + e);
            return false;
        }
    }

    @Override
    public boolean triggerMemoryLowKillAppForLimit(String str, String str2, int i) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.triggerMemoryLowKillAppForLimit(str, str2, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "triggerMemoryLowKillAppForLimit error: " + e);
            return false;
        }
    }

    @Override
    public void unRegisterAppRecoveryCallback(IBinder iBinder) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.unRegisterAppRecoveryCallback(iBinder);
            } catch (RemoteException unused) {
                TranSdkLog.e(TAG, "unRegisterAppRecoveryCallback error");
            }
        }
    }

    @Override
    public void unRegisterBloodOxygenLedStateListener(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                iTranActivityManager.unRegisterBloodOxygenLedStateListener(this.mBloodOxygenMap.getOrDefault(iTranBloodOxygenLedStateCallback, null));
                this.mBloodOxygenMap.remove(iTranBloodOxygenLedStateCallback);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unRegisterBloodOxygenLedStateListener error: ", e);
            }
        }
    }

    @Override
    public void unRegisterProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner) {
        if (this.mService == null) {
            return;
        }
        TranThubProcessObserver tranThubProcessObserver = this.mListenerMap.get(iTranProcessObserverInner);
        if (tranThubProcessObserver != null) {
            try {
                this.mService.unRegisterProcessObserver(tranThubProcessObserver);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListenerMap.remove(iTranProcessObserverInner);
    }

    @Override
    public void unregisterActivityStartObserver(TranActivityManager.TranActivityStartObserver tranActivityStartObserver) {
        TranThubActivityStartObserver tranThubActivityStartObserver;
        if (this.mService == null || (tranThubActivityStartObserver = this.mActivityStartObserverMap.get(tranActivityStartObserver)) == null) {
            return;
        }
        try {
            this.mService.unregisterActivityStartObserver(tranThubActivityStartObserver);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterActivityStartObserver error: " + e);
        }
    }

    @Override
    public boolean unregisterAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener) {
        TranAudioVolumeListener orDefault;
        if (iTranAudioVolumeListener == null || (orDefault = this.mAudioVolumeListenerMap.getOrDefault(iTranAudioVolumeListener, null)) == null) {
            return false;
        }
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager != null) {
            try {
                return iTranActivityManager.unregisterAudioVolumeListener(orDefault);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unregisterAudioVolumeListener error: " + e);
            }
        }
        this.mAudioVolumeListenerMap.remove(iTranAudioVolumeListener);
        return false;
    }

    @Override
    public void unregisterTaskStackListener(final TranTaskStackListener tranTaskStackListener) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$unregisterTaskStackListener$6(tranTaskStackListener);
            }
        }, "activity");
        TranSdkLog.i(TAG, "unregisterTaskStackListener listener:" + tranTaskStackListener);
    }

    @Override
    public void unregisterUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver) {
        if (this.mService == null) {
            return;
        }
        try {
            this.mService.unregisterUserSwitchObserver(this.mUserSwitchListenerMap.get(tranUserSwitchObserver));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerUserSwitchObserver:" + e);
        }
    }

    @Override
    public boolean doClean(boolean z, boolean z2, boolean z3, boolean z4, int[] iArr, String[] strArr, Bundle bundle) {
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.doOneKeyClean(z, z2, z3, z4, iArr, strArr, bundle);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "doClean error: " + e);
            return false;
        }
    }
}
