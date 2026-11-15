package com.transsion.hubsdk.api.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.SurfaceControl;
import com.transsion.hubsdk.aosp.app.TranAospActivityTaskManager;
import com.transsion.hubsdk.api.window.TranTaskSnapshot;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActivityTaskManager;
import com.transsion.hubsdk.interfaces.app.ITranActivityTaskManagerAdapter;
import java.util.List;

public class TranActivityTaskManager {
    public static final int BOOST_SCENE_4 = 4;
    private static final String TAG = "TranActivityTaskManager";
    private TranAospActivityTaskManager mAospService;
    private TranThubActivityTaskManager mThubService;

    public interface TranWindowContainerTransactionCallback {
        void onTransactionReady(int i, SurfaceControl.Transaction transaction);
    }

    public boolean activityInMultiWindow(String str) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33141).activityInMultiWindow(str);
        }
        throw new IllegalArgumentException("pkgName cannot be null");
    }

    @TranLevel(level = 1)
    public void addAnimationIconLayer(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            throw new IllegalArgumentException("illegal parameter surface control");
        }
        getService(TranVersion.Core.VERSION_33171).addAnimationIconLayer(surfaceControl);
    }

    public void addMultiExchangeListener(String str, TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        getService(TranVersion.Core.VERSION_33451).addMultiExchangeListener(str, tranWindowContainerTransactionCallback);
    }

    public void boostEndInLauncher(int i) {
        getService(TranVersion.Core.VERSION_33371).boostEndInLauncher(i);
    }

    public void boostIMEEnd(String str) {
        getService(TranVersion.Core.VERSION_33461).boostIMEEnd(str);
    }

    public void boostIMEStart(int i, String str) {
        getService(TranVersion.Core.VERSION_33461).boostIMEStart(i, str);
    }

    public void boostInFling(int i, boolean z, int i2) {
        getService(TranVersion.Core.VERSION_33461).boostInFling(i, z, i2);
    }

    @TranLevel(level = 1)
    public void boostSceneEnd(int i) {
        if (i < 0 || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("illegal parameter scene");
        }
        getService(TranVersion.Core.VERSION_33181).boostSceneEnd(i);
    }

    @TranLevel(level = 1)
    public void boostSceneStart(int i) {
        if (i < 0 || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("illegal parameter scene");
        }
        getService(TranVersion.Core.VERSION_33171).boostSceneStart(i);
    }

    public void boostStartInLauncher(int i) {
        getService(TranVersion.Core.VERSION_33371).boostStartInLauncher(i);
    }

    public boolean checkAndUpdateEventStateForMulti(String str, boolean z, boolean z2, long j) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (str == null) {
            throw new IllegalArgumentException("key cannot be null");
        }
        if (j < Long.MIN_VALUE || j > Long.MAX_VALUE) {
            throw new IllegalArgumentException("delayTime is wrong");
        }
        return getService(TranVersion.Core.VERSION_33341).checkAndUpdateEventStateForMulti(str, z, z2, j);
    }

    public boolean checkTaskCanEnterMultiWin(int i) {
        return getService(TranVersion.Core.VERSION_33441).checkTaskCanEnterMultiWin(i);
    }

    @TranLevel(level = 2)
    public void clearFinishFixedRotationWithTransaction() {
        getService(TranVersion.Core.VERSION_33171).clearFinishFixedRotationWithTransaction();
    }

    public void clearMultiWindowExtendSize(int i) {
        getService(TranVersion.Core.VERSION_33441).clearMultiWindowExtendSize(i);
    }

    public List<String> getAllMultiWindowPackageInfo() {
        return getService(TranVersion.Core.VERSION_33441).getAllMultiWindowPackageInfo();
    }

    public List<ActivityManager.RunningTaskInfo> getAllMultiWindowTaskInfo() {
        return getService(TranVersion.Core.VERSION_33311).getAllMultiWindowTaskInfo();
    }

    public List<TranRootTaskInfo> getAllRootTaskInfosOnDisplay(int i) {
        if (i <= Integer.MIN_VALUE || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("displayId is wrong");
        }
        return getService(TranVersion.Core.VERSION_33211).getAllRootTaskInfosOnDisplay(i);
    }

    @TranLevel(level = 1)
    public SurfaceControl getDefaultRootLeash() {
        return getService(TranVersion.Core.VERSION_33171).getDefaultRootLeash();
    }

    @TranLevel(level = 1)
    public SurfaceControl getDragAndZoomBgLeash(int i, int i2, int i3, int i4, boolean z) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("illegal parameters width or height");
        }
        return getService(TranVersion.Core.VERSION_33171).getDragAndZoomBgLeash(i, i2, i3, i4, z);
    }

    @TranLevel(level = 1)
    public String getFocusedWinPkgName() {
        TranSdkLog.i(TAG, "tran getFocusedWinPkgName");
        return getService(TranVersion.Core.VERSION_33101).getFocusedWinPkgName();
    }

    public int getGivenPkgWindowMode(String str) {
        return getService(TranVersion.Core.VERSION_33141).getGivenPkgWindowMode(str);
    }

    public int getGivenPkgWindowModeForCls(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33141).getGivenPkgWindowModeForCls(str, str2);
    }

    public HardwareBuffer getHardwareBuffer(int i, boolean z) {
        if (i < Integer.MIN_VALUE || i > Integer.MAX_VALUE) {
            throw new IllegalArgumentException("invalid task id");
        }
        return getService(TranVersion.Core.VERSION_33141).getHardwareBuffer(i, z);
    }

    public int getMaxRecentTasksStatic() {
        return getService(TranVersion.Core.VERSION_33181).getMaxRecentTasksStatic();
    }

    public Bundle getMultiDisplayAreaAppInfo(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33451).getMultiDisplayAreaAppInfo(i, i2);
    }

    @TranLevel(level = 1)
    public String getMultiDisplayAreaTopPackageV4(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33171).getMultiDisplayAreaTopPackageV4(i, i2);
    }

    @TranLevel(level = 1)
    public ActivityManager.RunningTaskInfo getMultiWinTopTask(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33171).getMultiWinTopTask(i, i2);
    }

    public List<String> getMultiWindowBlackList() {
        return getService(TranVersion.Core.VERSION_33141).getMultiWindowBlackList();
    }

    public Rect getMultiWindowDefaultRect() {
        return getService(TranVersion.Core.VERSION_33371).getMultiWindowDefaultRect();
    }

    public Bundle getMultiWindowParams(String str) {
        return getService(TranVersion.Core.VERSION_33161).getMultiWindowParams(str);
    }

    public Bundle getMultiWindowParamsByTaskId(int i) {
        return getService(TranVersion.Core.VERSION_33471).getMultiWindowParamsByTaskId(i);
    }

    public String getMultiWindowVersion() {
        return getService(TranVersion.Core.VERSION_33141).getMultiWindowVersion();
    }

    @TranLevel(level = 1)
    public boolean getMuteStateV4(int i) {
        return getService(TranVersion.Core.VERSION_33171).getMuteStateV4(i);
    }

    public boolean getNeedExit(String str) {
        return getService(TranVersion.Core.VERSION_33141).getNeedExit(str);
    }

    public List<String> getNotifyMultiWindowBlackList() {
        return getService(TranVersion.Core.VERSION_33441).getNotifyMultiWindowBlackList();
    }

    public int getPackageUserId(String str) {
        return getService(TranVersion.Core.VERSION_33141).getPackageUserId(str);
    }

    @TranLevel(level = 1)
    public List<ActivityManager.RecentTaskInfo> getRecentTasks(int i, int i2, int i3) {
        return getService(TranVersion.Core.VERSION_33101).getRecentTasks(i, i2, i3);
    }

    public TranRootTaskInfo getRootTaskInfoOnDisplay(int i, int i2, int i3) {
        return getService(TranVersion.Core.VERSION_33161).getRootTaskInfoOnDisplay(i, i2, i3);
    }

    public ITranActivityTaskManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivityTaskManager");
            TranThubActivityTaskManager tranThubActivityTaskManager = this.mThubService;
            if (tranThubActivityTaskManager != null) {
                return tranThubActivityTaskManager;
            }
            TranThubActivityTaskManager tranThubActivityTaskManager2 = new TranThubActivityTaskManager();
            this.mThubService = tranThubActivityTaskManager2;
            return tranThubActivityTaskManager2;
        }
        TranSdkLog.i(TAG, "TranAospActivityTaskManager");
        TranAospActivityTaskManager tranAospActivityTaskManager = this.mAospService;
        if (tranAospActivityTaskManager != null) {
            return tranAospActivityTaskManager;
        }
        TranAospActivityTaskManager tranAospActivityTaskManager2 = new TranAospActivityTaskManager();
        this.mAospService = tranAospActivityTaskManager2;
        return tranAospActivityTaskManager2;
    }

    public int getStackInfoTaskId(String str) {
        return getService(TranVersion.Core.VERSION_33141).getStackInfoTaskId(str);
    }

    public Rect getTaskBounds(int i) {
        return getService(TranVersion.Core.VERSION_33181).getTaskBounds(i);
    }

    public int getTaskIdByPkg(String str) {
        return getService(TranVersion.Core.VERSION_33141).getTaskIdByPkg(str);
    }

    public int getTaskIdByPkgName(String str, int i) {
        return getService(TranVersion.Core.VERSION_33441).getTaskIdByPkgName(str, i);
    }

    @TranLevel(level = 1)
    public int getTaskOrientation(int i) {
        return getService(TranVersion.Core.VERSION_33171).getTaskOrientation(i);
    }

    public List<ActivityManager.RunningTaskInfo> getTasks(int i, boolean z, boolean z2) {
        return getService(TranVersion.Core.VERSION_33171).getTasks(i, z, z2);
    }

    @TranLevel(level = 1)
    public ComponentName getTopActivityComponent() {
        TranSdkLog.i(TAG, "tran getTopActivityComponent");
        return getService(TranVersion.Core.VERSION_33101).getTopActivityComponent();
    }

    public Bundle getTopAppWindowInfo() {
        return getService(TranVersion.Core.VERSION_33431).getTopAppWindowInfo();
    }

    @TranLevel(level = 1)
    public ActivityManager.RunningTaskInfo getTopTask(int i) {
        if (i >= Integer.MAX_VALUE || i <= Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Illegal parameters");
        }
        return getService(TranVersion.Core.VERSION_33171).getTopTask(i);
    }

    public boolean getVideoNotFullscreen(String str) {
        return getService(TranVersion.Core.VERSION_33141).getVideoNotFullscreen(str);
    }

    public boolean hasMultiWindow() {
        return getService(TranVersion.Core.VERSION_33161).hasMultiWindow();
    }

    public Rect hookGetMultiWindowDefaultRect(int i) {
        if (i == -1 || i == 0 || i == 1) {
            return getService(TranVersion.Core.VERSION_33141).hookGetMultiWindowDefaultRect(i);
        }
        throw new IllegalArgumentException("invalid orientation type");
    }

    public void hookMultiWindowToClose(int i, int i2) {
        getService(TranVersion.Core.VERSION_33461).hookMultiWindowToClose(i, i2);
    }

    public void hookMultiWindowToExchange(int i, int i2) {
        getService(TranVersion.Core.VERSION_33441).hookMultiWindowToExchange(i, i2);
    }

    public void hookMultiWindowVisible() {
        getService(TranVersion.Core.VERSION_33371).hookMultiWindowVisible();
    }

    public void hookMultiWindowVisibleWithCallback(TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        getService(TranVersion.Core.VERSION_33451).hookMultiWindowVisibleWithCallback(tranWindowContainerTransactionCallback);
    }

    @TranLevel(level = 1)
    public void hookReparentToDefaultDisplay(int i, int i2) {
        getService(TranVersion.Core.VERSION_33171).hookReparentToDefaultDisplay(i, i2);
    }

    @TranLevel(level = 1)
    public void hookSetMultiWindowDefaultRectResult(Rect rect) {
        if (rect == null) {
            throw new IllegalArgumentException("illegal parameter rect");
        }
        getService(TranVersion.Core.VERSION_33171).hookSetMultiWindowDefaultRectResult(rect);
    }

    public void hookShowBlurLayer(SurfaceControl surfaceControl, String str) {
        if (surfaceControl == null || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("appSurface or packageName is null");
        }
        getService(TranVersion.Core.VERSION_33371).hookShowBlurLayer(surfaceControl, str);
    }

    @TranLevel(level = 1)
    public void hookShowBlurLayerFinish() {
        getService(TranVersion.Core.VERSION_33171).hookShowBlurLayerFinish();
    }

    @TranLevel(level = 1)
    public void hookStartActivityResult(int i, Rect rect) {
        if (rect == null) {
            throw new IllegalArgumentException("illegal parameter location");
        }
        getService(TranVersion.Core.VERSION_33171).hookStartActivityResult(i, rect);
    }

    public void hookStartMultiWindow(int i, Rect rect, TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (i < 0) {
            throw new IllegalArgumentException("invalid task id");
        }
        getService(TranVersion.Core.VERSION_33141).hookStartMultiWindow(i, rect, tranWindowContainerTransactionCallback);
    }

    @TranLevel(level = 1)
    public void hookStartMultiWindowAndMakeOwnAnimation(int i, int i2, int i3, Rect rect, TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (rect == null) {
            throw new IllegalArgumentException("invalid startBound");
        }
        getService(TranVersion.Core.VERSION_33181).hookStartMultiWindowAndMakeOwnAnimation(i, i2, i3, rect, tranWindowContainerTransactionCallback);
    }

    public Bundle hookToMultiWindow(String str, Bundle bundle) {
        return getService(TranVersion.Core.VERSION_33441).hookToMultiWindow(str, bundle);
    }

    @TranLevel(level = 2)
    public boolean inMultiWindowMode() {
        TranSdkLog.i(TAG, "tran inMultiWindowMode");
        return getService(TranVersion.Core.VERSION_33101).inMultiWindowMode();
    }

    public boolean isCanEnterMultiWin(ComponentName componentName) {
        return getService(TranVersion.Core.VERSION_33451).isCanEnterMultiWin(componentName);
    }

    public boolean isHasMultiWindow() {
        return getService(TranVersion.Core.VERSION_33461).isHasMultiWindow();
    }

    @TranLevel(level = 1)
    public boolean isIMEShowing() {
        TranSdkLog.i(TAG, "tran isIMEShowing");
        return getService(TranVersion.Core.VERSION_33101).isIMEShowing();
    }

    @TranLevel(level = 1)
    public boolean isKeyguardLocking() {
        return getService(TranVersion.Core.VERSION_33171).isKeyguardLocking();
    }

    public boolean isPCSourceDisplay(int i) {
        return getService(TranVersion.Core.VERSION_33451).isPCSourceDisplay(i);
    }

    @TranLevel(level = 1)
    public boolean isPinnedMode() {
        return getService(TranVersion.Core.VERSION_33171).isPinnedMode();
    }

    public boolean isResizableActivity() {
        return getService(TranVersion.Core.VERSION_33451).isResizableActivity();
    }

    @TranLevel(level = 1)
    public boolean isSecureWindow() {
        return getService(TranVersion.Core.VERSION_33181).isSecureWindow();
    }

    public boolean isSplitScreen() {
        return getService(TranVersion.Core.VERSION_33181).isSplitScreen();
    }

    public boolean isSupportMultiWindow() {
        return getService(TranVersion.Core.VERSION_33141).isSupportMultiWindow();
    }

    public boolean isTheMainScreen(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33141).isTheMainScreen(str, str2);
    }

    public void notAllowKeyguardGoingAwayQuickly(boolean z) {
        getService(TranVersion.Core.VERSION_33311).notAllowKeyguardGoingAwayQuickly(z);
    }

    public void notifyAuthenticateSucceed(boolean z) {
        getService(TranVersion.Core.VERSION_33421).notifyAuthenticateSucceed(z);
    }

    public void notifyKeyguardGoingAwayQuickly(boolean z) {
        getService(TranVersion.Core.VERSION_33421).notifyKeyguardGoingAwayQuickly(z);
    }

    public void notifyLauncherPageTurning(boolean z) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            getService(TranVersion.Core.VERSION_33361).notifyLauncherPageTurning(z);
        }
    }

    public void pauseTaskTopActivity(int i) {
        getService(TranVersion.Core.VERSION_33511).pauseTaskTopActivity(i);
    }

    public boolean registerActivityStarterExecutedObserver(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver, IntentFilter intentFilter) {
        return getService(TranVersion.Core.VERSION_33461).registerActivityStarterExecutedObserver(tranActivityStarterExecutedObserver, intentFilter);
    }

    public void registerMultiWindowWmShellListener(IBinder iBinder) {
        getService(TranVersion.Core.VERSION_33441).registerMultiWindowWmShellListener(iBinder);
    }

    @TranLevel(level = 1)
    public void removeAnimationIconLayer(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            throw new IllegalArgumentException("illegal parameter surface control");
        }
        getService(TranVersion.Core.VERSION_33171).removeAnimationIconLayer(surfaceControl);
    }

    @TranLevel(level = 2)
    public void removeRootTasksInWindowingModes(int[] iArr) {
        getService(TranVersion.Core.VERSION_33101).removeRootTasksInWindowingModes(iArr);
    }

    @TranLevel(level = 2)
    public boolean removeTask(int i) {
        TranSdkLog.i(TAG, "tran removeTask");
        return getService(TranVersion.Core.VERSION_33101).removeTask(i);
    }

    public void removeTaskPC(int i, int i2) {
        getService(TranVersion.Core.VERSION_33451).removeTaskPC(i, i2);
    }

    public void reparentActivity(int i, int i2, boolean z) {
        if (i <= Integer.MIN_VALUE || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("illegal parameter fromDisplayId");
        }
        if (i2 <= Integer.MIN_VALUE || i2 >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("illegal parameter destDisplayId");
        }
        getService(TranVersion.Core.VERSION_33181).reparentActivity(i, i2, z);
    }

    public void reparentTaskToDefaultTDA() {
        getService(TranVersion.Core.VERSION_33441).reparentTaskToDefaultTDA();
    }

    public void requestHideDock() {
        getService(TranVersion.Core.VERSION_33451).requestHideDock();
    }

    public void requestShowDock() {
        getService(TranVersion.Core.VERSION_33451).requestShowDock();
    }

    public void setActivityController(ITranActivityController iTranActivityController, boolean z) {
        getService(TranVersion.Core.VERSION_33101).setActivityController(iTranActivityController, z);
    }

    public void setBoostSceneState(int i, String str, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("scene is null");
            }
            if (i < 0) {
                throw new IllegalArgumentException("type is wrong");
            }
            getService(TranVersion.Core.VERSION_33391).setBoostSceneState(i, str, z);
        }
    }

    @TranLevel(level = 1)
    public void setConnectBlackListToSystem(List<String> list) {
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("List cannot be null");
        }
        getService(TranVersion.Core.VERSION_33181).setConnectBlackListToSystem(list);
    }

    @TranLevel(level = 2)
    public void setFinishFixedRotationWithTransaction(SurfaceControl surfaceControl, float[] fArr, float[] fArr2, int i) {
        if (surfaceControl == null || fArr == null || fArr2 == null) {
            throw new IllegalArgumentException("illegal parameters");
        }
        getService(TranVersion.Core.VERSION_33171).setFinishFixedRotationWithTransaction(surfaceControl, fArr, fArr2, i);
    }

    public void setFlingState(boolean z) {
        getService(TranVersion.Core.VERSION_33461).setFlingState(z);
    }

    public void setJankScenarioState(int i, String str, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("jankName is null");
            }
            if (i < 0) {
                throw new IllegalArgumentException("type is wrong");
            }
            getService(TranVersion.Core.VERSION_33361).setJankScenarioState(i, str, z);
        }
    }

    public void setMultiEnableStateForOOBE(boolean z, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33441).setMultiEnableStateForOOBE(z, bundle);
    }

    @TranLevel(level = 1)
    public void setMultiWindowAcquireFocus(int i, boolean z) {
        if (i >= Integer.MAX_VALUE || i <= Integer.MIN_VALUE) {
            throw new IllegalArgumentException("multiWindowId has exceeded the maximum value ");
        }
        getService(TranVersion.Core.VERSION_33171).setMultiWindowAcquireFocus(i, z);
    }

    @TranLevel(level = 3)
    public void setMultiWindowBlackListToSystem(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("illegal parameter list");
        }
        getService(TranVersion.Core.VERSION_33171).setMultiWindowBlackListToSystem(list);
    }

    @TranLevel(level = 1)
    public void setMultiWindowConfigToSystem(String str, List<String> list) {
        if (list == null || str == null) {
            throw new IllegalArgumentException("illegal parameters");
        }
        getService(TranVersion.Core.VERSION_33171).setMultiWindowConfigToSystem(str, list);
    }

    public void setMultiWindowExtendSize(int i, int i2) {
        getService(TranVersion.Core.VERSION_33441).setMultiWindowExtendSize(i, i2);
    }

    @TranLevel(level = 1)
    public void setMultiWindowParams(Bundle bundle) {
        if (bundle == null) {
            throw new IllegalArgumentException("params cannot be null");
        }
        getService(TranVersion.Core.VERSION_33181).setMultiWindowParams(bundle);
    }

    @TranLevel(level = 3)
    public void setMultiWindowWhiteListToSystem(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("illegal parameter list");
        }
        getService(TranVersion.Core.VERSION_33171).setMultiWindowWhiteListToSystem(list);
    }

    @TranLevel(level = 1)
    public void setMuteStateV4(boolean z, int i) {
        getService(TranVersion.Core.VERSION_33171).setMuteStateV4(z, i);
    }

    public void setStartInMultiWindow(String str, int i, int i2, int i3) {
        getService(TranVersion.Core.VERSION_33171).setStartInMultiWindow(str, i, i2, i3);
    }

    public void setStartInMultiWindowAsUser(String str, int i, int i2, int i3, int i4) {
        getService(TranVersion.Core.VERSION_33171).setStartInMultiWindowAsUser(str, i, i2, i3, i4);
    }

    public void setStartInMultiWindowWithBundle(Bundle bundle, int i, int i2, int i3, int i4) {
        getService(TranVersion.Core.VERSION_33441).setStartInMultiWindowWithBundle(bundle, i, i2, i3, i4);
    }

    @TranLevel(level = 1)
    public void setTbSpecialLayerState(boolean z, int i) {
        getService(TranVersion.Core.VERSION_33181).setTbSpecialLayerState(z, i);
    }

    public void setThunderbackAnimating(boolean z) {
        getService(TranVersion.Core.VERSION_33441).setThunderbackAnimating(z);
    }

    public void startCurrentAppInMultiWindow(boolean z, int i) {
        getService(TranVersion.Core.VERSION_33141).startCurrentAppInMultiWindow(z, i);
    }

    public void startLauncherAction(Intent intent, int i) {
        getService(TranVersion.Core.VERSION_33461).startLauncherAction(intent, i);
    }

    public void stopTask(int i) {
        getService(TranVersion.Core.VERSION_33511).stopTask(i);
    }

    public void stopTaskPC(int i, int i2) {
        getService(TranVersion.Core.VERSION_33451).stopTaskPC(i, i2);
    }

    @TranLevel(level = 1)
    public TranTaskSnapshot takeTaskSnapshot(int i, boolean z) {
        return getService(TranVersion.Core.VERSION_33201).takeTaskSnapshot(i, z);
    }

    public boolean taskInMultiWindowById(int i) {
        if (i >= 0) {
            return getService(TranVersion.Core.VERSION_33141).taskInMultiWindowById(i);
        }
        throw new IllegalArgumentException("invalid task id");
    }

    public boolean unRegisterActivityStarterExecutedObserver(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver) {
        return getService(TranVersion.Core.VERSION_33461).unRegisterActivityStarterExecutedObserver(tranActivityStarterExecutedObserver);
    }

    public boolean updateConfiguration(Configuration configuration) {
        if (configuration != null) {
            return getService(TranVersion.Core.VERSION_33221).updateConfiguration(configuration);
        }
        throw new IllegalArgumentException("Configuration is null.");
    }

    public void updateMediaMapForDynamicIsland(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("pkgName is null");
        }
        getService(TranVersion.Core.VERSION_33421).updateMediaMapForDynamicIsland(str, z);
    }

    @TranLevel(level = 1)
    public void updateZBoostTaskIdWhenToSplit(int i) {
        if (i >= Integer.MAX_VALUE || i <= Integer.MIN_VALUE) {
            throw new IllegalArgumentException("taskID is out of bounds");
        }
        getService(TranVersion.Core.VERSION_33171).updateZBoostTaskIdWhenToSplit(i);
    }
}
