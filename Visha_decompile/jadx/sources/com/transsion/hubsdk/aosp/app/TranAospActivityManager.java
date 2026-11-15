package com.transsion.hubsdk.aosp.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.UserHandle;
import android.util.ArrayMap;
import com.transsion.hubsdk.api.app.ITranNecessityWindowService;
import com.transsion.hubsdk.api.app.TranActivityManager;
import com.transsion.hubsdk.api.app.TranTaskStackListener;
import com.transsion.hubsdk.api.app.TranUserSwitchObserver;
import com.transsion.hubsdk.app.audio.ITranAudioVolumeListener;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityManagerAdapter;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class TranAospActivityManager implements ITranActivityManagerAdapter {
    private static final String EXCEPTION_WARNING = "This interface is not implemented in versions lower than U";
    private static final String TAG = "TranAospActivityManager";
    private final Context mContext;
    private final TranAospActivityManagerExt mManagerExt;
    private final Method mMethodGetService;
    private final ArrayMap<TranActivityManager.ITranProcessObserverInner, TranAospProcessObserver> mObserverMap = new ArrayMap<>();
    private final ArrayMap<TranTaskStackListener, TranAospActivityManagerExt.TranTaskStackListener> mTranTaskStackListeners = new ArrayMap<>();
    private final ArrayMap<TranUserSwitchObserver, TranAospActivityManagerExt.TranUserSwitchObserver> mTranUserSwitchListeners = new ArrayMap<>();
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.IActivityManager");
    private static Class<?> sActivityManagerClass = TranDoorMan.getClass("android.app.ActivityManager");

    public static class TranAospProcessObserver implements TranAospActivityManagerExt.ITranProcessObserverExtInner {
        TranActivityManager.ITranProcessObserverInner mObserver;

        public TranAospProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner) {
            this.mObserver = iTranProcessObserverInner;
        }

        @Override
        public void onForegroundActivitiesChanged(int i, int i2, boolean z) {
            this.mObserver.onForegroundActivitiesChanged(i, i2, z);
        }

        @Override
        public void onForegroundServicesChanged(int i, int i2, int i3) {
            this.mObserver.onForegroundServicesChanged(i, i2, i3);
        }

        @Override
        public void onProcessDied(int i, int i2) {
            this.mObserver.onProcessDied(i, i2);
        }
    }

    public TranAospActivityManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mManagerExt = new TranAospActivityManagerExt(context);
        this.mMethodGetService = TranDoorMan.getMethod(sActivityManagerClass, "getService", new Class[0]);
    }

    private Class<?> getRootTaskInfoClass() {
        return Build.VERSION.SDK_INT >= 31 ? TranDoorMan.getClass("android.app.TaskInfo") : TranDoorMan.getClass("android.app.ActivityManager$StackInfo");
    }

    @Override
    public Bundle applyToAppLockAsUser(int i, Bundle bundle, int i2) {
        TranSdkLog.w(TAG, "can not find method applyToAppLockAsUser");
        return null;
    }

    @Override
    public void backgroundAllowlistUid(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        if (objInvokeMethod != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "backgroundAllowlistUid", Integer.TYPE), objInvokeMethod, Integer.valueOf(i));
        }
    }

    @Override
    public long calculateReclaimableMemory() {
        TranSdkLog.w(TAG, "can not find method calculateReclaimableMemory");
        return 0L;
    }

    @Override
    @Deprecated
    public void changeCompactionMem(String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "changeCompactionMem", String.class);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, str);
        }
    }

    @Override
    public boolean clearApplicationUserData(String str, TranAospActivityManagerExt.ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(activityManager.getClass(), "clearApplicationUserData", String.class, TranDoorMan.getClass("android.content.pm.IPackageDataObserver")), activityManager, str, new TranAospActivityManagerExt.TranAospPackageDataObserver(iTranPackageDataObserverExtInner));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean doClean(boolean z, boolean z2, boolean z3, boolean z4, int[] iArr, String[] strArr, Bundle bundle) {
        return false;
    }

    @Override
    public void enableHiber(boolean z) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(activityManager.getClass(), "enableHiber", Boolean.TYPE), activityManager, Boolean.valueOf(z));
    }

    @Override
    public void forceStopPackage(String str) {
        try {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "forceStopPackage", String.class), (ActivityManager) TranDoorMan.getConstructor(sActivityManagerClass, new Class[]{Context.class, Handler.class}).newInstance(getContext(), null), str);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "forceStopPackage fail: " + e);
        }
    }

    @Override
    public void forceStopPackageNecessity(String str, int i, int i2) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException(EXCEPTION_WARNING);
    }

    @Override
    public void gameSceneEnd(String str, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "gameSceneEnd", String.class, Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, str, Boolean.valueOf(z));
        }
    }

    @Override
    public void gameSceneStart(String str, String str2, boolean z, List<String> list) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "gameSceneStart", String.class, String.class, Boolean.TYPE, List.class);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, str, str2, Boolean.valueOf(z), list);
        }
    }

    @Override
    public int[] getAppListMode(int i) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        return (int[]) TranDoorMan.invokeMethod(TranDoorMan.getMethod(activityManager.getClass(), "getAppListMode", Integer.TYPE), activityManager, Integer.valueOf(i));
    }

    @Override
    public int getBackgroundRestrictionExemptionReason(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "getBackgroundRestrictionExemptionReason", Integer.TYPE);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, objInvokeMethod, Integer.valueOf(i))).intValue();
        }
        return -1;
    }

    @Override
    public int getBloodOxygenLedState() {
        return 0;
    }

    @Override
    public List<String> getCleanProtectList() {
        ArrayList arrayList = new ArrayList();
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(activityManager.getClass(), "getCleanProtectList", new Class[0]), activityManager, new Object[0]);
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((String) String.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public Configuration getConfigurationExt(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            try {
                Object obj = TranDoorMan.getField(getRootTaskInfoClass(), "configuration").get(runningTaskInfo);
                if (obj instanceof Configuration) {
                    return (Configuration) obj;
                }
                return null;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "getConfigurationExt fail: " + e);
            }
        }
        return null;
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override
    public String getCpuId(int i) {
        TranSdkLog.w(TAG, "can not find method getCpuId");
        return null;
    }

    @Override
    public int getCurrentUser() {
        try {
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "getCurrentUser", new Class[0]), (ActivityManager) TranDoorMan.getConstructor(sActivityManagerClass, new Class[]{Context.class, Handler.class}).newInstance(getContext(), null), new Object[0]);
            if (objInvokeMethod instanceof Integer) {
                return ((Integer) objInvokeMethod).intValue();
            }
            return 0;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getCurrentUser fail: " + e);
            return 0;
        }
    }

    @Override
    public int getDisplayId(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            try {
                Object obj = TranDoorMan.getField(getRootTaskInfoClass(), "displayId").get(runningTaskInfo);
                if (obj instanceof Integer) {
                    return ((Integer) obj).intValue();
                }
                return 0;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "getDisplayId fail: " + e);
            }
        }
        return 0;
    }

    @Override
    public Bundle getJavaProcessRss() {
        TranSdkLog.w(TAG, "can not find method getJavaProcessRss");
        return null;
    }

    @Override
    public long[] getKernelMemInfo() {
        TranSdkLog.w(TAG, "can not find method getKernelMemInfo");
        return null;
    }

    @Override
    public String getLaunchedFromPackage(IBinder iBinder) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getLaunchedFromPackage", IBinder.class), TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]), iBinder);
    }

    @Override
    public int getLaunchedFromUid(IBinder iBinder) {
        Method method = TranDoorMan.getMethod(sClassName, "getLaunchedFromUid", IBinder.class);
        this.mMethodGetService.setAccessible(true);
        Object objInvokeMethod = TranDoorMan.invokeMethod(method, TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]), iBinder);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public List<Bundle> getLightEffectInfos(int i) {
        return Collections.emptyList();
    }

    @Override
    public Bundle getLightStyleDataBundle(int i) {
        return new Bundle();
    }

    @Override
    public int[] getLightStyleIdArray(int i) {
        return new int[0];
    }

    @Override
    public int[] getLightStyleIdData(int i) {
        return new int[0];
    }

    @Override
    public Locale getLocale() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.app.ActivityManagerNative"), "getDefault", new Class[0]), null, new Object[0]);
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getConfiguration", new Class[0]), objInvokeMethod, new Object[0]);
        return (Locale) TranDoorMan.getFieldValue(TranDoorMan.getField(objInvokeMethod2.getClass(), CommonUrlParts.LOCALE), objInvokeMethod2);
    }

    @Override
    public int getLockTaskModeState() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "getLockTaskModeState", new Class[0]), (ActivityManager) this.mContext.getSystemService("activity"), new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public List<String> getMEMCList(String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "getMEMCList", String.class);
        return method != null ? (List) TranDoorMan.invokeMethod(method, objInvokeMethod, str) : new ArrayList();
    }

    @Override
    @Deprecated
    public int getMemoryForMF(String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "getMemoryForMF", String.class);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, objInvokeMethod, str)).intValue();
        }
        return -1;
    }

    @Override
    public Bundle getNativeProcessRss() {
        TranSdkLog.w(TAG, "can not find method getNativeProcessRss");
        return null;
    }

    @Override
    public ComponentName getRealActivity(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            try {
                Object obj = TranDoorMan.getField(getRootTaskInfoClass(), "realActivity").get(runningTaskInfo);
                if (obj instanceof ComponentName) {
                    return (ComponentName) obj;
                }
                return null;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "getRealActivity fail: " + e);
            }
        }
        return null;
    }

    @Override
    @Deprecated
    public List<String> getSwapFileSizeList() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "getSwapFileSizeList", new Class[0]);
        if (method != null) {
            return (List) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
        }
        return null;
    }

    @Override
    public int getTargetFps(String str, String str2) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "getTargetFps", String.class, String.class);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, objInvokeMethod, str, str2)).intValue();
        }
        return 0;
    }

    @Override
    public ActivityInfo getTopActivityInfo() {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) this.mContext.getSystemService("activity")).getRunningTasks(1);
            if (runningTasks != null && !runningTasks.isEmpty()) {
                ActivityManager.RunningTaskInfo runningTaskInfo = runningTasks.get(0);
                Object obj = TranDoorMan.getField(runningTaskInfo.getClass(), "topActivityInfo").get(runningTaskInfo);
                if (obj instanceof ActivityInfo) {
                    return (ActivityInfo) obj;
                }
                return null;
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getTopActivityInfo fail: " + e);
        }
        return null;
    }

    @Override
    public int getTopActivityType(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            try {
                Object obj = TranDoorMan.getField(getRootTaskInfoClass(), "topActivityType").get(runningTaskInfo);
                if (obj instanceof Integer) {
                    return ((Integer) obj).intValue();
                }
                return 0;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "getTopActivityType fail: " + e);
            }
        }
        return 0;
    }

    @Override
    public String getTranAppmSystemInfo(String str) {
        Method method;
        Object objInvokeMethod;
        Method method2;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return "unknown";
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "activity");
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.app.ITranActivityManager$Stub");
        return (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null || (method2 = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getTranAppmSystemInfo", String.class)) == null) ? "unknown" : (String) TranDoorMan.invokeMethod(method2, objInvokeMethod, str);
    }

    @Override
    public List<String> getTranGameList(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "getTranGameList", Integer.TYPE);
        return method != null ? (List) TranDoorMan.invokeMethod(method, objInvokeMethod, Integer.valueOf(i)) : new ArrayList();
    }

    @Override
    public int getUserId(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            try {
                Object obj = TranDoorMan.getField(getRootTaskInfoClass(), "userId").get(runningTaskInfo);
                if (obj instanceof Integer) {
                    return ((Integer) obj).intValue();
                }
                return 0;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "getUserId fail: " + e);
            }
        }
        return 0;
    }

    @Override
    public int getWindowingMode(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            try {
                Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(getRootTaskInfoClass(), "getWindowingMode", new Class[0]), runningTaskInfo, new Object[0]);
                if (objInvokeMethod instanceof Integer) {
                    return ((Integer) objInvokeMethod).intValue();
                }
                return 0;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "getWindowingMode fail: " + e);
            }
        }
        return 0;
    }

    @Override
    public void hookDisturbStatus(int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "hookDisturbStatus", Integer.TYPE), TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]), Integer.valueOf(i));
    }

    @Override
    public boolean ignoreCPUAndMemoryPressureForPreload() {
        return false;
    }

    @Override
    public boolean inMultiWindowMode(int i) {
        Class cls = TranDoorMan.getClass("android.app.WindowConfiguration");
        String str = TAG;
        TranSdkLog.e(str, "sWindowConfigurationClass： " + cls);
        Method method = TranDoorMan.getMethod(cls, "inMultiWindowMode", Integer.TYPE);
        TranSdkLog.e(str, "inMultiWindowMode： " + method);
        Object objInvokeMethod = TranDoorMan.invokeMethod(method, cls, Integer.valueOf(i));
        boolean zBooleanValue = objInvokeMethod instanceof Boolean ? ((Boolean) objInvokeMethod).booleanValue() : false;
        TranSdkLog.e(str, "obj： " + objInvokeMethod);
        return zBooleanValue;
    }

    @Override
    public boolean isEnabledHiber() {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Method method = TranDoorMan.getMethod(activityManager.getClass(), "isEnabledHiber", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, activityManager, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isGameGuardSupport() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "isGameGuardSupport", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isInGameGuardProtectedList(String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "isInGameGuardProtectedList", String.class);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, str)).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isInLockTaskMode() {
        try {
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "isInLockTaskMode", new Class[0]), (ActivityManager) TranDoorMan.getConstructor(sActivityManagerClass, new Class[]{Context.class, Handler.class}).newInstance(getContext(), null), new Object[0]);
            if (objInvokeMethod instanceof Boolean) {
                return ((Boolean) objInvokeMethod).booleanValue();
            }
            return false;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "isInLockTaskMode fail " + e);
            return false;
        }
    }

    @Override
    public boolean isLowRamDeviceStatic() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "isLowRamDeviceStatic", new Class[0]), sActivityManagerClass, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    @Deprecated
    public boolean isMatchCurMemSelection() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "isMatchCurMemSelection", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    @Deprecated
    public boolean isMemSettingEnterEnabled() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "isMemSettingEnterEnabled", new Class[0]);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]));
        }
        return false;
    }

    @Override
    @Deprecated
    public int isMemoryEnoughToMF(String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "isMemoryEnoughToMF", String.class);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, objInvokeMethod, str)).intValue();
        }
        return -1;
    }

    @Override
    public boolean isRequestChangeParams(String str, String str2) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(activityManager.getClass(), "isRequestChangeParams", String.class, String.class), activityManager, str, str2);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isUserRunning(int i, int i2) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Class<?> cls = sClassName;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "isUserRunning", cls2, cls2);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, objInvokeMethod, Integer.valueOf(i), Integer.valueOf(i2)));
        }
        TranSdkLog.w(TAG, "can not find method isUserRunning");
        return false;
    }

    @Override
    @Deprecated
    public boolean isUxCompactionSupport() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "isUxCompactionSupport", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isVisible(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null) {
            try {
                Object obj = TranDoorMan.getField(getRootTaskInfoClass(), "isVisible").get(runningTaskInfo);
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue();
                }
                return false;
            } catch (Exception e) {
                TranSdkLog.e(TAG, "isVisible fail: " + e);
            }
        }
        return false;
    }

    @Override
    public boolean isWhiteApp(String str) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Method method = TranDoorMan.getMethod(activityManager.getClass(), "isWhiteApp", String.class);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, activityManager, str)).booleanValue();
        }
        return false;
    }

    @Override
    public void notifyInterceptUnknowSource(boolean z) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException(EXCEPTION_WARNING);
    }

    @Override
    public boolean registerActivityStartObserver(String[] strArr, TranActivityManager.TranActivityStartObserver tranActivityStartObserver) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerActivityStartObserver");
    }

    @Override
    public void registerAppRecoveryCallback(TranActivityManager.ITranAppRecoveryCallback iTranAppRecoveryCallback, IBinder iBinder) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerAppRecoveryCallback");
    }

    @Override
    public boolean registerAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener) {
        TranSdkLog.w(TAG, "can not find method registerAudioVolumeListener");
        return false;
    }

    @Override
    public void registerBloodOxygenLedStateListener(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unRegisterAppRecoveryCallback");
    }

    @Override
    public void registerProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner) {
        TranAospProcessObserver tranAospProcessObserver = new TranAospProcessObserver(iTranProcessObserverInner);
        this.mObserverMap.put(iTranProcessObserverInner, tranAospProcessObserver);
        this.mManagerExt.registerProcessObserver(tranAospProcessObserver);
    }

    @Override
    public void registerTaskStackListener(final TranTaskStackListener tranTaskStackListener) {
        TranAospActivityManagerExt.TranTaskStackListener tranTaskStackListener2 = new TranAospActivityManagerExt.TranTaskStackListener() {
            @Override
            public void onLockTaskModeChanged(int i) {
                TranSdkLog.d(TranAospActivityManager.TAG, "onLockTaskModeChanged listener" + tranTaskStackListener);
                tranTaskStackListener.onLockTaskModeChanged(i);
            }

            @Override
            public void onTaskCreated(int i, ComponentName componentName) {
                TranSdkLog.d(TranAospActivityManager.TAG, "onTaskCreated listener" + tranTaskStackListener);
                tranTaskStackListener.onTaskCreated(i, componentName);
            }

            @Override
            public void onTaskFocusChanged(int i, boolean z) {
                TranSdkLog.d(TranAospActivityManager.TAG, "onTaskFocusChanged listener" + tranTaskStackListener);
                tranTaskStackListener.onTaskFocusChanged(i, z);
            }
        };
        this.mTranTaskStackListeners.put(tranTaskStackListener, tranTaskStackListener2);
        this.mManagerExt.registerTaskStackListener(tranTaskStackListener2);
    }

    @Override
    public void registerTranNecessityServices(ITranNecessityWindowService iTranNecessityWindowService) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Do not support method registerEmergencyNecessity in AOSP");
    }

    @Override
    public void registerUserSwitchObserver(final TranUserSwitchObserver tranUserSwitchObserver, String str) {
        if (tranUserSwitchObserver != null) {
            TranAospActivityManagerExt.TranUserSwitchObserver tranUserSwitchObserver2 = new TranAospActivityManagerExt.TranUserSwitchObserver() {
                @Override
                public void onUserSwitchComplete(int i) {
                    tranUserSwitchObserver.onUserSwitchComplete(i);
                }

                @Override
                public void onUserSwitching(int i) {
                    tranUserSwitchObserver.onUserSwitching(i);
                }
            };
            this.mManagerExt.registerUserSwitchObserver(tranUserSwitchObserver2, str);
            this.mTranUserSwitchListeners.put(tranUserSwitchObserver, tranUserSwitchObserver2);
        }
    }

    @Override
    public void reportAbnormalApp(Bundle bundle, String str, String str2) {
    }

    @Override
    public boolean resetAllTest() {
        return false;
    }

    @Override
    public void resumeAppSwitches() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "resumeAppSwitches", new Class[0]);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
        }
    }

    @Override
    public boolean sendMallocDebugSignal(String str, String str2) {
        TranSdkLog.w(TAG, "can not find method sendMallocDebugSignal");
        return false;
    }

    @Override
    public boolean setAppForFixAdj(int i, String str, String str2) {
        return false;
    }

    @Override
    public boolean setAppIdleForLimit(String str, int i) {
        return false;
    }

    @Override
    public List<String> setAppInCgroup(int i, String str, boolean z) {
        return Collections.emptyList();
    }

    @Override
    public void setAppMode(int i, int i2) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Class<?> cls = activityManager.getClass();
        Class cls2 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setAppMode", cls2, cls2), activityManager, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void setAudioPatch(String str) {
        TranSdkLog.w(TAG, "can not find method setAudioPatch");
    }

    @Override
    public void setBlackListToSystem(List<String> list) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException(EXCEPTION_WARNING);
    }

    @Override
    public boolean setCleanProtect(String str, boolean z) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(activityManager.getClass(), "setCleanProtect", String.class, Boolean.TYPE), activityManager, str, Boolean.valueOf(z));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean setCpuPresureLevel(int i) {
        return false;
    }

    @Override
    public boolean setCpuSystemSence(int i) {
        return false;
    }

    @Override
    public boolean setCpuUsagePercentForKill(int i) {
        return false;
    }

    @Override
    public void setCurrentActivityKeepAwake() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("com.transsion.app.ActivityManager"), "instance", new Class[0]), null, new Object[0]);
        if (objInvokeMethod != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setCurrentActivityKeepAwake", new Class[0]), objInvokeMethod, new Object[0]);
        }
    }

    @Override
    public boolean setETControl(String str, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("com.transsion.hubcore.server.am.ITranActivityManagerService"), "Instance", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null) {
            return false;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setETControl", String.class, Boolean.TYPE), objInvokeMethod, str, Boolean.valueOf(z));
        if (objInvokeMethod2 instanceof Boolean) {
            return ((Boolean) objInvokeMethod2).booleanValue();
        }
        return false;
    }

    @Override
    public boolean setGameParam(String str, String str2, String str3) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "setGameParam", String.class, String.class, String.class);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, str, str2, str3)).booleanValue();
        }
        return false;
    }

    @Override
    public void setLedMusicPlay(boolean z) throws TranThubIncompatibleException {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "activity");
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.app.ITranActivityManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setLedMusicPlay", Boolean.TYPE), objInvokeMethod, Boolean.valueOf(z));
    }

    @Override
    public void setLightingEffect(int[] iArr) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method setLightingEffect");
    }

    @Override
    public void setLightingScene(int i, int[] iArr, Bundle bundle) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method setLightingScene");
    }

    @Override
    public boolean setMemSystemSence(int i) {
        return false;
    }

    @Override
    public boolean setMemoryPresureLevel(int i) {
        return false;
    }

    @Override
    public boolean setTestMode(boolean z) {
        return false;
    }

    @Override
    public boolean startProfile(UserHandle userHandle) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(activityManager.getClass(), "startProfile", UserHandle.class), activityManager, userHandle);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public void startTNE(String str, long j, int i, String str2) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "startTNE", String.class, Long.TYPE, Integer.TYPE, String.class), TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]), str, Long.valueOf(j), Integer.valueOf(i), str2);
    }

    @Override
    public boolean startUserInBackground(int i) {
        Class cls = TranDoorMan.getClass("android.os.ServiceManager");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getService", String.class), cls, "activity");
        IBinder iBinder = objInvokeMethod instanceof IBinder ? (IBinder) objInvokeMethod : null;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("binder is ");
        sb.append(iBinder == null ? "null" : "not null");
        TranSdkLog.d(str, sb.toString());
        Class cls2 = TranDoorMan.getClass("android.app.IActivityManager$Stub");
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("object is ");
        sb2.append(objInvokeMethod2 == null ? "null" : "not null");
        TranSdkLog.d(str, sb2.toString());
        boolean zBooleanValue = false;
        if (objInvokeMethod2 != null) {
            Object objInvokeMethod3 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod2.getClass(), "startUserInBackground", Integer.TYPE), objInvokeMethod2, Integer.valueOf(i));
            zBooleanValue = objInvokeMethod3 instanceof Boolean ? ((Boolean) objInvokeMethod3).booleanValue() : false;
            TranSdkLog.d(str, objInvokeMethod2.getClass().getName() + " result: " + zBooleanValue);
        }
        return zBooleanValue;
    }

    @Override
    public void stopAppForUser(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "stopAppForUser", String.class, Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, str, Integer.valueOf(i));
        }
    }

    @Override
    public boolean swipeUpClean(String str, int i) {
        return false;
    }

    @Override
    @Deprecated
    public void switchMemFusion(boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "switchMemFusion", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, Boolean.valueOf(z));
        }
    }

    @Override
    @Deprecated
    public void switchUXCompaction(boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]);
        Method method = TranDoorMan.getMethod(sClassName, "switchUXCompaction", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, Boolean.valueOf(z));
        }
    }

    @Override
    public void toggleFreeformWindowingMode(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("com.transsion.app.ActivityManager"), "instance", new Class[0]), null, new Object[0]);
        if (objInvokeMethod != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "toggleFreeformWindowingMode", Integer.TYPE), objInvokeMethod, Integer.valueOf(i));
        }
    }

    @Override
    public boolean triggerCpuKillAppForLimit(String str, String str2, int i) {
        return false;
    }

    @Override
    public boolean triggerHealthBlockAppForLimit(String str, int i) {
        return false;
    }

    @Override
    public boolean triggerMPSKByMemAvailable(long j) {
        return false;
    }

    @Override
    public boolean triggerMPSKByMemAvailableExt(int i) {
        return false;
    }

    @Override
    public boolean triggerMPSKByMemFree(long j) {
        return false;
    }

    @Override
    public boolean triggerMPSKByMemFreeExt(int i) {
        return false;
    }

    @Override
    public boolean triggerMPSKBySwapFree(long j) {
        return false;
    }

    @Override
    public boolean triggerMPSKBySwapFreeExt(int i) {
        return false;
    }

    @Override
    public boolean triggerMemPressureforSortKill() {
        return false;
    }

    @Override
    public boolean triggerMemoryLowKillAppForLimit(String str, String str2, int i) {
        return false;
    }

    @Override
    public void unRegisterAppRecoveryCallback(IBinder iBinder) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unRegisterAppRecoveryCallback");
    }

    @Override
    public void unRegisterBloodOxygenLedStateListener(TranActivityManager.ITranBloodOxygenLedStateCallback iTranBloodOxygenLedStateCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unRegisterAppRecoveryCallback");
    }

    @Override
    public void unRegisterProcessObserver(TranActivityManager.ITranProcessObserverInner iTranProcessObserverInner) {
        TranAospProcessObserver tranAospProcessObserver = this.mObserverMap.get(iTranProcessObserverInner);
        if (tranAospProcessObserver != null) {
            this.mManagerExt.unRegisterProcessObserver(tranAospProcessObserver);
            this.mObserverMap.remove(tranAospProcessObserver);
        }
    }

    @Override
    public void unregisterActivityStartObserver(TranActivityManager.TranActivityStartObserver tranActivityStartObserver) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerActivityStartObserver");
    }

    @Override
    public boolean unregisterAudioVolumeListener(ITranAudioVolumeListener iTranAudioVolumeListener) {
        TranSdkLog.w(TAG, "can not find method unregisterAudioVolumeListener");
        return false;
    }

    @Override
    public void unregisterTaskStackListener(TranTaskStackListener tranTaskStackListener) {
        this.mManagerExt.unregisterTaskStackListener(this.mTranTaskStackListeners.get(tranTaskStackListener));
        this.mTranTaskStackListeners.remove(tranTaskStackListener);
    }

    @Override
    public void unregisterUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver) {
        if (tranUserSwitchObserver != null) {
            this.mManagerExt.unregisterUserSwitchObserver(this.mTranUserSwitchListeners.get(tranUserSwitchObserver));
            this.mTranUserSwitchListeners.remove(tranUserSwitchObserver);
        }
    }

    @Override
    public void doClean(int i, List<String> list) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "doClean", Integer.TYPE, List.class), TranDoorMan.invokeMethod(this.mMethodGetService, null, new Object[0]), Integer.valueOf(i), list);
    }
}
