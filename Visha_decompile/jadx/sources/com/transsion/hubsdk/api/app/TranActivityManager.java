package com.transsion.hubsdk.api.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.os.UserHandle;
import com.transsion.hubsdk.aosp.app.TranAospActivityManager;
import com.transsion.hubsdk.aosp.app.TranAospActivityManagerExt;
import com.transsion.hubsdk.app.audio.ITranAudioVolumeListener;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActivityManager;
import com.transsion.hubsdk.interfaces.app.ITranActivityManagerAdapter;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class TranActivityManager {
    public static final int CLEAN_LEVEL_HIGH = 3;
    private static final String EXCEPTION_TEXT = "taskInfo cannot be null";
    public static final String PACKAGE_NAME_ARGUMENT_EXCEPTION = "package name should not be null";
    private static final String TAG = "TranActivityManager";
    private TranAospActivityManager mAospService;
    private TranThubActivityManager mThubService;

    public interface ITranAppRecoveryCallback {
        void onSaveStateWhenError(Bundle bundle);
    }

    public interface ITranBloodOxygenLedStateCallback {
        void onBloodOxygenLedStateChange(int i);
    }

    public interface ITranProcessObserverInner {
        void onForegroundActivitiesChanged(int i, int i2, boolean z);

        void onForegroundServicesChanged(int i, int i2, int i3);

        void onProcessDied(int i, int i2);
    }

    public interface TranActivityStartObserver {
        void onRealStartActivity(String str, String str2, int i);
    }

    public Bundle applyToAppLockAsUser(int i, Bundle bundle, int i2) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33451).applyToAppLockAsUser(i, bundle, i2);
        }
        return null;
    }

    @TranLevel(level = 2)
    public void backgroundAllowlistUid(int i) {
        getService(TranVersion.Core.VERSION_33181).backgroundAllowlistUid(i);
    }

    public long calculateReclaimableMemory() {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33431).calculateReclaimableMemory();
        }
        return 0L;
    }

    @Deprecated
    public void changeCompactionMem(String str) {
        if (str == null) {
            throw new NullPointerException("meminfo cannot be null");
        }
        getService(TranVersion.Core.VERSION_33281).changeCompactionMem(str);
    }

    @TranLevel(level = 2)
    public boolean clearApplicationUserData(String str, TranAospActivityManagerExt.ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner) {
        return getService(TranVersion.Core.VERSION_33181).clearApplicationUserData(str, iTranPackageDataObserverExtInner);
    }

    @TranLevel(level = 1)
    public void doClean(int i, List<String> list) {
        getService(TranVersion.Core.VERSION_33171).doClean(i, list);
    }

    public void enableHiber(boolean z) {
        getService(TranVersion.Core.VERSION_33231).enableHiber(z);
    }

    @TranLevel(level = 2)
    public void forceStopPackage(String str) {
        getService(TranVersion.Core.VERSION_33111).forceStopPackage(str);
    }

    public void forceStopPackageNecessity(String str, int i, int i2) throws TranThubIncompatibleException {
        if (str == null) {
            throw new NullPointerException("packageName cannot be null");
        }
        getService(TranVersion.Core.VERSION_33231).forceStopPackageNecessity(str, i, i2);
    }

    public void gameSceneEnd(String str, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            getService(TranVersion.Core.VERSION_33311).gameSceneEnd(str, z);
        }
    }

    public void gameSceneStart(String str, String str2, boolean z, List<String> list) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            getService(TranVersion.Core.VERSION_33311).gameSceneStart(str, str2, z, list);
        }
    }

    public IBinder getActivityToken(Activity activity) {
        Method method;
        if (activity == null || (method = TranDoorMan.getMethod(activity.getClass(), "getActivityToken", new Class[0])) == null) {
            return null;
        }
        return (IBinder) TranDoorMan.invokeMethod(method, activity, new Object[0]);
    }

    public int[] getAppListMode(int i) {
        return getService(TranVersion.Core.VERSION_33231).getAppListMode(i);
    }

    public int getBackgroundRestrictionExemptionReason(int i) {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("uid cannot be out of range");
        }
        return getService(TranVersion.Core.VERSION_33371).getBackgroundRestrictionExemptionReason(i);
    }

    public int getBloodOxygenLedState() {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).getBloodOxygenLedState();
        }
        return 0;
    }

    public List<String> getCleanProtectList() {
        return getService(TranVersion.Core.VERSION_33181).getCleanProtectList();
    }

    public Configuration getConfigurationExt(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            return getService(TranVersion.Core.VERSION_33131).getConfigurationExt(runningTaskInfo);
        }
        throw new IllegalArgumentException(EXCEPTION_TEXT);
    }

    public String getCpuId(int i) {
        return !TranThubVersionUtil.isRecentAndroidW() ? "" : getService(TranVersion.Core.VERSION_33511).getCpuId(i);
    }

    @TranLevel(level = 1)
    public int getCurrentUser() {
        return getService(TranVersion.Core.VERSION_33111).getCurrentUser();
    }

    public int getDisplayId(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            return getService(TranVersion.Core.VERSION_33141).getDisplayId(runningTaskInfo);
        }
        throw new IllegalArgumentException(EXCEPTION_TEXT);
    }

    public Bundle getJavaProcessRss() {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33391).getJavaProcessRss();
        }
        return null;
    }

    public long[] getKernelMemInfo() {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33391).getKernelMemInfo();
        }
        return null;
    }

    public String getLaunchedFromPackage(IBinder iBinder) {
        return getService(TranVersion.Core.VERSION_33171).getLaunchedFromPackage(iBinder);
    }

    public int getLaunchedFromUid(IBinder iBinder) {
        return getService(TranVersion.Core.VERSION_33171).getLaunchedFromUid(iBinder);
    }

    public List<Bundle> getLightEffectInfos(int i) {
        return !TranThubVersionUtil.isRecentAndroidW() ? Collections.emptyList() : getService(TranVersion.Core.VERSION_33441).getLightEffectInfos(i);
    }

    public Bundle getLightStyleDataBundle(int i) {
        return !TranThubVersionUtil.isRecentAndroidW() ? new Bundle() : getService(TranVersion.Core.VERSION_33441).getLightStyleDataBundle(i);
    }

    public int[] getLightStyleIdArray(int i) {
        return !TranThubVersionUtil.isRecentAndroidW() ? new int[0] : getService(TranVersion.Core.VERSION_33441).getLightStyleIdArray(i);
    }

    public int[] getLightStyleIdData(int i) {
        return !TranThubVersionUtil.isRecentAndroidW() ? new int[0] : getService(TranVersion.Core.VERSION_33441).getLightStyleIdData(i);
    }

    public Locale getLocale() {
        return getService(TranVersion.Core.VERSION_33211).getLocale();
    }

    public int getLockTaskModeState() {
        return getService(TranVersion.Core.VERSION_33181).getLockTaskModeState();
    }

    public List<String> getMEMCList(String str) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33241).getMEMCList(str);
        }
        throw new NullPointerException("param key cannot be null");
    }

    @Deprecated
    public int getMemoryForMF(String str) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33281).getMemoryForMF(str);
        }
        throw new NullPointerException("memFusionSize cannot be null");
    }

    public Bundle getNativeProcessRss() {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33391).getNativeProcessRss();
        }
        return null;
    }

    public ComponentName getRealActivity(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            return getService(TranVersion.Core.VERSION_33141).getRealActivity(runningTaskInfo);
        }
        throw new IllegalArgumentException(EXCEPTION_TEXT);
    }

    public ITranActivityManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivityManager");
            TranThubActivityManager tranThubActivityManager = this.mThubService;
            if (tranThubActivityManager != null) {
                return tranThubActivityManager;
            }
            TranThubActivityManager tranThubActivityManager2 = new TranThubActivityManager();
            this.mThubService = tranThubActivityManager2;
            return tranThubActivityManager2;
        }
        TranSdkLog.i(TAG, "TranAospActivityManager");
        TranAospActivityManager tranAospActivityManager = this.mAospService;
        if (tranAospActivityManager != null) {
            return tranAospActivityManager;
        }
        TranAospActivityManager tranAospActivityManager2 = new TranAospActivityManager();
        this.mAospService = tranAospActivityManager2;
        return tranAospActivityManager2;
    }

    @Deprecated
    public List<String> getSwapFileSizeList() {
        return getService(TranVersion.Core.VERSION_33281).getSwapFileSizeList();
    }

    public int getTargetFps(String str, String str2) {
        if (str == null || str2 == null) {
            throw new NullPointerException("params cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33241).getTargetFps(str, str2);
    }

    @TranLevel(level = 1)
    public ActivityInfo getTopActivityInfo() {
        return getService(TranVersion.Core.VERSION_33111).getTopActivityInfo();
    }

    public int getTopActivityType(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return getService(TranVersion.Core.VERSION_33141).getTopActivityType(runningTaskInfo);
    }

    public String getTranAppmSystemInfo(String str) {
        return !TranThubVersionUtil.isRecentAndroidT() ? "unknown" : getService(TranVersion.Core.VERSION_33341).getTranAppmSystemInfo(str);
    }

    public List<String> getTranGameList(int i) {
        return getService(TranVersion.Core.VERSION_33241).getTranGameList(i);
    }

    public int getUserId(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            return getService(TranVersion.Core.VERSION_33161).getUserId(runningTaskInfo);
        }
        throw new IllegalArgumentException(EXCEPTION_TEXT);
    }

    public int getWindowingMode(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            return getService(TranVersion.Core.VERSION_33131).getWindowingMode(runningTaskInfo);
        }
        throw new IllegalArgumentException(EXCEPTION_TEXT);
    }

    public void hookDisturbStatus(int i) {
        getService(TranVersion.Core.VERSION_33171).hookDisturbStatus(i);
    }

    public boolean ignoreCPUAndMemoryPressureForPreload() {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).ignoreCPUAndMemoryPressureForPreload();
        }
        return false;
    }

    public boolean inMultiWindowMode(int i) {
        return getService(TranVersion.Core.VERSION_33101).inMultiWindowMode(i);
    }

    public boolean isEnabledHiber() {
        return getService(TranVersion.Core.VERSION_33231).isEnabledHiber();
    }

    public boolean isGameGuardSupport() {
        return getService(TranVersion.Core.VERSION_33311).isGameGuardSupport();
    }

    public boolean isInGameGuardProtectedList(String str) {
        return getService(TranVersion.Core.VERSION_33311).isInGameGuardProtectedList(str);
    }

    @TranLevel(level = 1)
    public boolean isInLockTaskMode() {
        return getService(TranVersion.Core.VERSION_33111).isInLockTaskMode();
    }

    public boolean isLowRamDeviceStatic() {
        return getService(TranVersion.Core.VERSION_33161).isLowRamDeviceStatic();
    }

    @Deprecated
    public boolean isMatchCurMemSelection() {
        return getService(TranVersion.Core.VERSION_33281).isMatchCurMemSelection();
    }

    @Deprecated
    public boolean isMemSettingEnterEnabled() {
        return getService(TranVersion.Core.VERSION_33281).isMemSettingEnterEnabled();
    }

    @Deprecated
    public int isMemoryEnoughToMF(String str) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33281).isMemoryEnoughToMF(str);
        }
        throw new NullPointerException("memFusionSize cannot be null");
    }

    public boolean isRequestChangeParams(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33141).isRequestChangeParams(str, str2);
    }

    public boolean isUserRunning(int i, int i2) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33411).isUserRunning(i, i2);
        }
        return false;
    }

    @Deprecated
    public boolean isUxCompactionSupport() {
        return getService(TranVersion.Core.VERSION_33281).isUxCompactionSupport();
    }

    public boolean isVisible(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            return getService(TranVersion.Core.VERSION_33141).isVisible(runningTaskInfo);
        }
        throw new IllegalArgumentException(EXCEPTION_TEXT);
    }

    public boolean isWhiteApp(String str) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33231).isWhiteApp(str);
        }
        throw new NullPointerException("package is null");
    }

    public void notifyInterceptUnknowSource(boolean z) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33231).notifyInterceptUnknowSource(z);
    }

    public boolean registerActivityStartObserver(String[] strArr, TranActivityStartObserver tranActivityStartObserver) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU() && tranActivityStartObserver != null) {
            return getService(TranVersion.Core.VERSION_33381).registerActivityStartObserver(strArr, tranActivityStartObserver);
        }
        return false;
    }

    public void registerAppRecoveryCallback(ITranAppRecoveryCallback iTranAppRecoveryCallback, Activity activity) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (iTranAppRecoveryCallback == null) {
                throw new IllegalArgumentException("callback cannot be null");
            }
            getService(TranVersion.Core.VERSION_33341).registerAppRecoveryCallback(iTranAppRecoveryCallback, getActivityToken(activity));
        }
    }

    public boolean registerAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33511).registerAudioVolumeListener(iTranAudioVolumeListener);
        }
        return false;
    }

    public void registerBloodOxygenLedStateListener(ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (iTranBloodOxygenLedStateCallback == null) {
                throw new IllegalArgumentException("listener cannot be null");
            }
            getService(TranVersion.Core.VERSION_33361).registerBloodOxygenLedStateListener(iTranBloodOxygenLedStateCallback);
        }
    }

    @TranLevel(level = 1)
    public void registerProcessObserver(ITranProcessObserverInner iTranProcessObserverInner) {
        if (iTranProcessObserverInner == null) {
            throw new NullPointerException("registerProcessObserver() parameter observer must not be null");
        }
        getService(TranVersion.Core.VERSION_33161).registerProcessObserver(iTranProcessObserverInner);
    }

    public void registerTaskStackListener(TranTaskStackListener tranTaskStackListener) {
        getService(TranVersion.Core.VERSION_33181).registerTaskStackListener(tranTaskStackListener);
    }

    public void registerTranNecessityServices(ITranNecessityWindowService iTranNecessityWindowService) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33451).registerTranNecessityServices(iTranNecessityWindowService);
    }

    public void registerUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver, String str) {
        if (tranUserSwitchObserver == null || str == null) {
            throw new NullPointerException("Observer name cannot be null");
        }
        getService(TranVersion.Core.VERSION_33141).registerUserSwitchObserver(tranUserSwitchObserver, str);
    }

    public void reportAbnormalApp(Bundle bundle, String str, String str2) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (bundle == null || str == null || str2 == null) {
                throw new IllegalArgumentException("proc,from and reason cannot be null");
            }
            getService(TranVersion.Core.VERSION_33361).reportAbnormalApp(bundle, str, str2);
        }
    }

    public boolean resetAllTest() {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).resetAllTest();
        }
        return false;
    }

    public void resumeAppSwitches() {
        getService(TranVersion.Core.VERSION_33371).resumeAppSwitches();
    }

    public boolean sendMallocDebugSignal(String str, String str2) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33391).sendMallocDebugSignal(str, str2);
        }
        return false;
    }

    public boolean setAppForFixAdj(int i, String str, String str2) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("packageName and processName cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33361).setAppForFixAdj(i, str, str2);
    }

    public boolean setAppIdleForLimit(String str, int i) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33361).setAppIdleForLimit(str, i);
        }
        throw new IllegalArgumentException("packageName cannot be null");
    }

    public List<String> setAppInCgroup(int i, String str, boolean z) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return Collections.EMPTY_LIST;
        }
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33361).setAppInCgroup(i, str, z);
        }
        throw new IllegalArgumentException("packageName cannot be null");
    }

    public void setAppMode(int i, int i2) {
        getService(TranVersion.Core.VERSION_33231).setAppMode(i, i2);
    }

    public void setAudioPatch(String str) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33421).setAudioPatch(str);
        }
    }

    public void setBlackListToSystem(List<String> list) throws TranThubIncompatibleException {
        if (list == null) {
            throw new NullPointerException("list is null");
        }
        getService(TranVersion.Core.VERSION_33231).setBlackListToSystem(list);
    }

    @TranLevel(level = 1)
    public boolean setCleanProtect(String str, boolean z) {
        return getService(TranVersion.Core.VERSION_33181).setCleanProtect(str, z);
    }

    public boolean setCpuPresureLevel(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).setCpuPresureLevel(i);
        }
        return false;
    }

    public boolean setCpuSystemSence(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).setCpuSystemSence(i);
        }
        return false;
    }

    public boolean setCpuUsagePercentForKill(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).setCpuUsagePercentForKill(i);
        }
        return false;
    }

    public void setCurrentActivityKeepAwake() {
        getService(TranVersion.Core.VERSION_33141).setCurrentActivityKeepAwake();
    }

    public boolean setETControl(String str, boolean z) {
        return getService(TranVersion.Core.VERSION_33141).setETControl(str, z);
    }

    public boolean setGameParam(String str, String str2, String str3) {
        if (str == null || str2 == null || str3 == null) {
            throw new NullPointerException("params cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33241).setGameParam(str, str2, str3);
    }

    public void setLedMusicPlay(boolean z) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33211).setLedMusicPlay(z);
    }

    public void setLightingEffect(int[] iArr) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33411).setLightingEffect(iArr);
    }

    public void setLightingScene(int i, int[] iArr, Bundle bundle) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33431).setLightingScene(i, iArr, bundle);
    }

    public boolean setMemSystemSence(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).setMemSystemSence(i);
        }
        return false;
    }

    public boolean setMemoryPresureLevel(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).setMemoryPresureLevel(i);
        }
        return false;
    }

    public boolean setTestMode(boolean z) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).setTestMode(z);
        }
        return false;
    }

    public boolean startProfile(UserHandle userHandle) {
        if (userHandle != null) {
            return getService(TranVersion.Core.VERSION_33201).startProfile(userHandle);
        }
        throw new NullPointerException("startProfile param should not be null");
    }

    @TranLevel(level = 2)
    public void startTNE(String str, long j, int i, String str2) {
        getService(TranVersion.Core.VERSION_33101).startTNE(str, j, i, str2);
    }

    @TranLevel(level = 1)
    public boolean startUserInBackground(int i) {
        return getService(TranVersion.Core.VERSION_33161).startUserInBackground(i);
    }

    public void stopAppForUser(String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("packageName cannot be null");
        }
        getService(TranVersion.Core.VERSION_33371).stopAppForUser(str, i);
    }

    public boolean swipeUpClean(String str, int i) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33441).swipeUpClean(str, i);
        }
        return false;
    }

    @Deprecated
    public void switchMemFusion(boolean z) {
        getService(TranVersion.Core.VERSION_33281).switchMemFusion(z);
    }

    @Deprecated
    public void switchUXCompaction(boolean z) {
        getService(TranVersion.Core.VERSION_33281).switchUXCompaction(z);
    }

    public void toggleFreeformWindowingMode(int i) {
        getService(TranVersion.Core.VERSION_33141).toggleFreeformWindowingMode(i);
    }

    public boolean triggerCpuKillAppForLimit(String str, String str2, int i) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("process and packageName cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33361).triggerCpuKillAppForLimit(str, str2, i);
    }

    public boolean triggerHealthBlockAppForLimit(String str, int i) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33361).triggerHealthBlockAppForLimit(str, i);
        }
        throw new IllegalArgumentException("packageName cannot be null");
    }

    public boolean triggerMPSKByMemAvailable(long j) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).triggerMPSKByMemAvailable(j);
        }
        return false;
    }

    public boolean triggerMPSKByMemFree(long j) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).triggerMPSKByMemFree(j);
        }
        return false;
    }

    public boolean triggerMPSKBySwapFree(long j) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).triggerMPSKBySwapFree(j);
        }
        return false;
    }

    public boolean triggerMemPressureforSortKill() {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33361).triggerMemPressureforSortKill();
        }
        return false;
    }

    public boolean triggerMemoryLowKillAppForLimit(String str, String str2, int i) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("process and packageName cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33361).triggerMemoryLowKillAppForLimit(str, str2, i);
    }

    public void unRegisterAppRecoveryCallback(Activity activity) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).unRegisterAppRecoveryCallback(getActivityToken(activity));
        }
    }

    public void unRegisterBloodOxygenLedStateListener(ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            if (iTranBloodOxygenLedStateCallback == null) {
                throw new IllegalArgumentException("listener cannot be null");
            }
            getService(TranVersion.Core.VERSION_33361).unRegisterBloodOxygenLedStateListener(iTranBloodOxygenLedStateCallback);
        }
    }

    @TranLevel(level = 1)
    public void unRegisterProcessObserver(ITranProcessObserverInner iTranProcessObserverInner) {
        if (iTranProcessObserverInner == null) {
            throw new NullPointerException("unRegisterProcessObserver() parameter observer must not be null");
        }
        getService(TranVersion.Core.VERSION_33161).unRegisterProcessObserver(iTranProcessObserverInner);
    }

    public void unregisterActivityStartObserver(TranActivityStartObserver tranActivityStartObserver) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidU() && tranActivityStartObserver != null) {
            getService(TranVersion.Core.VERSION_33381).unregisterActivityStartObserver(tranActivityStartObserver);
        }
    }

    public boolean unregisterAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33511).unregisterAudioVolumeListener(iTranAudioVolumeListener);
        }
        return false;
    }

    public void unregisterTaskStackListener(TranTaskStackListener tranTaskStackListener) {
        getService(TranVersion.Core.VERSION_33181).unregisterTaskStackListener(tranTaskStackListener);
    }

    public void unregisterUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver) {
        getService(TranVersion.Core.VERSION_33411).unregisterUserSwitchObserver(tranUserSwitchObserver);
    }

    public boolean doClean(boolean z, boolean z2, boolean z3, boolean z4, int[] iArr, String[] strArr, Bundle bundle) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            return getService(TranVersion.Core.VERSION_33441).doClean(z, z2, z3, z4, iArr, strArr, bundle);
        }
        return false;
    }

    public boolean triggerMPSKByMemAvailable(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33371).triggerMPSKByMemAvailableExt(i);
        }
        return false;
    }

    public boolean triggerMPSKByMemFree(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33371).triggerMPSKByMemFreeExt(i);
        }
        return false;
    }

    public boolean triggerMPSKBySwapFree(int i) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            return getService(TranVersion.Core.VERSION_33371).triggerMPSKBySwapFreeExt(i);
        }
        return false;
    }
}
