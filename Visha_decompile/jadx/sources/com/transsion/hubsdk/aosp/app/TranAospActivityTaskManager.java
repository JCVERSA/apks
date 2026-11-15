package com.transsion.hubsdk.aosp.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.SurfaceControl;
import com.transsion.hubsdk.api.app.ITranActivityController;
import com.transsion.hubsdk.api.app.TranActivityStarterExecutedObserver;
import com.transsion.hubsdk.api.app.TranActivityTaskManager;
import com.transsion.hubsdk.api.app.TranRootTaskInfo;
import com.transsion.hubsdk.api.window.TranTaskSnapshot;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.app.ITranActivityTaskManagerAdapter;
import defpackage.bwa;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TranAospActivityTaskManager implements ITranActivityTaskManagerAdapter {
    public static final String APP_LOCK_PACKAGE = "com.transsion.applock";
    public static final String FACEBOOKMESSAGE = "com.facebook.orca";
    public static final int NORMAL_ID = 0;
    public static final String SPLIT_SCREEN_PKG = "com.transsion.splitscreen";
    private static final String TAG = "TranAospActivityTaskManager";
    public static final int TWIN_ID = 999;
    public static final int WINDOWING_MODE = 5;
    public static final int WINDOWING_MODE_DEF = -2;
    public static final int WINDOWING_MODE_FREEFORM = 5;
    public static final int WINDOWING_MODE_FULLSCREEN = 1;
    public static final int WINDOWING_MODE_MULTI_WINDOW = 6;
    public static final int WINDOWING_MODE_PINNED = 2;
    private final TranAospActivityTaskManagerExt mActivityTaskExt;
    private final Context mContext;
    private ITranActivityController mController;
    private final Object mObject;
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.ActivityTaskManager");
    private static Class<?> sClass = TranDoorMan.getClass("android.app.IActivityTaskManager");
    private static Class<?> sActivityManagerClass = TranDoorMan.getClass("android.app.ActivityManager");
    private static Class<?> sManagerClassName = TranDoorMan.getClass("android.os.ServiceManager");
    private static Class<?> sClassNameStub = TranDoorMan.getClass("android.app.IActivityTaskManager$Stub");
    private static Class<?> sTaskSnapshotClass = TranDoorMan.getClass("android.window.TaskSnapshot");
    private static int sMaxRecentTasks = -1;

    public class TranActivityControllerExt extends ITranActivityController.Stub {
        public TranActivityControllerExt() {
        }

        @Override
        public boolean activityResuming(String str) throws RemoteException {
            if (TranAospActivityTaskManager.this.mController != null) {
                return TranAospActivityTaskManager.this.mController.activityResuming(str);
            }
            return false;
        }

        @Override
        public boolean activityStarting(Intent intent, String str) throws RemoteException {
            if (TranAospActivityTaskManager.this.mController != null) {
                return TranAospActivityTaskManager.this.mController.activityStarting(intent, str);
            }
            return false;
        }

        @Override
        public boolean appCrashed(String str, int i, String str2, String str3, long j, String str4) throws RemoteException {
            if (TranAospActivityTaskManager.this.mController != null) {
                return TranAospActivityTaskManager.this.mController.appCrashed(str, i, str2, str3, j, str4);
            }
            return false;
        }

        @Override
        public int appEarlyNotResponding(String str, int i, String str2) throws RemoteException {
            if (TranAospActivityTaskManager.this.mController != null) {
                return TranAospActivityTaskManager.this.mController.appEarlyNotResponding(str, i, str2);
            }
            return 0;
        }

        @Override
        public int appNotResponding(String str, int i, String str2) throws RemoteException {
            if (TranAospActivityTaskManager.this.mController != null) {
                return TranAospActivityTaskManager.this.mController.appNotResponding(str, i, str2);
            }
            return 0;
        }

        @Override
        public int systemNotResponding(String str) throws RemoteException {
            if (TranAospActivityTaskManager.this.mController != null) {
                return TranAospActivityTaskManager.this.mController.systemNotResponding(str);
            }
            return 0;
        }
    }

    public TranAospActivityTaskManager() {
        Context applicationContext = TranHubSdkManager.getContext().getApplicationContext();
        this.mContext = applicationContext;
        this.mActivityTaskExt = new TranAospActivityTaskManagerExt(applicationContext);
        this.mObject = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getService", new Class[0]), null, new Object[0]);
    }

    private List<Object> getAllRootTaskInfosList() {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        Class cls = TranDoorMan.getClass("android.app.IActivityManager");
        Object objInvokeMethod = TranDoorMan.invokeMethod(Build.VERSION.SDK_INT >= 31 ? TranDoorMan.getMethod(cls, "getAllRootTaskInfos", new Class[0]) : TranDoorMan.getMethod(cls, "getAllStackInfos", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(ActivityManager.class, "getService", new Class[0]), activityManager, new Object[0]), new Object[0]);
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            arrayList.addAll((List) objInvokeMethod);
        }
        return arrayList;
    }

    private Field getChildTaskNamesField(Object obj) {
        return Build.VERSION.SDK_INT >= 31 ? TranDoorMan.getField(obj.getClass(), "childTaskNames") : TranDoorMan.getField(obj.getClass(), "taskNames");
    }

    private Configuration getConfiguration(Object obj) {
        Object fieldValue = TranDoorMan.getFieldValue(TranDoorMan.getField(obj.getClass(), "configuration"), obj);
        if (fieldValue instanceof Configuration) {
            return (Configuration) fieldValue;
        }
        return null;
    }

    private boolean getRealClassMode(Object obj, String str) {
        return getStackInfoClsName(obj, str) || isStackInfoTopClassName(obj, str);
    }

    private Class<?> getRootTaskInfoClass() {
        return Build.VERSION.SDK_INT >= 31 ? TranDoorMan.getClass("android.app.TaskInfo") : TranDoorMan.getClass("android.app.ActivityManager$StackInfo");
    }

    private Configuration getRunningTaskInfoConfiguration(Object obj) {
        try {
            return (Configuration) TranDoorMan.getField(TranDoorMan.getClass("android.app.ActivityManager$RunningTaskInfo"), "configuration").get(obj);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getRunningTaskInfoConfiguration, exception: " + e);
            return null;
        }
    }

    private boolean getStackInfoClsName(Object obj, String str) {
        try {
            String[] strArr = (String[]) getChildTaskNamesField(obj).get(obj);
            String str2 = "";
            if (strArr != null && strArr.length > 0) {
                for (String str3 : strArr) {
                    String[] strArrSplit = str3.split("/");
                    if (strArrSplit.length > 1) {
                        str2 = strArrSplit[1];
                    }
                    if (str.equals(str2)) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getStackInfoClsName, exception: " + e);
        }
        return false;
    }

    private String getStackInfoPackageName(Object obj) {
        try {
            String[] strArr = (String[]) getChildTaskNamesField(obj).get(obj);
            String str = strArr.length > 0 ? strArr[0].split("/")[0] : "";
            return (!SPLIT_SCREEN_PKG.equals(str) || strArr.length <= 1) ? str : strArr[1].split("/")[0];
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getStackInfoPackageName, exception: " + e);
            return null;
        }
    }

    private String getStackInfoTopPackageName(Object obj) {
        ComponentName componentName = (ComponentName) TranDoorMan.getFieldValue(TranDoorMan.getField(obj.getClass(), "topActivity"), obj);
        return componentName != null ? componentName.getPackageName() : "";
    }

    private int getTaskId(Object obj) {
        return ((int[]) TranDoorMan.getFieldValue(Build.VERSION.SDK_INT >= 31 ? TranDoorMan.getField(TranDoorMan.getClass("android.app.ActivityTaskManager$RootTaskInfo"), "childTaskIds") : TranDoorMan.getField(TranDoorMan.getClass("android.app.ActivityManager$StackInfo"), "taskIds"), obj))[0];
    }

    private int getTaskInfoDisplayId(Object obj) {
        Object fieldValue = TranDoorMan.getFieldValue(TranDoorMan.getField(getRootTaskInfoClass(), "displayId"), obj);
        if (fieldValue instanceof Integer) {
            return ((Integer) fieldValue).intValue();
        }
        return 0;
    }

    private static Object getWindowConfiguration(Configuration configuration) {
        try {
            return TranDoorMan.getField(Configuration.class, "windowConfiguration").get(configuration);
        } catch (Exception e) {
            TranSdkLog.d(TAG, "getWindowConfiguration, Exception: " + e);
            return null;
        }
    }

    private static int getWindowingMode(Object obj) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.app.WindowConfiguration"), "getWindowingMode", new Class[0]), obj, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    private boolean isGivenStackInfoPackageName(Object obj, String str) {
        try {
            String[] strArr = (String[]) TranDoorMan.getFieldValue(getChildTaskNamesField(obj), obj);
            if (strArr != null && strArr.length > 0) {
                for (String str2 : strArr) {
                    if (str.equals(str2.split("/")[0])) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "isGivenStackInfoPackageName, exception: " + e);
        }
        return false;
    }

    private boolean isStackInfoTopClassName(Object obj, String str) {
        try {
            Class<?> rootTaskInfoClass = getRootTaskInfoClass();
            ComponentName componentName = (ComponentName) TranDoorMan.getField(rootTaskInfoClass, "topActivity").get(obj);
            if (componentName != null && str.equals(componentName.getClassName())) {
                return true;
            }
            ComponentName componentName2 = (ComponentName) TranDoorMan.getField(rootTaskInfoClass, "realActivity").get(obj);
            return componentName2 != null && str.equals(componentName2.getClassName());
        } catch (Exception e) {
            TranSdkLog.d(TAG, "getStackInfoTopClassName, Exception: " + e.toString());
            return false;
        }
    }

    @Override
    public boolean activityInMultiWindow(String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "activityInMultiWindow", String.class), this.mObject, str);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public void addAnimationIconLayer(SurfaceControl surfaceControl) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "addAnimationIconLayer", SurfaceControl.class), this.mObject, surfaceControl);
    }

    @Override
    public void addMultiExchangeListener(String str, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "addMultiExchangeListener", String.class, TranActivityTaskManager.TranWindowContainerTransactionCallback.class);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, str, tranWindowContainerTransactionCallback);
    }

    @Override
    public void boostEndInLauncher(int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "boostEndInLauncher", Integer.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i));
    }

    @Override
    public void boostIMEEnd(String str) {
        TranSdkLog.e(TAG, "boostIMEEnd has been deleted from AOSP");
    }

    @Override
    public void boostIMEStart(int i, String str) {
        TranSdkLog.e(TAG, "boostIMEStart has been deleted from AOSP");
    }

    @Override
    public void boostInFling(int i, boolean z, int i2) {
        TranSdkLog.e(TAG, "boostInFling has been deleted from AOSP");
    }

    @Override
    public void boostSceneEnd(int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "boostSceneEnd", Integer.TYPE), this.mObject, Integer.valueOf(i));
    }

    @Override
    public void boostSceneStart(int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "boostSceneStart", Integer.TYPE), this.mObject, Integer.valueOf(i));
    }

    @Override
    public void boostStartInLauncher(int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "boostStartInLauncher", Integer.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i));
    }

    @Override
    public boolean checkAndUpdateEventStateForMulti(String str, boolean z, boolean z2, long j) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Boolean.TYPE;
        Method method = TranDoorMan.getMethod(cls, "checkAndUpdateEventStateForMulti", String.class, cls2, cls2, Long.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return true;
        }
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, obj, str, Boolean.valueOf(z), Boolean.valueOf(z2), Long.valueOf(j)));
    }

    @Override
    public boolean checkTaskCanEnterMultiWin(int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "checkTaskCanEnterMultiWin", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return true;
        }
        return ((Boolean) TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i))).booleanValue();
    }

    @Override
    public void clearFinishFixedRotationWithTransaction() {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "clearFinishFixedRotationWithTransaction", new Class[0]), this.mObject, new Object[0]);
    }

    @Override
    public void clearMultiWindowExtendSize(int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "clearMultiWindowExtendSize", Integer.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i));
    }

    @Override
    public List<String> getAllMultiWindowPackageInfo() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "getAllMultiWindowPackageInfo", new Class[0]);
        return (method == null || (obj = this.mObject) == null) ? new ArrayList() : (List) TranDoorMan.invokeMethod(method, obj, new Object[0]);
    }

    @Override
    public List<ActivityManager.RunningTaskInfo> getAllMultiWindowTaskInfo() {
        Method method = TranDoorMan.getMethod(sClass, "getAllMultiWindowTaskInfo", new Class[0]);
        if (method != null) {
            return (List) TranDoorMan.invokeMethod(method, this.mObject, new Object[0]);
        }
        return null;
    }

    @Override
    public List<TranRootTaskInfo> getAllRootTaskInfosOnDisplay(int i) {
        Class cls = TranDoorMan.getClass("android.app.ActivityTaskManager$RootTaskInfo");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getAllRootTaskInfosOnDisplay", Integer.TYPE), this.mObject, Integer.valueOf(i));
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            for (Object obj : (List) objInvokeMethod) {
                if (obj.getClass().equals(cls)) {
                    arrayList.add(cls.cast(obj));
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (cls.isInstance(obj2)) {
                TranSdkLog.i(TAG, "RootTaskInfo");
            }
            try {
                TranRootTaskInfo tranRootTaskInfo = new TranRootTaskInfo();
                tranRootTaskInfo.setTopActivity((ComponentName) TranDoorMan.getField(getRootTaskInfoClass(), "topActivity").get(obj2));
                tranRootTaskInfo.setBounds((Rect) TranDoorMan.getField(cls, "bounds").get(obj2));
                tranRootTaskInfo.setChildTaskIds((int[]) TranDoorMan.getField(cls, "childTaskIds").get(obj2));
                tranRootTaskInfo.setChildTaskNames((String[]) TranDoorMan.getField(cls, "childTaskNames").get(obj2));
                tranRootTaskInfo.setChildTaskBounds((Rect[]) TranDoorMan.getField(cls, "childTaskBounds").get(obj2));
                tranRootTaskInfo.setChildTaskUserIds((int[]) TranDoorMan.getField(cls, "childTaskUserIds").get(obj2));
                tranRootTaskInfo.setVisible(TranDoorMan.getField(cls, "visible").getBoolean(obj2));
                tranRootTaskInfo.setPosition(TranDoorMan.getField(cls, "position").getInt(obj2));
                tranRootTaskInfo.setWindowingMode(getWindowingMode(getWindowConfiguration((Configuration) TranDoorMan.getField(getRootTaskInfoClass(), "configuration").get(obj2))));
                tranRootTaskInfo.setTaskId(TranDoorMan.getField(getRootTaskInfoClass(), "taskId").getInt(obj2));
                arrayList2.add(tranRootTaskInfo);
            } catch (Exception unused) {
                TranSdkLog.e(TAG, "RootTaskInfo fail:" + obj2);
            }
        }
        return arrayList2;
    }

    @Override
    public SurfaceControl getDefaultRootLeash() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getDefaultRootLeash", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof SurfaceControl) {
            return (SurfaceControl) objInvokeMethod;
        }
        return null;
    }

    @Override
    public SurfaceControl getDragAndZoomBgLeash(int i, int i2, int i3, int i4, boolean z) {
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getDragAndZoomBgLeash", cls2, cls2, cls2, cls2, Boolean.TYPE), this.mObject, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Boolean.valueOf(z));
        if (objInvokeMethod instanceof SurfaceControl) {
            return (SurfaceControl) objInvokeMethod;
        }
        return null;
    }

    @Override
    public String getFocusedWinPkgName() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getFocusedWinPkgName", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof String) {
            return (String) objInvokeMethod;
        }
        return null;
    }

    @Override
    public int getGivenPkgWindowMode(String str) {
        Object windowConfiguration;
        int windowingMode = -2;
        try {
            for (Object obj : getAllRootTaskInfosList()) {
                if (!isGivenStackInfoPackageName(obj, str) && !str.equals(getStackInfoTopPackageName(obj))) {
                }
                Configuration configuration = getConfiguration(obj);
                if (configuration == null || (windowConfiguration = getWindowConfiguration(configuration)) == null) {
                    return -2;
                }
                windowingMode = getWindowingMode(windowConfiguration);
                TranSdkLog.d(TAG, "mode = " + windowingMode);
                return windowingMode;
            }
            return -2;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getGivenPkgWindowMode, exception: " + e);
            return windowingMode;
        }
    }

    @Override
    public int getGivenPkgWindowModeForCls(String str, String str2) {
        Object windowConfiguration;
        int windowingMode = -2;
        try {
            for (Object obj : getAllRootTaskInfosList()) {
                if (isGivenStackInfoPackageName(obj, str) || str.equals(getStackInfoTopPackageName(obj))) {
                    if (getRealClassMode(obj, str2)) {
                        Configuration configuration = getConfiguration(obj);
                        if (configuration == null || (windowConfiguration = getWindowConfiguration(configuration)) == null) {
                            return -2;
                        }
                        windowingMode = getWindowingMode(windowConfiguration);
                        TranSdkLog.d(TAG, "mode = " + windowingMode + " clsname = " + str2);
                        return windowingMode;
                    }
                }
            }
            return -2;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getGivenPkgWindowModeForCls, exception: " + e);
            return windowingMode;
        }
    }

    @Override
    public HardwareBuffer getHardwareBuffer(int i, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getTaskSnapshot", Integer.TYPE, Boolean.TYPE), this.mObject, Integer.valueOf(i), Boolean.FALSE);
        if (Build.VERSION.SDK_INT >= 31) {
            Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.window.TaskSnapshot"), "getHardwareBuffer", new Class[0]), objInvokeMethod, new Object[0]);
            if (objInvokeMethod2 instanceof HardwareBuffer) {
                return (HardwareBuffer) objInvokeMethod2;
            }
            return null;
        }
        Object objInvokeMethod3 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.app.ActivityManager$TaskSnapshot"), "getSnapshot", new Class[0]), objInvokeMethod, new Object[0]);
        if (objInvokeMethod3 == null) {
            return null;
        }
        Object objInvokeMethod4 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(HardwareBuffer.class, "createFromGraphicBuffer", objInvokeMethod3.getClass()), null, objInvokeMethod3);
        if (objInvokeMethod4 instanceof HardwareBuffer) {
            return (HardwareBuffer) objInvokeMethod4;
        }
        return null;
    }

    @Override
    public int getMaxRecentTasksStatic() {
        if (sMaxRecentTasks < 0) {
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sActivityManagerClass, "isLowRamDeviceStatic", new Class[0]), sActivityManagerClass, new Object[0]);
            sMaxRecentTasks = objInvokeMethod instanceof Boolean ? ((Boolean) objInvokeMethod).booleanValue() : false ? 36 : 48;
        }
        return sMaxRecentTasks;
    }

    @Override
    public Bundle getMultiDisplayAreaAppInfo(int i, int i2) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "getMultiDisplayAreaAppInfo", cls2, cls2);
        if (method == null || (obj = this.mObject) == null) {
            return null;
        }
        return (Bundle) TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public String getMultiDisplayAreaTopPackageV4(int i, int i2) {
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getMultiDisplayAreaTopPackageV4", cls2, cls2), this.mObject, Integer.valueOf(i), Integer.valueOf(i2));
        if (objInvokeMethod instanceof String) {
            return (String) objInvokeMethod;
        }
        return null;
    }

    @Override
    public ActivityManager.RunningTaskInfo getMultiWinTopTask(int i, int i2) {
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getMultiWinTopTask", cls2, cls2), this.mObject, Integer.valueOf(i), Integer.valueOf(i2));
        if (objInvokeMethod instanceof ActivityManager.RunningTaskInfo) {
            return (ActivityManager.RunningTaskInfo) objInvokeMethod;
        }
        return null;
    }

    @Override
    public List<String> getMultiWindowBlackList() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getMultiWindowBlackList", new Class[0]), this.mObject, new Object[0]);
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((String) String.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public Rect getMultiWindowDefaultRect() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "getMultiWindowDefaultRect", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return null;
        }
        return (Rect) TranDoorMan.invokeMethod(method, obj, new Object[0]);
    }

    @Override
    public Bundle getMultiWindowParams(String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getMultiWindowParams", String.class), this.mObject, str);
        if (objInvokeMethod instanceof Bundle) {
            return (Bundle) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Bundle getMultiWindowParamsByTaskId(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getMultiWindowParamsByTaskId", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Bundle) {
            return (Bundle) objInvokeMethod;
        }
        return null;
    }

    @Override
    public String getMultiWindowVersion() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getMultiWindowVersion", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof String) {
            return (String) objInvokeMethod;
        }
        return null;
    }

    @Override
    public boolean getMuteStateV4(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getMuteStateV4", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean getNeedExit(String str) {
        try {
            for (Object obj : getAllRootTaskInfosList()) {
                if (str.equals(getStackInfoPackageName(obj)) && APP_LOCK_PACKAGE.equals(getStackInfoTopPackageName(obj))) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getNeedExit, exception: " + e);
            return false;
        }
    }

    @Override
    public List<String> getNotifyMultiWindowBlackList() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "getNotifyMultiWindowBlackList", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return null;
        }
        return (List) TranDoorMan.invokeMethod(method, obj, new Object[0]);
    }

    @Override
    public int getPackageUserId(String str) {
        try {
            for (Object obj : getAllRootTaskInfosList()) {
                if (str.equals(getStackInfoPackageName(obj))) {
                    return getUserId(obj);
                }
            }
            return 0;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getPackageUserId, exception: " + e);
            return 0;
        }
    }

    @Override
    public List<ActivityManager.RecentTaskInfo> getRecentTasks(int i, int i2, int i3) {
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.content.pm.ParceledListSlice"), "getList", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getRecentTasks", cls2, cls2, cls2), this.mObject, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)), new Object[0]);
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((ActivityManager.RecentTaskInfo) ActivityManager.RecentTaskInfo.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public TranRootTaskInfo getRootTaskInfoOnDisplay(int i, int i2, int i3) {
        try {
            Class<?> cls = sClass;
            Class cls2 = Integer.TYPE;
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getRootTaskInfoOnDisplay", cls2, cls2, cls2), this.mObject, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            Field field = TranDoorMan.getField(TranDoorMan.getClass("android.app.ActivityTaskManager$RootTaskInfo"), "topActivity");
            ComponentName componentName = field != null ? (ComponentName) field.get(objInvokeMethod) : null;
            TranRootTaskInfo tranRootTaskInfo = new TranRootTaskInfo();
            tranRootTaskInfo.setTopActivityString(componentName != null ? componentName.flattenToString() : null);
            return tranRootTaskInfo;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getRootTaskInfoOnDisplay fail: " + e);
            return null;
        }
    }

    @Override
    public int getStackInfoTaskId(String str) {
        Object windowConfiguration;
        for (Object obj : getAllRootTaskInfosList()) {
            if (str.equals(getStackInfoPackageName(obj))) {
                Configuration configuration = getConfiguration(obj);
                if (((configuration == null || (windowConfiguration = getWindowConfiguration(configuration)) == null) ? -1 : getWindowingMode(windowConfiguration)) != 5) {
                    return -1;
                }
                int taskId = getTaskId(obj);
                TranSdkLog.d(TAG, "taskId = " + taskId);
                return taskId;
            }
        }
        return -1;
    }

    @Override
    public Rect getTaskBounds(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getTaskBounds", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Rect) {
            return (Rect) objInvokeMethod;
        }
        return null;
    }

    @Override
    public int getTaskIdByPkg(String str) {
        int i = str.endsWith("_twin_app") ? 999 : 0;
        try {
            for (Object obj : getAllRootTaskInfosList()) {
                if (str.equals(getStackInfoPackageName(obj)) && getUserId(obj) == i) {
                    return getTaskId(obj);
                }
            }
            return -1;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getTaskIdByPkg, exception: " + e);
            return -1;
        }
    }

    @Override
    public int getTaskIdByPkgName(String str, int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "getTaskIdByPkgName", String.class, Integer.TYPE);
        if (method != null && (obj = this.mObject) != null) {
            Object objInvokeMethod = TranDoorMan.invokeMethod(method, obj, str, Integer.valueOf(i));
            if (objInvokeMethod instanceof Integer) {
                return ((Integer) objInvokeMethod).intValue();
            }
        }
        return -1;
    }

    @Override
    public int getTaskOrientation(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getTaskOrientation", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public List<ActivityManager.RunningTaskInfo> getTasks(int i, boolean z, boolean z2) {
        Object objInvokeMethod;
        if (TranThubVersionUtil.isRecentAndroidT()) {
            Class<?> cls = sClass;
            Class cls2 = Integer.TYPE;
            Class cls3 = Boolean.TYPE;
            objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getTasks", cls2, cls3, cls3, cls2), this.mObject, Integer.valueOf(i), Boolean.valueOf(z), Boolean.valueOf(z2), -1);
        } else {
            Class<?> cls4 = sClass;
            Class cls5 = Integer.TYPE;
            Class cls6 = Boolean.TYPE;
            objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls4, "getTasks", cls5, cls6, cls6), this.mObject, Integer.valueOf(i), Boolean.valueOf(z), Boolean.valueOf(z2));
        }
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public ComponentName getTopActivityComponent() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getTopActivityComponent", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof ComponentName) {
            return (ComponentName) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Bundle getTopAppWindowInfo() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "getTopAppWindowInfo", new Class[0]);
        if (method != null && (obj = this.mObject) != null) {
            return (Bundle) TranDoorMan.invokeMethod(method, obj, new Object[0]);
        }
        TranSdkLog.w(TAG, "Method getTopAppWindowInfo not found in sClass or mObject is null");
        return null;
    }

    @Override
    public ActivityManager.RunningTaskInfo getTopTask(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getTopTask", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof ActivityManager.RunningTaskInfo) {
            return (ActivityManager.RunningTaskInfo) objInvokeMethod;
        }
        return null;
    }

    public int getUserId(Object obj) {
        try {
            Object obj2 = TranDoorMan.getField(getRootTaskInfoClass(), "userId").get(obj);
            if (obj2 instanceof Integer) {
                return ((Integer) obj2).intValue();
            }
            return 0;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getUserId, exception: " + e);
            return 0;
        }
    }

    @Override
    public boolean getVideoNotFullscreen(String str) {
        ComponentName componentName;
        Configuration runningTaskInfoConfiguration;
        Object windowConfiguration;
        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.mContext.getSystemService("activity")).getRunningTasks(2)) {
            if (runningTaskInfo != null && (componentName = runningTaskInfo.topActivity) != null && str.equals(componentName.getClassName()) && (runningTaskInfoConfiguration = getRunningTaskInfoConfiguration(runningTaskInfo)) != null && (windowConfiguration = getWindowConfiguration(runningTaskInfoConfiguration)) != null) {
                int windowingMode = getWindowingMode(windowConfiguration);
                TranSdkLog.d(TAG, "getVideoNotFullscreen  mode = " + windowingMode);
                return windowingMode != 1;
            }
        }
        return true;
    }

    @Override
    public boolean hasMultiWindow() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassNameStub, "asInterface", IBinder.class), null, TranDoorMan.invokeMethod(TranDoorMan.getMethod(sManagerClassName, "getService", String.class), null, "activity_task"));
        Object objInvokeMethod2 = objInvokeMethod != null ? TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "hasMultiWindow", new Class[0]), objInvokeMethod, new Object[0]) : null;
        if (objInvokeMethod2 instanceof Boolean) {
            return ((Boolean) objInvokeMethod2).booleanValue();
        }
        return false;
    }

    @Override
    public Rect hookGetMultiWindowDefaultRect(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "hookGetMultiWindowDefaultRect", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Rect) {
            return (Rect) objInvokeMethod;
        }
        return null;
    }

    @Override
    public void hookMultiWindowToClose(int i, int i2) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "hookMultiWindowToClose", cls2, cls2);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void hookMultiWindowToExchange(int i, int i2) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "hookMultiWindowToExchange", cls2, cls2);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void hookMultiWindowVisible() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "hookMultiWindowVisible", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, new Object[0]);
    }

    @Override
    public void hookMultiWindowVisibleWithCallback(TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "hookMultiWindowVisibleWithCallback", TranActivityTaskManager.TranWindowContainerTransactionCallback.class);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, tranWindowContainerTransactionCallback);
    }

    @Override
    public void hookReparentToDefaultDisplay(int i, int i2) {
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "hookReparentToDefaultDisplay", cls2, cls2), this.mObject, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void hookSetMultiWindowDefaultRectResult(Rect rect) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "hookSetMultiWindowDefaultRectResult", Rect.class), this.mObject, rect);
    }

    @Override
    public void hookShowBlurLayer(SurfaceControl surfaceControl, String str) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "hookShowBlurLayer", SurfaceControl.class, String.class);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, surfaceControl, str);
    }

    @Override
    public void hookShowBlurLayerFinish() {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "hookShowBlurLayerFinish", new Class[0]), this.mObject, new Object[0]);
    }

    @Override
    public void hookStartActivityResult(int i, Rect rect) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "hookStartActivityResult", Integer.TYPE, Rect.class), this.mObject, Integer.valueOf(i), rect);
    }

    @Override
    public void hookStartMultiWindow(int i, Rect rect, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (tranWindowContainerTransactionCallback != null) {
            this.mActivityTaskExt.hookStartMultiWindow(i, rect, new bwa(tranWindowContainerTransactionCallback));
        } else {
            this.mActivityTaskExt.hookStartMultiWindow(i, rect, null);
        }
    }

    @Override
    public void hookStartMultiWindowAndMakeOwnAnimation(int i, int i2, int i3, Rect rect, TranActivityTaskManager.TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        if (tranWindowContainerTransactionCallback != null) {
            this.mActivityTaskExt.hookStartMultiWindowAndMakeOwnAnimation(i, i2, i3, rect, new bwa(tranWindowContainerTransactionCallback));
        } else {
            this.mActivityTaskExt.hookStartMultiWindowAndMakeOwnAnimation(i, i2, i3, rect, null);
        }
        TranSdkLog.e(TAG, "hookStartMultiWindowAndMakeOwnAnimation success");
    }

    @Override
    public Bundle hookToMultiWindow(String str, Bundle bundle) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "hookToMultiWindow", String.class, Bundle.class);
        if (method == null || (obj = this.mObject) == null) {
            return null;
        }
        return (Bundle) TranDoorMan.invokeMethod(method, obj, str, bundle);
    }

    @Override
    public boolean inMultiWindowMode() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "inMultiWindowMode", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isCanEnterMultiWin(ComponentName componentName) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "isCanEnterMultiWin", ComponentName.class);
        if (method == null || (obj = this.mObject) == null) {
            return true;
        }
        return ((Boolean) TranDoorMan.invokeMethod(method, obj, componentName)).booleanValue();
    }

    @Override
    public boolean isHasMultiWindow() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "isHasMultiWindow", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isIMEShowing() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "isIMEShowing", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isKeyguardLocking() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "isKeyguardLocking", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isPCSourceDisplay(int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "isPCSourceDisplay", Integer.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return false;
        }
        return ((Boolean) TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i))).booleanValue();
    }

    @Override
    public boolean isPinnedMode() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "isPinnedMode", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isResizableActivity() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "isResizableActivity", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return false;
        }
        return ((Boolean) TranDoorMan.invokeMethod(method, obj, new Object[0])).booleanValue();
    }

    @Override
    public boolean isSecureWindow() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "isSecureWindow", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isSplitScreen() {
        Object obj = this.mObject;
        if (obj == null) {
            return false;
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(obj.getClass(), "isSplitScreen", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isSupportMultiWindow() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "isSupportMultiWindow", new Class[0]), this.mObject, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isTheMainScreen(String str, String str2) {
        int taskInfoDisplayId;
        boolean z;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            List<Object> allRootTaskInfosList = getAllRootTaskInfosList();
            Iterator<Object> it = allRootTaskInfosList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    taskInfoDisplayId = 0;
                    z = false;
                    break;
                }
                Object next = it.next();
                if (!isStackInfoTopClassName(next, str) && !getStackInfoClsName(next, str)) {
                }
                taskInfoDisplayId = getTaskInfoDisplayId(next);
                z = true;
                break;
            }
            if (!z) {
                try {
                    for (Object obj : allRootTaskInfosList) {
                        if (str2.equals(getStackInfoPackageName(obj)) && !FACEBOOKMESSAGE.equals(str2)) {
                            taskInfoDisplayId = getTaskInfoDisplayId(obj);
                            break;
                        }
                        taskInfoDisplayId = getTaskInfoDisplayId(obj);
                    }
                } catch (Exception e) {
                    e = e;
                    TranSdkLog.e(TAG, "isTheMainScreen, exception: " + e);
                }
            }
        } catch (Exception e2) {
            e = e2;
            taskInfoDisplayId = 0;
        }
        return taskInfoDisplayId == 0;
    }

    @Override
    public void notAllowKeyguardGoingAwayQuickly(boolean z) {
        Method method = TranDoorMan.getMethod(sClass, "notAllowKeyguardGoingAwayQuickly", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mObject, Boolean.valueOf(z));
        }
    }

    @Override
    public void notifyAuthenticateSucceed(boolean z) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "notifyAuthenticateSucceed", Boolean.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Boolean.valueOf(z));
    }

    @Override
    public void notifyKeyguardGoingAwayQuickly(boolean z) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "notifyKeyguardGoingAwayQuickly", Boolean.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Boolean.valueOf(z));
    }

    @Override
    public void notifyLauncherPageTurning(boolean z) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "notifyLauncherPageTurning", Boolean.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Boolean.valueOf(z));
    }

    @Override
    public void pauseTaskTopActivity(int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "pauseTaskTopActivity", Integer.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i));
    }

    @Override
    public boolean registerActivityStarterExecutedObserver(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver, IntentFilter intentFilter) {
        TranSdkLog.e(TAG, "registerActivityStarterExecutedObserver is not support in this version through AOSP");
        return false;
    }

    @Override
    public void registerMultiWindowWmShellListener(IBinder iBinder) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "registerMultiWindowWmShellListener", IBinder.class);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, iBinder);
    }

    @Override
    public void removeAnimationIconLayer(SurfaceControl surfaceControl) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "removeAnimationIconLayer", SurfaceControl.class), this.mObject, surfaceControl);
    }

    @Override
    public void removeRootTasksInWindowingModes(int[] iArr) {
        Object obj = this.mObject;
        if (obj != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(obj.getClass(), "removeRootTasksInWindowingModes", int[].class), this.mObject, iArr);
        }
    }

    @Override
    public boolean removeTask(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "removeTask", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public void removeTaskPC(int i, int i2) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "removeTaskPC", cls2, cls2);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void reparentActivity(int i, int i2, boolean z) {
        Object obj = this.mObject;
        if (obj != null) {
            Class<?> cls = obj.getClass();
            Class cls2 = Integer.TYPE;
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "reparentActivity", cls2, cls2, Boolean.TYPE), this.mObject, Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z));
        }
    }

    @Override
    public void reparentTaskToDefaultTDA() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "reparentTaskToDefaultTDA", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, new Object[0]);
    }

    @Override
    public void requestHideDock() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "requestHideDock", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, new Object[0]);
    }

    @Override
    public void requestShowDock() {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "requestShowDock", new Class[0]);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, new Object[0]);
    }

    @Override
    public void setActivityController(ITranActivityController iTranActivityController, boolean z) {
        this.mController = iTranActivityController;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setActivityController", Object.class, Boolean.TYPE), this.mObject, new TranActivityControllerExt(), Boolean.valueOf(z));
    }

    @Override
    public void setBoostSceneState(int i, String str, boolean z) {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "activity_task");
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.app.ITranActivityTaskManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setBoostSceneState", Integer.TYPE, String.class, Boolean.TYPE), objInvokeMethod, Integer.valueOf(i), str, Boolean.valueOf(z));
    }

    @Override
    public void setConnectBlackListToSystem(List<String> list) {
        Object obj = this.mObject;
        if (obj != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(obj.getClass(), "setConnectBlackListToSystem", List.class), this.mObject, list);
        }
    }

    @Override
    public void setFinishFixedRotationWithTransaction(SurfaceControl surfaceControl, float[] fArr, float[] fArr2, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setFinishFixedRotationWithTransaction", SurfaceControl.class, float[].class, float[].class, Integer.TYPE), this.mObject, surfaceControl, fArr, fArr2, Integer.valueOf(i));
    }

    @Override
    public void setFlingState(boolean z) {
        TranSdkLog.e(TAG, "setFlingState has been deleted from AOSP");
    }

    @Override
    public void setJankScenarioState(int i, String str, boolean z) {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "activity_task");
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.app.ITranActivityTaskManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setJankScenarioState", Integer.TYPE, String.class, Boolean.TYPE), objInvokeMethod, Integer.valueOf(i), str, Boolean.valueOf(z));
    }

    @Override
    public void setMultiEnableStateForOOBE(boolean z, Bundle bundle) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "setMultiEnableStateForOOBE", Boolean.TYPE, Bundle.class);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Boolean.valueOf(z), bundle);
    }

    @Override
    public void setMultiWindowAcquireFocus(int i, boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setMultiWindowAcquireFocus", Integer.TYPE, Boolean.TYPE), this.mObject, Integer.valueOf(i), Boolean.valueOf(z));
    }

    @Override
    public void setMultiWindowBlackListToSystem(List<String> list) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setMultiWindowBlackListToSystem", List.class), this.mObject, list);
    }

    @Override
    public void setMultiWindowConfigToSystem(String str, List<String> list) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setMultiWindowConfigToSystem", String.class, List.class), this.mObject, str, list);
    }

    @Override
    public void setMultiWindowExtendSize(int i, int i2) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "setMultiWindowExtendSize", cls2, cls2);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void setMultiWindowParams(Bundle bundle) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setMultiWindowParams", Bundle.class), this.mObject, bundle);
    }

    @Override
    public void setMultiWindowWhiteListToSystem(List<String> list) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setMultiWindowWhiteListToSystem", List.class), this.mObject, list);
    }

    @Override
    public void setMuteStateV4(boolean z, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setMuteStateV4", Boolean.TYPE, Integer.TYPE), this.mObject, Boolean.valueOf(z), Integer.valueOf(i));
    }

    @Override
    public void setStartInMultiWindow(String str, int i, int i2, int i3) {
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setStartInMultiWindow", String.class, cls2, cls2, cls2), this.mObject, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    @Override
    public void setStartInMultiWindowAsUser(String str, int i, int i2, int i3, int i4) {
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setStartInMultiWindowAsUser", String.class, cls2, cls2, cls2, cls2), this.mObject, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
    }

    @Override
    public void setStartInMultiWindowWithBundle(Bundle bundle, int i, int i2, int i3, int i4) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "setStartInMultiWindowWithBundle", Bundle.class, cls2, cls2, cls2, cls2);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, bundle, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
    }

    @Override
    public void setTbSpecialLayerState(boolean z, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "setTbSpecialLayerState", Boolean.TYPE, Integer.TYPE), this.mObject, Boolean.valueOf(z), Integer.valueOf(i));
    }

    @Override
    public void setThunderbackAnimating(boolean z) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "setThunderbackAnimating", Boolean.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Boolean.valueOf(z));
    }

    @Override
    public void startCurrentAppInMultiWindow(boolean z, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "startCurrentAppInMultiWindow", Boolean.TYPE, Integer.TYPE), this.mObject, Boolean.valueOf(z), Integer.valueOf(i));
    }

    @Override
    public void startLauncherAction(Intent intent, int i) {
        TranSdkLog.e(TAG, "startLauncherAction has been deleted from AOSP");
    }

    @Override
    public void stopTask(int i) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "stopTask", Integer.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i));
    }

    @Override
    public void stopTaskPC(int i, int i2) {
        Object obj;
        Class<?> cls = sClass;
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "stopTaskPC", cls2, cls2);
        if (method == null || (obj = this.mObject) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public TranTaskSnapshot takeTaskSnapshot(int i, boolean z) {
        Object objInvokeMethod;
        if (TranThubVersionUtil.isAndroidT()) {
            objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "takeTaskSnapshot", Integer.TYPE), this.mObject, Integer.valueOf(i));
        } else {
            objInvokeMethod = TranThubVersionUtil.isRecentAndroidT() ? TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "takeTaskSnapshot", Integer.TYPE, Boolean.TYPE), this.mObject, Integer.valueOf(i), Boolean.valueOf(z)) : null;
        }
        TranTaskSnapshot tranTaskSnapshot = new TranTaskSnapshot();
        if (objInvokeMethod == null) {
            TranSdkLog.w(TAG, "TranTaskSnapshot is null");
            return tranTaskSnapshot;
        }
        if (objInvokeMethod.getClass().equals(sTaskSnapshotClass)) {
            Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getHardwareBuffer", new Class[0]), objInvokeMethod, new Object[0]);
            if (objInvokeMethod2 instanceof HardwareBuffer) {
                tranTaskSnapshot.mSnapshot = (HardwareBuffer) objInvokeMethod2;
            }
            Object objInvokeMethod3 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getColorSpace", new Class[0]), objInvokeMethod, new Object[0]);
            if (objInvokeMethod3 instanceof ColorSpace) {
                tranTaskSnapshot.mColorSpace = (ColorSpace) objInvokeMethod3;
            }
        }
        return tranTaskSnapshot;
    }

    @Override
    public boolean taskInMultiWindowById(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "taskInMultiWindowById", Integer.TYPE), this.mObject, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean unRegisterActivityStarterExecutedObserver(TranActivityStarterExecutedObserver tranActivityStarterExecutedObserver) {
        TranSdkLog.e(TAG, "unRegisterActivityStarterExecutedObserver is not support in this version through AOSP");
        return false;
    }

    @Override
    public boolean updateConfiguration(Configuration configuration) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "updateConfiguration", Configuration.class), this.mObject, configuration);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public void updateMediaMapForDynamicIsland(String str, boolean z) {
        Object obj;
        Method method = TranDoorMan.getMethod(sClass, "updateMediaMapForDynamicIsland", String.class, Boolean.TYPE);
        if (method == null || (obj = this.mObject) == null) {
            TranSdkLog.w(TAG, "Method updateMediaMapForDynamicIsland not found in sClass or mObject is null");
        } else {
            TranDoorMan.invokeMethod(method, obj, str, Boolean.valueOf(z));
        }
    }

    @Override
    public void updateZBoostTaskIdWhenToSplit(int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "updateZBoostTaskIdWhenToSplit", Integer.TYPE), this.mObject, Integer.valueOf(i));
    }
}
