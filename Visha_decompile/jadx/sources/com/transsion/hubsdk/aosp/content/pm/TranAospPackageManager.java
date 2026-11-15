package com.transsion.hubsdk.aosp.content.pm;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.content.pm.ITranPackageManagerAdapter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TranAospPackageManager implements ITranPackageManagerAdapter {
    private static final String TAG = "TranAospPackageManager";
    private Context mContext;
    private PackageManager mPackageManager;
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.AppGlobals");
    private static Class<?> sServiceClassName = TranDoorMan.getClass("android.content.pm.IPackageManager");
    private static Class<?> sTranClass = TranDoorMan.getClass("com.transsion.content.pm.PackageManager");
    private static Class<?> sPackageClass = TranDoorMan.getClass("android.content.pm.PackageManager");
    private static Class<?> sClassPackageDeleteObserver = TranDoorMan.getClass("android.content.pm.IPackageDeleteObserver");
    private static final String METHOD_NAME_GET_PACKAGE_MANAGER = "getPackageManager";
    private static Method sMtehodGetPackageManager = TranDoorMan.getMethod(sClassName, METHOD_NAME_GET_PACKAGE_MANAGER, new Class[0]);

    @SuppressLint({"WrongConstant"})
    public TranAospPackageManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
    }

    @Override
    public void checkDefaultCalendar() {
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(PackageManager.class, "checkDefaultCalendar", new Class[0]);
        if (method == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, packageManager, new Object[0]);
    }

    @Override
    public void checkDefaultGaller() {
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(PackageManager.class, "checkDefaultGaller", new Class[0]);
        if (method == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, packageManager, new Object[0]);
    }

    @Override
    public void checkDefaultMusic() {
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(PackageManager.class, "checkDefaultMusic", new Class[0]);
        if (method == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, packageManager, new Object[0]);
    }

    @Override
    public void deletePackageAsOOBE(String str, TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mPackageManager.getClass(), "deletePackageAsOOBE", String.class, sClassPackageDeleteObserver, Integer.TYPE), this.mPackageManager, str, new TranAospPackageManagerExt.TranAospPackageDeleteObserver(iTranPackageDeleteObserver), Integer.valueOf(i));
    }

    @Override
    public void deletePackageAsUser(String str, TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver, int i, int i2) {
        Class<?> cls = this.mPackageManager.getClass();
        Class<?> cls2 = sClassPackageDeleteObserver;
        Class cls3 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "deletePackageAsUser", String.class, cls2, cls3, cls3), this.mPackageManager, str, new TranAospPackageManagerExt.TranAospPackageDeleteObserver(iTranPackageDeleteObserver), Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public String[] getAllHiddenApps() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sTranClass, "getAllHiddenApps", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sTranClass, "instance", new Class[0]), null, new Object[0]), new Object[0]);
        if (objInvokeMethod instanceof String[]) {
            return (String[]) objInvokeMethod;
        }
        return null;
    }

    @Override
    public int getApplicationEnabledSetting(String str) {
        return this.mContext.getPackageManager().getApplicationEnabledSetting(str);
    }

    @Override
    public ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Class<?> cls = sPackageClass;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getApplicationInfoAsUser", String.class, cls2, cls2), packageManager, str, Integer.valueOf(i), Integer.valueOf(i2));
        if (objInvokeMethod instanceof ApplicationInfo) {
            return (ApplicationInfo) objInvokeMethod;
        }
        return null;
    }

    @Override
    public int getApplicationNotifyScreenOn(String str, int i) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(PackageManager.class, "getApplicationNotifyScreenOn", String.class, Integer.TYPE);
        if (method == null) {
            return -1;
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(method, packageManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return -1;
    }

    @Override
    public String getDefaulCalendarPackageNameAsUser(int i) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(PackageManager.class, "getDefaulCalendarPackageNameAsUser", Integer.TYPE);
        return method == null ? "" : (String) TranDoorMan.invokeMethod(method, packageManager, Integer.valueOf(i));
    }

    @Override
    public String getDefaultGallerPackageNameAsUser(int i) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(PackageManager.class, "getDefaultGallerPackageNameAsUser", Integer.TYPE), this.mContext.getPackageManager(), Integer.valueOf(i));
    }

    @Override
    public String getDefaultMusicPackageNameAsUser(int i) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(PackageManager.class, "getDefaultMusicPackageNameAsUser", Integer.TYPE), this.mContext.getPackageManager(), Integer.valueOf(i));
    }

    @Override
    public ComponentName getHomeActivities(List<ResolveInfo> list) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sServiceClassName, "getHomeActivities", List.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, METHOD_NAME_GET_PACKAGE_MANAGER, new Class[0]), null, new Object[0]), list);
        if (objInvokeMethod instanceof ComponentName) {
            return (ComponentName) objInvokeMethod;
        }
        return null;
    }

    @Override
    public List<ApplicationInfo> getInstalledApplicationsAsUser(int i, int i2) {
        Class<?> cls = this.mPackageManager.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "getInstalledApplicationsAsUser", cls2, cls2);
        ArrayList arrayList = new ArrayList();
        Object objInvokeMethod = TranDoorMan.invokeMethod(method, this.mPackageManager, Integer.valueOf(i), Integer.valueOf(i2));
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((ApplicationInfo) ApplicationInfo.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public List<ApplicationInfo> getInstalledApplicationsInDualSpace(int i) {
        TranSdkLog.e(TAG, "getInstalledApplicationsInDualSpace is not supported in aosp version.");
        return null;
    }

    @Override
    public List<PackageInfo> getInstalledPackagesAsUser(int i, int i2) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Class<?> cls = sPackageClass;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getInstalledPackagesAsUser", cls2, cls2), packageManager, Integer.valueOf(i), Integer.valueOf(i2));
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((PackageInfo) PackageInfo.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public PackageInfo getPackageInfo(String str, int i, int i2) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, METHOD_NAME_GET_PACKAGE_MANAGER, new Class[0]), null, new Object[0]);
        Class<?> cls = sServiceClassName;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getPackageInfo", String.class, cls2, cls2), objInvokeMethod, str, Integer.valueOf(i), Integer.valueOf(i2));
        if (objInvokeMethod2 instanceof PackageInfo) {
            return (PackageInfo) objInvokeMethod2;
        }
        return null;
    }

    @Override
    public PackageInfo getPackageInfoAsUser(String str, int i, int i2) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Class<?> cls = packageManager.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "getPackageInfoAsUser", String.class, cls2, cls2);
        if (method != null) {
            return (PackageInfo) TranDoorMan.invokeMethod(method, packageManager, str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        return null;
    }

    @Override
    public String getPermissionControllerPackageName() {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mPackageManager.getClass(), "getPermissionControllerPackageName", new Class[0]), this.mPackageManager, new Object[0]);
    }

    @Override
    public int installExistingPackageAsUser(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mPackageManager.getClass(), "installExistingPackageAsUser", String.class, Integer.TYPE), this.mPackageManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public boolean isRemovableSysApp(String str) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(packageManager.getClass(), "isRemovableSysApp", String.class);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, packageManager, str)).booleanValue();
        }
        return false;
    }

    @Override
    public void markAsUnremovableSystemAppTemp(String str, boolean z) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(packageManager.getClass(), "markAsUnremovableSystemAppTemp", String.class, Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, packageManager, str, Boolean.valueOf(z));
        }
    }

    @Override
    public List<ResolveInfo> queryIntentActivitiesAsUser(Intent intent, int i, int i2) {
        Class<?> cls = this.mPackageManager.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "queryIntentActivitiesAsUser", Intent.class, cls2, cls2);
        ArrayList arrayList = new ArrayList();
        Object objInvokeMethod = TranDoorMan.invokeMethod(method, this.mPackageManager, intent, Integer.valueOf(i), Integer.valueOf(i2));
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((ResolveInfo) ResolveInfo.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public List<ResolveInfo> queryIntentServicesAsUser(Intent intent, int i, int i2) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Class<?> cls = sPackageClass;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "queryIntentServicesAsUser", Intent.class, cls2, cls2), packageManager, intent, Integer.valueOf(i), Integer.valueOf(i2));
        ArrayList arrayList = new ArrayList();
        if (objInvokeMethod instanceof List) {
            Iterator it = ((List) objInvokeMethod).iterator();
            while (it.hasNext()) {
                arrayList.add((ResolveInfo) ResolveInfo.class.cast(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public int reinstall(String str, String str2) {
        TranSdkLog.e(TAG, "reinstall is not supported in aosp version.");
        return -1000;
    }

    @Override
    public void replacePreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName, int i2) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, METHOD_NAME_GET_PACKAGE_MANAGER, new Class[0]), null, new Object[0]);
        Class<?> cls = sServiceClassName;
        Class cls2 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "replacePreferredActivity", IntentFilter.class, cls2, ComponentName[].class, ComponentName.class, cls2), objInvokeMethod, intentFilter, Integer.valueOf(i), componentNameArr, componentName, Integer.valueOf(i2));
    }

    @Override
    public void setApplicationEnabledSetting(String str, int i, int i2, int i3, String str2) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(sMtehodGetPackageManager, null, new Object[0]);
        Class<?> cls = sServiceClassName;
        Class cls2 = Integer.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setApplicationEnabledSetting", String.class, cls2, cls2, cls2, String.class), objInvokeMethod, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), str2);
    }

    @Override
    public void setApplicationEnabledSettingForPM(String str, int i, int i2) {
        this.mContext.getPackageManager().setApplicationEnabledSetting(str, i, i2);
    }

    @Override
    public void setApplicationNotifyScreenOn(String str, int i, int i2) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Class cls = Integer.TYPE;
        Method method = TranDoorMan.getMethod(PackageManager.class, "setApplicationNotifyScreenOn", String.class, cls, cls);
        if (method == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, packageManager, str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void setComponentEnabledSetting(ComponentName componentName, int i, int i2, int i3) {
        Class cls = TranDoorMan.getClass("android.os.ServiceManager");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getService", String.class), cls, "package");
        IBinder iBinder = objInvokeMethod instanceof IBinder ? (IBinder) objInvokeMethod : null;
        Class cls2 = TranDoorMan.getClass("android.content.pm.IPackageManager$Stub");
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder);
        if (objInvokeMethod2 != null) {
            if (TranThubVersionUtil.isAndroidS()) {
                Class<?> cls3 = objInvokeMethod2.getClass();
                Class cls4 = Integer.TYPE;
                TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls3, "setComponentEnabledSetting", ComponentName.class, cls4, cls4, cls4), objInvokeMethod2, componentName, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            } else if (TranThubVersionUtil.isAndroidT()) {
                Class<?> cls5 = objInvokeMethod2.getClass();
                Class cls6 = Integer.TYPE;
                TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls5, "setComponentEnabledSetting", ComponentName.class, cls6, cls6, cls6), objInvokeMethod2, componentName, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            } else if (TranThubVersionUtil.isRecentAndroidT()) {
                Class<?> cls7 = objInvokeMethod2.getClass();
                Class cls8 = Integer.TYPE;
                TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls7, "setComponentEnabledSetting", ComponentName.class, cls8, cls8, cls8, String.class), objInvokeMethod2, componentName, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), null);
            }
        }
    }

    @Override
    public boolean setDefaulCalendarPackageNameAsUser(String str, int i) {
        Object objInvokeMethod;
        PackageManager packageManager = this.mContext.getPackageManager();
        Method method = TranDoorMan.getMethod(PackageManager.class, "setDefaulCalendarPackageNameAsUser", String.class, Integer.TYPE);
        return (method == null || (objInvokeMethod = TranDoorMan.invokeMethod(method, packageManager, str, Integer.valueOf(i))) == null || !((Boolean) objInvokeMethod).booleanValue()) ? false : true;
    }

    @Override
    public boolean setDefaultBrowserPackageNameAsUser(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sPackageClass, "setDefaultBrowserPackageNameAsUser", String.class, Integer.TYPE), this.mPackageManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean setDefaultGallerPackageNameAsUser(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(PackageManager.class, "setDefaultGallerPackageNameAsUser", String.class, Integer.TYPE), this.mContext.getPackageManager(), str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean setDefaultMusicPackageNameAsUser(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(PackageManager.class, "setDefaultMusicPackageNameAsUser", String.class, Integer.TYPE), this.mContext.getPackageManager(), str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public void setHomeActivity(ComponentName componentName, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sServiceClassName, "setHomeActivity", ComponentName.class, Integer.TYPE), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, METHOD_NAME_GET_PACKAGE_MANAGER, new Class[0]), null, new Object[0]), componentName, Integer.valueOf(i));
    }
}
