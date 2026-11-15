package com.transsion.hubsdk.interfaces.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.os.Bundle;
import android.os.IBinder;
import android.view.SurfaceControl;
import com.transsion.hubsdk.api.app.ITranActivityController;
import com.transsion.hubsdk.api.app.TranActivityStarterExecutedObserver;
import com.transsion.hubsdk.api.app.TranActivityTaskManager;
import com.transsion.hubsdk.api.app.TranRootTaskInfo;
import com.transsion.hubsdk.api.window.TranTaskSnapshot;
import java.util.List;

public interface ITranActivityTaskManagerAdapter {
    boolean activityInMultiWindow(String str);

    void addAnimationIconLayer(SurfaceControl surfaceControl);

    void addMultiExchangeListener(String str, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback);

    void boostEndInLauncher(int i);

    void boostIMEEnd(String str);

    void boostIMEStart(int i, String str);

    void boostInFling(int i, boolean z, int i2);

    void boostSceneEnd(int i);

    void boostSceneStart(int i);

    void boostStartInLauncher(int i);

    boolean checkAndUpdateEventStateForMulti(String str, boolean z, boolean z2, long j);

    boolean checkTaskCanEnterMultiWin(int i);

    void clearFinishFixedRotationWithTransaction();

    void clearMultiWindowExtendSize(int i);

    List<String> getAllMultiWindowPackageInfo();

    List<ActivityManager.RunningTaskInfo> getAllMultiWindowTaskInfo();

    List<TranRootTaskInfo> getAllRootTaskInfosOnDisplay(int i);

    SurfaceControl getDefaultRootLeash();

    SurfaceControl getDragAndZoomBgLeash(int i, int i2, int i3, int i4, boolean z);

    String getFocusedWinPkgName();

    int getGivenPkgWindowMode(String str);

    int getGivenPkgWindowModeForCls(String str, String str2);

    HardwareBuffer getHardwareBuffer(int i, boolean z);

    int getMaxRecentTasksStatic();

    Bundle getMultiDisplayAreaAppInfo(int i, int i2);

    String getMultiDisplayAreaTopPackageV4(int i, int i2);

    ActivityManager.RunningTaskInfo getMultiWinTopTask(int i, int i2);

    List<String> getMultiWindowBlackList();

    Rect getMultiWindowDefaultRect();

    Bundle getMultiWindowParams(String str);

    Bundle getMultiWindowParamsByTaskId(int i);

    String getMultiWindowVersion();

    boolean getMuteStateV4(int i);

    boolean getNeedExit(String str);

    List<String> getNotifyMultiWindowBlackList();

    int getPackageUserId(String str);

    List<ActivityManager.RecentTaskInfo> getRecentTasks(int i, int i2, int i3);

    TranRootTaskInfo getRootTaskInfoOnDisplay(int i, int i2, int i3);

    int getStackInfoTaskId(String str);

    Rect getTaskBounds(int i);

    int getTaskIdByPkg(String str);

    int getTaskIdByPkgName(String str, int i);

    int getTaskOrientation(int i);

    List<ActivityManager.RunningTaskInfo> getTasks(int i, boolean z, boolean z2);

    ComponentName getTopActivityComponent();

    Bundle getTopAppWindowInfo();

    ActivityManager.RunningTaskInfo getTopTask(int i);

    boolean getVideoNotFullscreen(String str);

    boolean hasMultiWindow();

    Rect hookGetMultiWindowDefaultRect(int i);

    void hookMultiWindowToClose(int i, int i2);

    void hookMultiWindowToExchange(int i, int i2);

    void hookMultiWindowVisible();

    void hookMultiWindowVisibleWithCallback(TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback);

    void hookReparentToDefaultDisplay(int i, int i2);

    void hookSetMultiWindowDefaultRectResult(Rect rect);

    void hookShowBlurLayer(SurfaceControl surfaceControl, String str);

    void hookShowBlurLayerFinish();

    void hookStartActivityResult(int i, Rect rect);

    void hookStartMultiWindow(int i, Rect rect, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback);

    void hookStartMultiWindowAndMakeOwnAnimation(int i, int i2, int i3, Rect rect, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback);

    Bundle hookToMultiWindow(String str, Bundle bundle);

    boolean inMultiWindowMode();

    boolean isCanEnterMultiWin(ComponentName componentName);

    boolean isHasMultiWindow();

    boolean isIMEShowing();

    boolean isKeyguardLocking();

    boolean isPCSourceDisplay(int i);

    boolean isPinnedMode();

    boolean isResizableActivity();

    boolean isSecureWindow();

    boolean isSplitScreen();

    boolean isSupportMultiWindow();

    boolean isTheMainScreen(String str, String str2);

    void notAllowKeyguardGoingAwayQuickly(boolean z);

    void notifyAuthenticateSucceed(boolean z);

    void notifyKeyguardGoingAwayQuickly(boolean z);

    void notifyLauncherPageTurning(boolean z);

    void pauseTaskTopActivity(int i);

    boolean registerActivityStarterExecutedObserver(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver, IntentFilter intentFilter);

    void registerMultiWindowWmShellListener(IBinder iBinder);

    void removeAnimationIconLayer(SurfaceControl surfaceControl);

    void removeRootTasksInWindowingModes(int[] iArr);

    boolean removeTask(int i);

    void removeTaskPC(int i, int i2);

    void reparentActivity(int i, int i2, boolean z);

    void reparentTaskToDefaultTDA();

    void requestHideDock();

    void requestShowDock();

    void setActivityController(ITranActivityController iTranActivityController, boolean z);

    void setBoostSceneState(int i, String str, boolean z);

    void setConnectBlackListToSystem(List<String> list);

    void setFinishFixedRotationWithTransaction(SurfaceControl surfaceControl, float[] fArr, float[] fArr2, int i);

    void setFlingState(boolean z);

    void setJankScenarioState(int i, String str, boolean z);

    void setMultiEnableStateForOOBE(boolean z, Bundle bundle);

    void setMultiWindowAcquireFocus(int i, boolean z);

    void setMultiWindowBlackListToSystem(List<String> list);

    void setMultiWindowConfigToSystem(String str, List<String> list);

    void setMultiWindowExtendSize(int i, int i2);

    void setMultiWindowParams(Bundle bundle);

    void setMultiWindowWhiteListToSystem(List<String> list);

    void setMuteStateV4(boolean z, int i);

    void setStartInMultiWindow(String str, int i, int i2, int i3);

    void setStartInMultiWindowAsUser(String str, int i, int i2, int i3, int i4);

    void setStartInMultiWindowWithBundle(Bundle bundle, int i, int i2, int i3, int i4);

    void setTbSpecialLayerState(boolean z, int i);

    void setThunderbackAnimating(boolean z);

    void startCurrentAppInMultiWindow(boolean z, int i);

    void startLauncherAction(Intent intent, int i);

    void stopTask(int i);

    void stopTaskPC(int i, int i2);

    TranTaskSnapshot takeTaskSnapshot(int i, boolean z);

    boolean taskInMultiWindowById(int i);

    boolean unRegisterActivityStarterExecutedObserver(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver);

    boolean updateConfiguration(Configuration configuration);

    void updateMediaMapForDynamicIsland(String str, boolean z);

    void updateZBoostTaskIdWhenToSplit(int i);
}
