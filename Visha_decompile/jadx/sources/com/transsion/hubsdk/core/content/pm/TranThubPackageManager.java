package com.transsion.hubsdk.core.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.aosp.content.pm.TranAospPackageManagerExt;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.content.pm.ITranPackageDeleteObserver;
import com.transsion.hubsdk.content.pm.ITranPackageManager;
import com.transsion.hubsdk.content.pm.TranParceledListSlice;
import com.transsion.hubsdk.interfaces.content.pm.ITranPackageManagerAdapter;
import java.util.List;

public class TranThubPackageManager implements ITranPackageManagerAdapter {
    private static final String TAG = "TranThubPackageManager";
    private ITranPackageManager mService = ITranPackageManager.Stub.asInterface(TranServiceManager.getServiceIBinder("package"));

    public class TranPackageDeleteObserver extends ITranPackageDeleteObserver.Stub {
        private TranAospPackageManagerExt.ITranPackageDeleteObserver mObserver;

        public TranPackageDeleteObserver(TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver) {
            this.mObserver = iTranPackageDeleteObserver;
        }

        public void packageDeleted(String str, int i) throws RemoteException {
            TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver = this.mObserver;
            if (iTranPackageDeleteObserver != null) {
                iTranPackageDeleteObserver.packageDeleted(str, i);
            }
        }
    }

    public Object lambda$checkDefaultCalendar$13() throws RemoteException {
        try {
            this.mService.checkDefaultCalendar();
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " checkDefaultCalendar exception: ", e);
            return null;
        }
    }

    public Object lambda$checkDefaultGaller$12() throws RemoteException {
        try {
            this.mService.checkDefaultGaller();
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " checkDefaultGaller exception: ", e);
            return null;
        }
    }

    public Object lambda$checkDefaultMusic$14() throws RemoteException {
        try {
            this.mService.checkDefaultMusic();
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " checkDefaultMusic exception: ", e);
            return null;
        }
    }

    public Object lambda$deletePackageAsUser$7(String str, TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver, int i, int i2) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager == null) {
            return null;
        }
        iTranPackageManager.deletePackageAsUser(str, new TranPackageDeleteObserver(iTranPackageDeleteObserver), i, i2);
        return null;
    }

    public Object lambda$getAllHiddenApps$3() throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            return iTranPackageManager.getAllHiddenApps();
        }
        return null;
    }

    public Object lambda$getApplicationNotifyScreenOn$10(String str, int i) throws RemoteException {
        try {
            return Integer.valueOf(this.mService.getApplicationNotifyScreenOn(str, i));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " getApplicationNotifyScreenOn exception: ", e);
            return -1;
        }
    }

    public Object lambda$getDefaulCalendarPackageNameAsUser$15(int i) throws RemoteException {
        try {
            return this.mService.getDefaulCalendarPackageNameAsUser(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " getDefaulCalendarPackageNameAsUser exception: ", e);
            return "";
        }
    }

    public Object lambda$getHomeActivities$2(List list) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            return iTranPackageManager.getHomeActivities(list);
        }
        return null;
    }

    public Object lambda$getInstalledApplicationsAsUser$5(int i, int i2) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            return iTranPackageManager.getInstalledApplicationsAsUserExt(i, i2).getList();
        }
        return null;
    }

    public Object lambda$getInstalledApplicationsInDualSpace$17(int i) throws RemoteException {
        TranParceledListSlice installedApplicationsInDualSpace;
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager == null || (installedApplicationsInDualSpace = iTranPackageManager.getInstalledApplicationsInDualSpace(i)) == null) {
            return null;
        }
        return installedApplicationsInDualSpace.getList();
    }

    public Object lambda$getPackageInfo$1(String str, int i, int i2) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            return iTranPackageManager.getPackageInfo(str, i, i2);
        }
        return null;
    }

    public Object lambda$getPermissionControllerPackageName$9() throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            return iTranPackageManager.getPermissionControllerPackageName();
        }
        return null;
    }

    public Object lambda$installExistingPackageAsUser$8(String str, int i) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            return Integer.valueOf(iTranPackageManager.installExistingPackageAsUser(str, i));
        }
        return 0;
    }

    public Object lambda$queryIntentActivitiesAsUser$6(Intent intent, int i, int i2) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            return iTranPackageManager.queryIntentActivitiesAsUserExt(intent, i, i2).getList();
        }
        return null;
    }

    public Object lambda$setApplicationNotifyScreenOn$11(String str, int i, int i2) throws RemoteException {
        try {
            this.mService.setApplicationNotifyScreenOn(str, i, i2);
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " setApplicationNotifyScreenOn exception: ", e);
            return null;
        }
    }

    public Object lambda$setComponentEnabledSetting$4(ComponentName componentName, int i, int i2, int i3) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager == null) {
            return null;
        }
        iTranPackageManager.setComponentEnabledSetting(componentName, i, i2, i3);
        return null;
    }

    public Object lambda$setDefaulCalendarPackageNameAsUser$16(String str, int i) throws RemoteException {
        try {
            return Boolean.valueOf(this.mService.setDefaulCalendarPackageNameAsUser(str, i));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " setDefaulCalendarPackageNameAsUser exception: ", e);
            return Boolean.FALSE;
        }
    }

    public Object lambda$setHomeActivity$0(ComponentName componentName, int i) throws RemoteException {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager == null) {
            return null;
        }
        iTranPackageManager.setHomeActivity(componentName, i);
        return null;
    }

    @Override
    public void checkDefaultCalendar() {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$checkDefaultCalendar$13();
            }
        }, "package");
    }

    @Override
    public void checkDefaultGaller() {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$checkDefaultGaller$12();
            }
        }, "package");
    }

    @Override
    public void checkDefaultMusic() {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$checkDefaultMusic$14();
            }
        }, "package");
    }

    @Override
    public void deletePackageAsOOBE(String str, TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver, int i) {
        try {
            this.mService.deletePackageAsOOBE(str, new TranPackageDeleteObserver(iTranPackageDeleteObserver), i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "deletePackageAsOOBE " + e);
        }
    }

    @Override
    public void deletePackageAsUser(final String str, final TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver, final int i, final int i2) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$deletePackageAsUser$7(str, iTranPackageDeleteObserver, i, i2);
            }
        }, "package");
    }

    @Override
    public String[] getAllHiddenApps() {
        String[] strArr = (String[]) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getAllHiddenApps$3();
            }
        }, "package");
        TranSdkLog.i(TAG, "getAllHiddenApps result:" + strArr);
        return strArr;
    }

    @Override
    public int getApplicationEnabledSetting(String str) {
        try {
            return this.mService.getApplicationEnabledSetting(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2) {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager == null) {
            return null;
        }
        try {
            return iTranPackageManager.getApplicationInfoAsUser(str, i, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getApplicationInfoAsUser fail:" + e);
            return null;
        }
    }

    @Override
    public int getApplicationNotifyScreenOn(final String str, final int i) {
        return ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getApplicationNotifyScreenOn$10(str, i);
            }
        }, "package")).intValue();
    }

    @Override
    public String getDefaulCalendarPackageNameAsUser(final int i) {
        return (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getDefaulCalendarPackageNameAsUser$15(i);
            }
        }, "package");
    }

    @Override
    public String getDefaultGallerPackageNameAsUser(int i) {
        try {
            return this.mService.getDefaultGallerPackageNameAsUser(i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, " getDefaultGallerPackageNameAsUser exception: ", e);
            return "";
        }
    }

    @Override
    public String getDefaultMusicPackageNameAsUser(int i) {
        try {
            return this.mService.getDefaultMusicPackageNameAsUser(i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, " getDefaultMusicPackageNameAsUser exception: ", e);
            return "";
        }
    }

    @Override
    public ComponentName getHomeActivities(final List<ResolveInfo> list) {
        ComponentName componentName = (ComponentName) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getHomeActivities$2(list);
            }
        }, "package");
        TranSdkLog.i(TAG, "getHomeActivities mComponentName:" + componentName);
        return componentName;
    }

    @Override
    public List<ApplicationInfo> getInstalledApplicationsAsUser(final int i, final int i2) {
        List<ApplicationInfo> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getInstalledApplicationsAsUser$5(i, i2);
            }
        }, "package");
        TranSdkLog.i(TAG, "getInstalledApplicationsAsUser applicationInfos:" + list);
        return list;
    }

    @Override
    public List<ApplicationInfo> getInstalledApplicationsInDualSpace(final int i) {
        List<ApplicationInfo> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getInstalledApplicationsInDualSpace$17(i);
            }
        }, "package");
        TranSdkLog.i(TAG, "getInstalledApplicationsInDualSpace applicationInfos: " + list);
        return list;
    }

    @Override
    public List<PackageInfo> getInstalledPackagesAsUser(int i, int i2) {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager == null) {
            return null;
        }
        try {
            return iTranPackageManager.getInstalledPackagesAsUserExt(i, i2).getList();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getInstalledPackagesAsUser fail:" + e);
            return null;
        }
    }

    @Override
    public PackageInfo getPackageInfo(final String str, final int i, final int i2) {
        PackageInfo packageInfo = (PackageInfo) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getPackageInfo$1(str, i, i2);
            }
        }, "package");
        TranSdkLog.i(TAG, "getPackageInfo mPackageInfo:" + packageInfo);
        return packageInfo;
    }

    @Override
    public PackageInfo getPackageInfoAsUser(String str, int i, int i2) {
        try {
            return this.mService.getPackageInfoAsUser(str, i, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " getPackageInfoAsUser exception: ", e);
            return null;
        }
    }

    @Override
    public String getPermissionControllerPackageName() {
        String str = (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getPermissionControllerPackageName$9();
            }
        }, "package");
        TranSdkLog.i(TAG, "getPermissionControllerPackageName packageName:" + str);
        return str;
    }

    @Override
    public int installExistingPackageAsUser(final String str, final int i) {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$installExistingPackageAsUser$8(str, i);
            }
        }, "package")).intValue();
        TranSdkLog.i(TAG, "installExistingPackageAsUser result:" + iIntValue);
        return iIntValue;
    }

    @Override
    public boolean isRemovableSysApp(String str) {
        try {
            ITranPackageManager iTranPackageManager = this.mService;
            if (iTranPackageManager != null) {
                return iTranPackageManager.isRemovableSysApp(str);
            }
            return false;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " isRemovableSysApp exception: ", e);
            return false;
        }
    }

    @Override
    public void markAsUnremovableSystemAppTemp(String str, boolean z) {
        try {
            ITranPackageManager iTranPackageManager = this.mService;
            if (iTranPackageManager != null) {
                iTranPackageManager.markAsUnremovableSystemAppTemp(str, z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " markAsUnremovableSystemAppTemp exception: ", e);
        }
    }

    @Override
    public List<ResolveInfo> queryIntentActivitiesAsUser(final Intent intent, final int i, final int i2) {
        List<ResolveInfo> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$queryIntentActivitiesAsUser$6(intent, i, i2);
            }
        }, "package");
        TranSdkLog.i(TAG, "queryIntentActivitiesAsUser mResolveInfos:" + list);
        return list;
    }

    @Override
    public List<ResolveInfo> queryIntentServicesAsUser(Intent intent, int i, int i2) {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager == null) {
            return null;
        }
        try {
            return iTranPackageManager.queryIntentServicesAsUserExt(intent, i, i2).getList();
        } catch (RemoteException e) {
            e.printStackTrace();
            TranSdkLog.e(TAG, "queryIntentServicesAsUser fail:" + e);
            return null;
        }
    }

    @Override
    public int reinstall(String str, String str2) {
        try {
            ITranPackageManager iTranPackageManager = this.mService;
            if (iTranPackageManager != null) {
                return iTranPackageManager.reinstall(str, str2);
            }
            return -1000;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, " reinstall exception: ", e);
            return -1000;
        }
    }

    @Override
    public void replacePreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName, int i2) {
        ITranPackageManager iTranPackageManager = this.mService;
        if (iTranPackageManager != null) {
            try {
                iTranPackageManager.replacePreferredActivity(intentFilter, i, componentNameArr, componentName, i2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "replacePreferredActivity fail:" + e);
            }
        }
    }

    @Override
    public void setApplicationEnabledSetting(String str, int i, int i2, int i3, String str2) {
        try {
            this.mService.setApplicationEnabledSetting(str, i, i2, i3, str2);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setApplicationEnabledSetting exception: ", e);
        }
    }

    @Override
    public void setApplicationEnabledSettingForPM(String str, int i, int i2) {
        try {
            this.mService.setApplicationEnabledSettingForPM(str, i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void setApplicationNotifyScreenOn(final String str, final int i, final int i2) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setApplicationNotifyScreenOn$11(str, i, i2);
            }
        }, "package");
    }

    @Override
    public void setComponentEnabledSetting(final ComponentName componentName, final int i, final int i2, final int i3) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setComponentEnabledSetting$4(componentName, i, i2, i3);
            }
        }, "package");
    }

    @Override
    public boolean setDefaulCalendarPackageNameAsUser(final String str, final int i) {
        return ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setDefaulCalendarPackageNameAsUser$16(str, i);
            }
        }, "package")).booleanValue();
    }

    @Override
    public boolean setDefaultBrowserPackageNameAsUser(String str, int i) {
        try {
            return this.mService.setDefaultBrowserPackageNameAsUser(str, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setDefaultBrowserPackageNameAsUser " + e);
            return false;
        }
    }

    @Override
    public boolean setDefaultGallerPackageNameAsUser(String str, int i) {
        try {
            return this.mService.setDefaultGallerPackageNameAsUser(str, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, " setDefaultGallerPackageNameAsUser exception: ", e);
            return false;
        }
    }

    @Override
    public boolean setDefaultMusicPackageNameAsUser(String str, int i) {
        try {
            return this.mService.setDefaultMusicPackageNameAsUser(str, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, " setDefaultMusicPackageNameAsUser exception: ", e);
            return false;
        }
    }

    @Override
    public void setHomeActivity(final ComponentName componentName, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setHomeActivity$0(componentName, i);
            }
        }, "package");
        TranSdkLog.i(TAG, "setHomeActivity");
    }

    @VisibleForTesting
    public void setService(ITranPackageManager iTranPackageManager) {
        this.mService = iTranPackageManager;
    }
}
