package com.transsion.hubsdk.core.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.SurfaceControl;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.app.ITranActivityController;
import com.transsion.hubsdk.api.app.TranActivityStarterExecutedObserver;
import com.transsion.hubsdk.api.app.TranActivityTaskManager;
import com.transsion.hubsdk.api.app.TranRootTaskInfo;
import com.transsion.hubsdk.api.window.TranTaskSnapshot;
import com.transsion.hubsdk.app.ITranActivityStarterExecutedCallback;
import com.transsion.hubsdk.app.ITranActivityTaskManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityTaskManagerAdapter;
import com.transsion.hubsdk.window.ITranWindowContainerTransactionCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

public class TranThubActivityTaskManager implements ITranActivityTaskManagerAdapter {
    private static final String TAG = "TranThubActivityTaskManager";
    private static final Map<TranActivityStarterExecutedObserver, TranActivityStarterExecutedCallback> mActivityStarterExecutedCallbackHashMap = new HashMap();
    private static final Object mActivityStarterExecutedCallbackLock = new Object();
    private ITranActivityController mController = null;
    private ITranActivityTaskManager mService = ITranActivityTaskManager.Stub.asInterface(TranServiceManager.getServiceIBinder("activity_task"));

    public class TranActivityControler extends com.transsion.hubsdk.app.ITranActivityController.Stub {
        public TranActivityControler() {
        }

        public boolean activityResuming(String str) throws RemoteException {
            if (TranThubActivityTaskManager.this.mController != null) {
                return TranThubActivityTaskManager.this.mController.activityResuming(str);
            }
            return false;
        }

        public boolean activityStarting(Intent intent, String str) throws RemoteException {
            if (TranThubActivityTaskManager.this.mController != null) {
                return TranThubActivityTaskManager.this.mController.activityStarting(intent, str);
            }
            return false;
        }

        public boolean appCrashed(String str, int i, String str2, String str3, long j, String str4) throws RemoteException {
            if (TranThubActivityTaskManager.this.mController != null) {
                return TranThubActivityTaskManager.this.mController.appCrashed(str, i, str2, str3, j, str4);
            }
            return false;
        }

        public int appEarlyNotResponding(String str, int i, String str2) throws RemoteException {
            if (TranThubActivityTaskManager.this.mController != null) {
                return TranThubActivityTaskManager.this.mController.appEarlyNotResponding(str, i, str2);
            }
            return 0;
        }

        public int appNotResponding(String str, int i, String str2) throws RemoteException {
            if (TranThubActivityTaskManager.this.mController != null) {
                return TranThubActivityTaskManager.this.mController.appNotResponding(str, i, str2);
            }
            return -1;
        }

        public int systemNotResponding(String str) throws RemoteException {
            if (TranThubActivityTaskManager.this.mController != null) {
                return TranThubActivityTaskManager.this.mController.systemNotResponding(str);
            }
            return -1;
        }
    }

    public class TranActivityStarterExecutedCallback extends ITranActivityStarterExecutedCallback.Stub {
        private final TranActivityStarterExecutedObserver mObserver;

        public void onActivityStarterExecuted(int i, Intent intent) throws RemoteException {
            TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver = this.mObserver;
            if (tranActivityStarterExecutedObserver != null) {
                tranActivityStarterExecutedObserver.onActivityStarterExecuted(i, intent);
            }
        }

        private TranActivityStarterExecutedCallback(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver) {
            this.mObserver = tranActivityStarterExecutedObserver;
        }
    }

    public class TranWindowContainerTransactionCallback extends ITranWindowContainerTransactionCallback.Stub {
        TranActivityTaskManager.TranWindowContainerTransactionCallback mWindowCallback;

        public TranWindowContainerTransactionCallback(TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
            this.mWindowCallback = tranWindowContainerTransactionCallback;
        }

        public void onTransactionReady(int i, SurfaceControl.Transaction transaction) {
            TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback = this.mWindowCallback;
            if (tranWindowContainerTransactionCallback != null) {
                tranWindowContainerTransactionCallback.onTransactionReady(i, transaction);
            }
        }
    }

    public Object lambda$checkAndUpdateEventStateForMulti$10(String str, boolean z, boolean z2, long j) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        return iTranActivityTaskManager != null ? Boolean.valueOf(iTranActivityTaskManager.checkAndUpdateEventStateForMulti(str, z, z2, j)) : Boolean.TRUE;
    }

    public Object lambda$getAllMultiWindowTaskInfo$9() throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager != null) {
            return iTranActivityTaskManager.getAllMultiWindowTaskInfo().getList();
        }
        return null;
    }

    public Object lambda$getAllRootTaskInfosOnDisplay$6(int i) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager != null) {
            return iTranActivityTaskManager.getAllRootTaskInfosOnDisplay(i);
        }
        return null;
    }

    public Object lambda$getMaxRecentTasksStatic$1() throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager != null) {
            return Integer.valueOf(iTranActivityTaskManager.getMaxRecentTasksStatic());
        }
        return 0;
    }

    public Object lambda$isSplitScreen$3() throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        return iTranActivityTaskManager != null ? Boolean.valueOf(iTranActivityTaskManager.isSplitScreen()) : Boolean.FALSE;
    }

    public Object lambda$notAllowKeyguardGoingAwayQuickly$8(boolean z) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        iTranActivityTaskManager.notAllowKeyguardGoingAwayQuickly(z);
        return null;
    }

    public TranActivityStarterExecutedCallback lambda$registerActivityStarterExecutedObserver$11(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver, TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver2) {
        return new TranActivityStarterExecutedCallback(tranActivityStarterExecutedObserver);
    }

    public Object lambda$removeRootTasksInWindowingModes$0(int[] iArr) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        iTranActivityTaskManager.removeRootTasksInWindowingModes(iArr);
        return null;
    }

    public Object lambda$reparentActivity$2(int i, int i2, boolean z) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        iTranActivityTaskManager.reparentActivity(i, i2, z);
        return null;
    }

    public Object lambda$setConnectBlackListToSystem$4(List list) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        iTranActivityTaskManager.setConnectBlackListToSystem(list);
        return null;
    }

    public Object lambda$takeTaskSnapshot$5(int i, boolean z) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager != null) {
            return iTranActivityTaskManager.takeTaskSnapshot(i, z);
        }
        return null;
    }

    public Object lambda$updateConfiguration$7(Configuration configuration) throws RemoteException {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        return iTranActivityTaskManager != null ? Boolean.valueOf(iTranActivityTaskManager.updateConfiguration(configuration)) : Boolean.FALSE;
    }

    @Override
    public boolean activityInMultiWindow(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.activityInMultiWindow(str);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "activityInMultiWindow fail " + e);
            return false;
        }
    }

    @Override
    public void addAnimationIconLayer(SurfaceControl surfaceControl) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.addAnimationIconLayer(surfaceControl);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "addAnimationIconLayer fail " + e);
        }
    }

    @Override
    public void addMultiExchangeListener(String str, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (this.mService == null) {
            return;
        }
        try {
            this.mService.addMultiExchangeListener(str, tranWindowContainerTransactionCallback != null ? new TranWindowContainerTransactionCallback(tranWindowContainerTransactionCallback) : null);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "addMultiExchangeListener fail " + e);
        }
    }

    @Override
    public void boostEndInLauncher(int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.boostEndInLauncher(i);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "boostEndInLauncher RemoteException: " + e);
        }
    }

    @Override
    public void boostIMEEnd(String str) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.boostIMEEnd(str);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "boostIMEEnd RemoteException: " + e);
        }
    }

    @Override
    public void boostIMEStart(int i, String str) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.boostIMEStart(i, str);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "boostIMEStart RemoteException: " + e);
        }
    }

    @Override
    public void boostInFling(int i, boolean z, int i2) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.boostInFling(i, z, i2);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "boostInFling RemoteException: " + e);
        }
    }

    @Override
    public void boostSceneEnd(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.boostSceneEnd(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "boostSceneEnd fail " + e);
        }
    }

    @Override
    public void boostSceneStart(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.boostSceneStart(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "boostSceneStart fail " + e);
        }
    }

    @Override
    public void boostStartInLauncher(int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.boostStartInLauncher(i);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "boostStartInLauncher RemoteException: " + e);
        }
    }

    @Override
    public boolean checkAndUpdateEventStateForMulti(final String str, final boolean z, final boolean z2, final long j) {
        return ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$checkAndUpdateEventStateForMulti$10(str, z, z2, j);
            }
        }, "activity_task")).booleanValue();
    }

    @Override
    public boolean checkTaskCanEnterMultiWin(int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.checkTaskCanEnterMultiWin(i);
            }
            return true;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "checkTaskCanEnterMultiWin RemoteException: " + e);
            return true;
        }
    }

    @Override
    public void clearFinishFixedRotationWithTransaction() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.clearFinishFixedRotationWithTransaction();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "clearFinishFixedRotationWithTransaction fail " + e);
        }
    }

    @Override
    public void clearMultiWindowExtendSize(int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.clearMultiWindowExtendSize(i);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "clearMultiWindowExtendSize RemoteException: " + e);
        }
    }

    @Override
    public List<String> getAllMultiWindowPackageInfo() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.getAllMultiWindowPackageInfo();
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getAllMultiWindowPackageInfo RemoteException: " + e);
        }
        return new ArrayList();
    }

    @Override
    public List<ActivityManager.RunningTaskInfo> getAllMultiWindowTaskInfo() {
        return (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getAllMultiWindowTaskInfo$9();
            }
        }, "activity_task");
    }

    @Override
    public List<TranRootTaskInfo> getAllRootTaskInfosOnDisplay(final int i) {
        List<com.transsion.hubsdk.app.TranRootTaskInfo> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getAllRootTaskInfosOnDisplay$6(i);
            }
        }, "activity_task");
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (com.transsion.hubsdk.app.TranRootTaskInfo tranRootTaskInfo : list) {
                TranRootTaskInfo tranRootTaskInfo2 = new TranRootTaskInfo();
                tranRootTaskInfo2.setTopActivity(tranRootTaskInfo.mTopActivity);
                tranRootTaskInfo2.setBounds(tranRootTaskInfo.mBounds);
                tranRootTaskInfo2.setChildTaskIds(tranRootTaskInfo.mChildTaskIds);
                tranRootTaskInfo2.setChildTaskNames(tranRootTaskInfo.mChildTaskNames);
                tranRootTaskInfo2.setChildTaskBounds(tranRootTaskInfo.mChildTaskBounds);
                tranRootTaskInfo2.setChildTaskUserIds(tranRootTaskInfo.mChildTaskUserIds);
                tranRootTaskInfo2.setVisible(tranRootTaskInfo.mVisible);
                tranRootTaskInfo2.setPosition(tranRootTaskInfo.mPosition);
                tranRootTaskInfo2.setWindowingMode(tranRootTaskInfo.mWindowingMode);
                tranRootTaskInfo2.setTaskId(tranRootTaskInfo.mTaskId);
                arrayList.add(tranRootTaskInfo2);
            }
        }
        return arrayList;
    }

    @Override
    public SurfaceControl getDefaultRootLeash() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getDefaultRootLeash();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getDefaultRootLeash fail " + e);
            return null;
        }
    }

    @Override
    public SurfaceControl getDragAndZoomBgLeash(int i, int i2, int i3, int i4, boolean z) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getDragAndZoomBgLeash(i, i2, i3, i4, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getDragAndZoomBgLeash fail " + e);
            return null;
        }
    }

    @Override
    public String getFocusedWinPkgName() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getFocusedWinPkgName();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getFocusedWinPkgName fail:" + e);
            return null;
        }
    }

    @Override
    public int getGivenPkgWindowMode(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return 0;
        }
        try {
            return iTranActivityTaskManager.getGivenPkgWindowMode(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int getGivenPkgWindowModeForCls(String str, String str2) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return 0;
        }
        try {
            return iTranActivityTaskManager.getGivenPkgWindowModeForCls(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public HardwareBuffer getHardwareBuffer(int i, boolean z) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getHardwareBuffer(i, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int getMaxRecentTasksStatic() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getMaxRecentTasksStatic$1();
            }
        }, "activity_task")).intValue();
        TranSdkLog.i(TAG, "getMaxRecentTasksStatic count :" + iIntValue);
        return iIntValue;
    }

    @Override
    public Bundle getMultiDisplayAreaAppInfo(int i, int i2) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.getMultiDisplayAreaAppInfo(i, i2);
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiDisplayAreaAppInfo RemoteException: " + e);
            return null;
        }
    }

    @Override
    public String getMultiDisplayAreaTopPackageV4(int i, int i2) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getMultiDisplayAreaTopPackageV4(i, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiDisplayAreaTopPackageV4 fail " + e);
            return null;
        }
    }

    @Override
    public ActivityManager.RunningTaskInfo getMultiWinTopTask(int i, int i2) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getMultiWinTopTask(i, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiWinTopTask fail " + e);
            return null;
        }
    }

    @Override
    public List<String> getMultiWindowBlackList() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getMultiWindowBlackList();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiWindowBlackList fail " + e);
            return null;
        }
    }

    @Override
    public Rect getMultiWindowDefaultRect() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.getMultiWindowDefaultRect();
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiWindowDefaultRect RemoteException: " + e);
            return null;
        }
    }

    @Override
    public Bundle getMultiWindowParams(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getMultiWindowParams(str);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiWindowParams:" + e);
            return null;
        }
    }

    @Override
    public Bundle getMultiWindowParamsByTaskId(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getMultiWindowParamsByTaskId(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiWindowParamsByTaskId:" + e);
            return null;
        }
    }

    @Override
    public String getMultiWindowVersion() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getMultiWindowVersion();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMultiWindowVersion fail " + e);
            return null;
        }
    }

    @Override
    public boolean getMuteStateV4(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.getMuteStateV4(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMuteStateV4 fail " + e);
            return false;
        }
    }

    @Override
    public boolean getNeedExit(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.getNeedExit(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<String> getNotifyMultiWindowBlackList() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.getNotifyMultiWindowBlackList();
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNotifyMultiWindowBlackList RemoteException: " + e);
        }
        return new ArrayList();
    }

    @Override
    public int getPackageUserId(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return 0;
        }
        try {
            return iTranActivityTaskManager.getPackageUserId(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public List<ActivityManager.RecentTaskInfo> getRecentTasks(int i, int i2, int i3) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getRecentTasks(i, i2, i3);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getRecentTasks fail:" + e);
            return null;
        }
    }

    @Override
    public TranRootTaskInfo getRootTaskInfoOnDisplay(int i, int i2, int i3) {
        com.transsion.hubsdk.app.TranRootTaskInfo rootTaskInfoOnDisplay;
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            rootTaskInfoOnDisplay = iTranActivityTaskManager.getRootTaskInfoOnDisplay(i, i2, i3);
        } catch (RemoteException e) {
            e.printStackTrace();
            rootTaskInfoOnDisplay = null;
        }
        if (rootTaskInfoOnDisplay == null) {
            return null;
        }
        TranRootTaskInfo tranRootTaskInfo = new TranRootTaskInfo();
        tranRootTaskInfo.setTopActivityString(rootTaskInfoOnDisplay.getTopActivityString());
        return tranRootTaskInfo;
    }

    @Override
    public int getStackInfoTaskId(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return 0;
        }
        try {
            return iTranActivityTaskManager.getStackInfoTaskId(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public Rect getTaskBounds(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getTaskBounds(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTaskBounds fail " + e);
            return null;
        }
    }

    @Override
    public int getTaskIdByPkg(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return 0;
        }
        try {
            return iTranActivityTaskManager.getTaskIdByPkg(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int getTaskIdByPkgName(String str, int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.getTaskIdByPkgName(str, i);
            }
            return -1;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTaskIdByPkgName RemoteException: " + e);
            return -1;
        }
    }

    @Override
    public int getTaskOrientation(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return 0;
        }
        try {
            return iTranActivityTaskManager.getTaskOrientation(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTaskOrientation fail " + e);
            return 0;
        }
    }

    @Override
    public List<ActivityManager.RunningTaskInfo> getTasks(int i, boolean z, boolean z2) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getTasks(i, z, z2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTasks fail " + e);
            return null;
        }
    }

    @Override
    public ComponentName getTopActivityComponent() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getTopActivityComponent();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTopActivityComponent fail:" + e);
            return null;
        }
    }

    @Override
    public Bundle getTopAppWindowInfo() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.getTopAppWindowInfo();
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTopAppWindowInfo fail:" + e);
            return null;
        }
    }

    @Override
    public ActivityManager.RunningTaskInfo getTopTask(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.getTopTask(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTopTask fail " + e);
            return null;
        }
    }

    @Override
    public boolean getVideoNotFullscreen(String str) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.getVideoNotFullscreen(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean hasMultiWindow() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.hasMultiWindow();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Rect hookGetMultiWindowDefaultRect(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return null;
        }
        try {
            return iTranActivityTaskManager.hookGetMultiWindowDefaultRect(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookGetMultiWindowDefaultRect fail " + e);
            return null;
        }
    }

    @Override
    public void hookMultiWindowToClose(int i, int i2) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.hookMultiWindowToClose(i, i2);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookMultiWindowToClose RemoteException: " + e);
        }
    }

    @Override
    public void hookMultiWindowToExchange(int i, int i2) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.hookMultiWindowToExchange(i, i2);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookMultiWindowToExchange RemoteException: " + e);
        }
    }

    @Override
    public void hookMultiWindowVisible() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.hookMultiWindowVisible();
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookMultiWindowVisible RemoteException: " + e);
        }
    }

    @Override
    public void hookMultiWindowVisibleWithCallback(TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (this.mService == null) {
            return;
        }
        try {
            this.mService.hookMultiWindowVisibleWithCallback(tranWindowContainerTransactionCallback != null ? new TranWindowContainerTransactionCallback(tranWindowContainerTransactionCallback) : null);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookMultiWindowVisibleWithCallback fail " + e);
        }
    }

    @Override
    public void hookReparentToDefaultDisplay(int i, int i2) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.hookReparentToDefaultDisplay(i, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookReparentToDefaultDisplay fail " + e);
        }
    }

    @Override
    public void hookSetMultiWindowDefaultRectResult(Rect rect) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.hookSetMultiWindowDefaultRectResult(rect);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookSetMultiWindowDefaultRectResult fail " + e);
        }
    }

    @Override
    public void hookShowBlurLayer(SurfaceControl surfaceControl, String str) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.hookShowBlurLayer(surfaceControl, str);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookShowBlurLayer RemoteException: " + e);
        }
    }

    @Override
    public void hookShowBlurLayerFinish() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.hookShowBlurLayerFinish();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookShowBlurLayerFinish fail " + e);
        }
    }

    @Override
    public void hookStartActivityResult(int i, Rect rect) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.hookStartActivityResult(i, rect);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookStartActivityResult fail " + e);
        }
    }

    @Override
    public void hookStartMultiWindow(int i, Rect rect, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (this.mService == null) {
            return;
        }
        try {
            this.mService.hookStartMultiWindow(i, rect, tranWindowContainerTransactionCallback != null ? new TranWindowContainerTransactionCallback(tranWindowContainerTransactionCallback) : null);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookStartMultiWindow fail " + e);
        }
    }

    @Override
    public void hookStartMultiWindowAndMakeOwnAnimation(int i, int i2, int i3, Rect rect, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (this.mService == null) {
            return;
        }
        try {
            this.mService.hookStartMultiWindowAndMakeOwnAnimation(i, i2, i3, rect, tranWindowContainerTransactionCallback != null ? new TranWindowContainerTransactionCallback(tranWindowContainerTransactionCallback) : null);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookStartMultiWindowAndMakeOwnAnimation fail " + e);
        }
    }

    @Override
    public Bundle hookToMultiWindow(String str, Bundle bundle) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.hookToMultiWindow(str, bundle);
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hookToMultiWindow RemoteException: " + e);
            return null;
        }
    }

    @Override
    public boolean inMultiWindowMode() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.inMultiWindowMode();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "inMultiWindowMode fail:" + e);
            return false;
        }
    }

    @Override
    public boolean isCanEnterMultiWin(ComponentName componentName) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.isCanEnterMultiWin(componentName);
            }
            return true;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isCanEnterMultiWin RemoteException: " + e);
            return true;
        }
    }

    @Override
    public boolean isHasMultiWindow() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.isHasMultiWindow();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean isIMEShowing() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.isIMEShowing();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isIMEShowing fail:" + e);
            return false;
        }
    }

    @Override
    public boolean isKeyguardLocking() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.isKeyguardLocking();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isKeyguardLocking fail " + e);
            return false;
        }
    }

    @Override
    public boolean isPCSourceDisplay(int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.isPCSourceDisplay(i);
            }
            return false;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "isPCSourceDisplay RemoteException: " + e);
            return false;
        }
    }

    @Override
    public boolean isPinnedMode() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.isPinnedMode();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isPinnedMode fail " + e);
            return false;
        }
    }

    @Override
    public boolean isResizableActivity() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                return iTranActivityTaskManager.isResizableActivity();
            }
            return false;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "isResizableActivity RemoteException: " + e);
            return false;
        }
    }

    @Override
    public boolean isSecureWindow() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.isSecureWindow();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isSecureWindow fail " + e);
            return false;
        }
    }

    @Override
    public boolean isSplitScreen() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isSplitScreen$3();
            }
        }, "activity_task")).booleanValue();
        TranSdkLog.i(TAG, "isSplitScreen :" + zBooleanValue);
        return zBooleanValue;
    }

    @Override
    public boolean isSupportMultiWindow() {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.isSupportMultiWindow();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isSupportMultiWindow fail " + e);
            return false;
        }
    }

    @Override
    public boolean isTheMainScreen(String str, String str2) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.isTheMainScreen(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public void notAllowKeyguardGoingAwayQuickly(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$notAllowKeyguardGoingAwayQuickly$8(z);
            }
        }, "activity_task");
    }

    @Override
    public void notifyAuthenticateSucceed(boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.notifyAuthenticateSucceed(z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "notifyAuthenticateSucceed RemoteException: " + e);
        }
    }

    @Override
    public void notifyKeyguardGoingAwayQuickly(boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.notifyKeyguardGoingAwayQuickly(z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "notifyKeyguardGoingAwayQuickly RemoteException: " + e);
        }
    }

    @Override
    public void notifyLauncherPageTurning(boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.notifyLauncherPageTurning(z);
            }
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "notifyLauncherPageTurning RemoteException");
        }
    }

    @Override
    public void pauseTaskTopActivity(int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.pauseTaskTopActivity(i);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "pauseTaskTopActivity RemoteException: " + e);
        }
    }

    @Override
    public boolean registerActivityStarterExecutedObserver(final TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver, IntentFilter intentFilter) {
        if (this.mService == null) {
            return false;
        }
        if (tranActivityStarterExecutedObserver == null || intentFilter == null) {
            Log.e(TAG, "registerActivityStarterExecutedObserver observer or intentfilter is null");
            return false;
        }
        try {
            synchronized (mActivityStarterExecutedCallbackLock) {
                try {
                    Map<TranActivityStarterExecutedObserver, TranActivityStarterExecutedCallback> map = mActivityStarterExecutedCallbackHashMap;
                    TranActivityStarterExecutedCallback tranActivityStarterExecutedCallbackComputeIfAbsent = map.computeIfAbsent(tranActivityStarterExecutedObserver, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return this.a.lambda$registerActivityStarterExecutedObserver$11(tranActivityStarterExecutedObserver, (TranActivityStarterExecutedObserver) obj);
                        }
                    });
                    if (!this.mService.registerActivityStarterExecutedListener(tranActivityStarterExecutedCallbackComputeIfAbsent, intentFilter)) {
                        return false;
                    }
                    map.put(tranActivityStarterExecutedObserver, tranActivityStarterExecutedCallbackComputeIfAbsent);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void registerMultiWindowWmShellListener(IBinder iBinder) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.registerMultiWindowWmShellListener(iBinder);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerMultiWindowWmShellListener RemoteException: " + e);
        }
    }

    @Override
    public void removeAnimationIconLayer(SurfaceControl surfaceControl) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.removeAnimationIconLayer(surfaceControl);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "removeAnimationIconLayer fail " + e);
        }
    }

    @Override
    public void removeRootTasksInWindowingModes(final int[] iArr) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$removeRootTasksInWindowingModes$0(iArr);
            }
        }, "activity_task");
        TranSdkLog.i(TAG, "removeRootTasksInWindowingModes!");
    }

    @Override
    public boolean removeTask(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.removeTask(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "removeTask fail:" + e);
            return false;
        }
    }

    @Override
    public void removeTaskPC(int i, int i2) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.removeTaskPC(i, i2);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "removeTaskPC RemoteException: " + e);
        }
    }

    @Override
    public void reparentActivity(final int i, final int i2, final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$reparentActivity$2(i, i2, z);
            }
        }, "activity_task");
        TranSdkLog.i(TAG, "reparentActivity");
    }

    @Override
    public void reparentTaskToDefaultTDA() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.reparentTaskToDefaultTDA();
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "reparentTaskToDefaultTDA RemoteException: " + e);
        }
    }

    @Override
    public void requestHideDock() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.requestHideDock();
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "requestHideDock RemoteException: " + e);
        }
    }

    @Override
    public void requestShowDock() {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.requestShowDock();
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "requestShowDock RemoteException: " + e);
        }
    }

    @Override
    public void setActivityController(ITranActivityController iTranActivityController, boolean z) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            this.mController = iTranActivityController;
            if (iTranActivityController == null) {
                iTranActivityTaskManager.setActivityController((com.transsion.hubsdk.app.ITranActivityController) null, z);
            } else {
                this.mService.setActivityController(new TranActivityControler(), z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setActivityController fail " + e);
        }
    }

    @Override
    public void setBoostSceneState(int i, String str, boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.setBoostSceneState(i, str, z);
            }
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "setBoostSceneState RemoteException");
        }
    }

    @Override
    public void setConnectBlackListToSystem(final List<String> list) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setConnectBlackListToSystem$4(list);
            }
        }, "activity_task");
        TranSdkLog.i(TAG, "setConnectBlackListToSystem");
    }

    @Override
    public void setFinishFixedRotationWithTransaction(SurfaceControl surfaceControl, float[] fArr, float[] fArr2, int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setFinishFixedRotationWithTransaction(surfaceControl, fArr, fArr2, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setFinishFixedRotationWithTransaction fail " + e);
        }
    }

    @Override
    public void setFlingState(boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.setFlingState(z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setFlingState RemoteException: " + e);
        }
    }

    @Override
    public void setJankScenarioState(int i, String str, boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.setJankScenarioState(i, str, z);
            }
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "setJankScenarioState RemoteException");
        }
    }

    @Override
    public void setMultiEnableStateForOOBE(boolean z, Bundle bundle) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.setMultiEnableStateForOOBE(z, bundle);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMultiEnableStateForOOBE RemoteException: " + e);
        }
    }

    @Override
    public void setMultiWindowAcquireFocus(int i, boolean z) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setMultiWindowAcquireFocus(i, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMultiWindowAcquireFocus fail " + e);
        }
    }

    @Override
    public void setMultiWindowBlackListToSystem(List<String> list) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setMultiWindowBlackListToSystem(list);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMultiWindowBlackListToSystem fail " + e);
        }
    }

    @Override
    public void setMultiWindowConfigToSystem(String str, List<String> list) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setMultiWindowConfigToSystem(str, list);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMultiWindowConfigToSystem fail " + e);
        }
    }

    @Override
    public void setMultiWindowExtendSize(int i, int i2) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.setMultiWindowExtendSize(i, i2);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMultiWindowExtendSize RemoteException: " + e);
        }
    }

    @Override
    public void setMultiWindowParams(Bundle bundle) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setMultiWindowParams(bundle);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMultiWindowParams fail:" + e);
        }
    }

    @Override
    public void setMultiWindowWhiteListToSystem(List<String> list) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setMultiWindowWhiteListToSystem(list);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMultiWindowWhiteListToSystem fail " + e);
        }
    }

    @Override
    public void setMuteStateV4(boolean z, int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setMuteStateV4(z, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMuteStateV4 fail " + e);
        }
    }

    @VisibleForTesting
    public void setService(ITranActivityTaskManager iTranActivityTaskManager) {
        this.mService = iTranActivityTaskManager;
    }

    @Override
    public void setStartInMultiWindow(String str, int i, int i2, int i3) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setStartInMultiWindow(str, i, i2, i3);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setStartInMultiWindow fail " + e);
        }
    }

    @Override
    public void setStartInMultiWindowAsUser(String str, int i, int i2, int i3, int i4) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setStartInMultiWindowAsUser(str, i, i2, i3, i4);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setStartInMultiWindowAsUser fail " + e);
        }
    }

    @Override
    public void setStartInMultiWindowWithBundle(Bundle bundle, int i, int i2, int i3, int i4) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.setStartInMultiWindowWithBundle(bundle, i, i2, i3, i4);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setStartInMultiWindowWithBundle RemoteException: " + e);
        }
    }

    @Override
    public void setTbSpecialLayerState(boolean z, int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.setTbSpecialLayerState(z, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setTbSpecialLayerState fail " + e);
        }
    }

    @Override
    public void setThunderbackAnimating(boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.setThunderbackAnimating(z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setThunderbackAnimating RemoteException: " + e);
        }
    }

    @Override
    public void startCurrentAppInMultiWindow(boolean z, int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.startCurrentAppInMultiWindow(z, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "startCurrentAppInMultiWindow fail " + e);
        }
    }

    @Override
    public void startLauncherAction(Intent intent, int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.startLauncherAction(intent, i);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "startLauncherAction RemoteException: " + e);
        }
    }

    @Override
    public void stopTask(int i) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.stopTask(i);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "stopTask RemoteException: " + e);
        }
    }

    @Override
    public void stopTaskPC(int i, int i2) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.stopTaskPC(i, i2);
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "stopTaskPC RemoteException: " + e);
        }
    }

    @Override
    public TranTaskSnapshot takeTaskSnapshot(final int i, final boolean z) {
        TranTaskSnapshot tranTaskSnapshot = new TranTaskSnapshot();
        com.transsion.hubsdk.window.TranTaskSnapshot tranTaskSnapshot2 = (com.transsion.hubsdk.window.TranTaskSnapshot) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$takeTaskSnapshot$5(i, z);
            }
        }, "activity_task");
        if (tranTaskSnapshot2 == null) {
            TranSdkLog.w(TAG, "TranTaskSnapshot is null");
            return null;
        }
        tranTaskSnapshot.mSnapshot = tranTaskSnapshot2.getHardwareBuffer();
        tranTaskSnapshot.mColorSpace = tranTaskSnapshot2.getColorSpace();
        TranSdkLog.i(TAG, "takeTaskSnapshot mTranTaskSnapshot:" + tranTaskSnapshot);
        return tranTaskSnapshot;
    }

    @Override
    public boolean taskInMultiWindowById(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return false;
        }
        try {
            return iTranActivityTaskManager.taskInMultiWindowById(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "taskInMultiWindowById fail " + e);
            return false;
        }
    }

    @Override
    public boolean unRegisterActivityStarterExecutedObserver(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver) {
        if (this.mService == null) {
            return false;
        }
        if (tranActivityStarterExecutedObserver == null) {
            Log.e(TAG, "unRegisterActivityStarterExecutedObserver observer is null");
            return false;
        }
        try {
            synchronized (mActivityStarterExecutedCallbackLock) {
                try {
                    Map<TranActivityStarterExecutedObserver, TranActivityStarterExecutedCallback> map = mActivityStarterExecutedCallbackHashMap;
                    TranActivityStarterExecutedCallback tranActivityStarterExecutedCallback = map.get(tranActivityStarterExecutedObserver);
                    if (tranActivityStarterExecutedCallback == null) {
                        Log.e(TAG, "unRegisterActivityStarterExecutedObserver: callback not found");
                        return false;
                    }
                    if (this.mService.unRegisterActivityStarterExecutedListener(tranActivityStarterExecutedCallback)) {
                        map.remove(tranActivityStarterExecutedObserver);
                        return true;
                    }
                    Log.i(TAG, "unRegisterActivityStarterExecutedObserver: unregister failed");
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean updateConfiguration(final Configuration configuration) {
        return ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$updateConfiguration$7(configuration);
            }
        }, "activity_task")).booleanValue();
    }

    @Override
    public void updateMediaMapForDynamicIsland(String str, boolean z) {
        try {
            ITranActivityTaskManager iTranActivityTaskManager = this.mService;
            if (iTranActivityTaskManager != null) {
                iTranActivityTaskManager.updateMediaMapForDynamicIsland(str, z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "updateMediaMapForDynamicIsland fail:" + e);
        }
    }

    @Override
    public void updateZBoostTaskIdWhenToSplit(int i) {
        ITranActivityTaskManager iTranActivityTaskManager = this.mService;
        if (iTranActivityTaskManager == null) {
            return;
        }
        try {
            iTranActivityTaskManager.updateZBoostTaskIdWhenToSplit(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "updateZBoostTaskIdWhenToSplit fail " + e);
        }
    }
}
