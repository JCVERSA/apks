package com.transsion.hubsdk.interfaces.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.os.UserHandle;
import com.transsion.hubsdk.aosp.app.TranAospActivityManagerExt;
import com.transsion.hubsdk.api.app.ITranNecessityWindowService;
import com.transsion.hubsdk.api.app.TranActivityManager;
import com.transsion.hubsdk.api.app.TranTaskStackListener;
import com.transsion.hubsdk.api.app.TranUserSwitchObserver;
import com.transsion.hubsdk.app.audio.ITranAudioVolumeListener;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import java.util.List;
import java.util.Locale;

public interface ITranActivityManagerAdapter {
    Bundle applyToAppLockAsUser(int i, Bundle bundle, int i2);

    void backgroundAllowlistUid(int i);

    long calculateReclaimableMemory();

    void changeCompactionMem(String str);

    boolean clearApplicationUserData(String str, TranAospActivityManagerExt.ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner);

    void doClean(int i, List<String> list);

    boolean doClean(boolean z, boolean z2, boolean z3, boolean z4, int[] iArr, String[] strArr, Bundle bundle);

    void enableHiber(boolean z);

    void forceStopPackage(String str);

    void forceStopPackageNecessity(String str, int i, int i2) throws TranThubIncompatibleException;

    void gameSceneEnd(String str, boolean z);

    void gameSceneStart(String str, String str2, boolean z, List<String> list);

    int[] getAppListMode(int i);

    int getBackgroundRestrictionExemptionReason(int i);

    int getBloodOxygenLedState();

    List<String> getCleanProtectList();

    Configuration getConfigurationExt(ActivityManager.RunningTaskInfo runningTaskInfo);

    String getCpuId(int i);

    int getCurrentUser();

    int getDisplayId(ActivityManager.RunningTaskInfo runningTaskInfo);

    Bundle getJavaProcessRss();

    long[] getKernelMemInfo();

    String getLaunchedFromPackage(IBinder iBinder);

    int getLaunchedFromUid(IBinder iBinder);

    List<Bundle> getLightEffectInfos(int i);

    Bundle getLightStyleDataBundle(int i);

    int[] getLightStyleIdArray(int i);

    int[] getLightStyleIdData(int i);

    Locale getLocale();

    int getLockTaskModeState();

    List<String> getMEMCList(String str);

    int getMemoryForMF(String str);

    Bundle getNativeProcessRss();

    ComponentName getRealActivity(ActivityManager.RunningTaskInfo runningTaskInfo);

    List<String> getSwapFileSizeList();

    int getTargetFps(String str, String str2);

    ActivityInfo getTopActivityInfo();

    int getTopActivityType(ActivityManager.RunningTaskInfo runningTaskInfo);

    String getTranAppmSystemInfo(String str);

    List<String> getTranGameList(int i);

    int getUserId(ActivityManager.RunningTaskInfo runningTaskInfo);

    int getWindowingMode(ActivityManager.RunningTaskInfo runningTaskInfo);

    void hookDisturbStatus(int i);

    boolean ignoreCPUAndMemoryPressureForPreload();

    boolean inMultiWindowMode(int i);

    boolean isEnabledHiber();

    boolean isGameGuardSupport();

    boolean isInGameGuardProtectedList(String str);

    boolean isInLockTaskMode();

    boolean isLowRamDeviceStatic();

    boolean isMatchCurMemSelection();

    boolean isMemSettingEnterEnabled();

    int isMemoryEnoughToMF(String str);

    boolean isRequestChangeParams(String str, String str2);

    boolean isUserRunning(int i, int i2);

    boolean isUxCompactionSupport();

    boolean isVisible(ActivityManager.RunningTaskInfo runningTaskInfo);

    boolean isWhiteApp(String str);

    void notifyInterceptUnknowSource(boolean z) throws TranThubIncompatibleException;

    boolean registerActivityStartObserver(String[] strArr, TranActivityManager.TranActivityStartObserver tranActivityStartObserver) throws TranThubIncompatibleException;

    void registerAppRecoveryCallback(TranActivityManager.ITranAppRecoveryCallback iTranAppRecoveryCallback, IBinder iBinder) throws TranThubIncompatibleException;

    boolean registerAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener);

    void registerBloodOxygenLedStateListener(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) throws TranThubIncompatibleException;

    void registerProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner);

    void registerTaskStackListener(TranTaskStackListener tranTaskStackListener);

    void registerTranNecessityServices(ITranNecessityWindowService iTranNecessityWindowService) throws TranThubIncompatibleException;

    void registerUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver, String str);

    void reportAbnormalApp(Bundle bundle, String str, String str2);

    boolean resetAllTest();

    void resumeAppSwitches();

    boolean sendMallocDebugSignal(String str, String str2);

    boolean setAppForFixAdj(int i, String str, String str2);

    boolean setAppIdleForLimit(String str, int i);

    List<String> setAppInCgroup(int i, String str, boolean z);

    void setAppMode(int i, int i2);

    void setAudioPatch(String str);

    void setBlackListToSystem(List<String> list) throws TranThubIncompatibleException;

    boolean setCleanProtect(String str, boolean z);

    boolean setCpuPresureLevel(int i);

    boolean setCpuSystemSence(int i);

    boolean setCpuUsagePercentForKill(int i);

    void setCurrentActivityKeepAwake();

    boolean setETControl(String str, boolean z);

    boolean setGameParam(String str, String str2, String str3);

    void setLedMusicPlay(boolean z) throws TranThubIncompatibleException;

    void setLightingEffect(int[] iArr) throws TranThubIncompatibleException;

    void setLightingScene(int i, int[] iArr, Bundle bundle) throws TranThubIncompatibleException;

    boolean setMemSystemSence(int i);

    boolean setMemoryPresureLevel(int i);

    boolean setTestMode(boolean z);

    boolean startProfile(UserHandle userHandle);

    void startTNE(String str, long j, int i, String str2);

    boolean startUserInBackground(int i);

    void stopAppForUser(String str, int i);

    boolean swipeUpClean(String str, int i);

    void switchMemFusion(boolean z);

    void switchUXCompaction(boolean z);

    void toggleFreeformWindowingMode(int i);

    boolean triggerCpuKillAppForLimit(String str, String str2, int i);

    boolean triggerHealthBlockAppForLimit(String str, int i);

    boolean triggerMPSKByMemAvailable(long j);

    boolean triggerMPSKByMemAvailableExt(int i);

    boolean triggerMPSKByMemFree(long j);

    boolean triggerMPSKByMemFreeExt(int i);

    boolean triggerMPSKBySwapFree(long j);

    boolean triggerMPSKBySwapFreeExt(int i);

    boolean triggerMemPressureforSortKill();

    boolean triggerMemoryLowKillAppForLimit(String str, String str2, int i);

    void unRegisterAppRecoveryCallback(IBinder iBinder) throws TranThubIncompatibleException;

    void unRegisterBloodOxygenLedStateListener(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) throws TranThubIncompatibleException;

    void unRegisterProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner);

    void unregisterActivityStartObserver(TranActivityManager.TranActivityStartObserver tranActivityStartObserver) throws TranThubIncompatibleException;

    boolean unregisterAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener);

    void unregisterTaskStackListener(TranTaskStackListener tranTaskStackListener);

    void unregisterUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver);
}
