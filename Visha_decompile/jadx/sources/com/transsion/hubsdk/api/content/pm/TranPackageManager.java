package com.transsion.hubsdk.api.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.transsion.hubsdk.aosp.content.pm.TranAospPackageManager;
import com.transsion.hubsdk.aosp.content.pm.TranAospPackageManagerExt;
import com.transsion.hubsdk.api.content.pm.TranPackageManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.pm.TranThubPackageManager;
import com.transsion.hubsdk.interfaces.content.pm.ITranPackageManagerAdapter;
import java.util.List;

public class TranPackageManager {
    public static final int DELETE_SYSTEM_APP = 4;
    public static final int FLAG_PERMISSION_GRANTED_BY_DEFAULT = 32;
    public static final int FLAG_PERMISSION_POLICY_FIXED = 4;
    public static final int FLAG_PERMISSION_RESTRICTION_INSTALLER_EXEMPT = 2048;
    public static final int FLAG_PERMISSION_RESTRICTION_SYSTEM_EXEMPT = 4096;
    public static final int FLAG_PERMISSION_RESTRICTION_UPGRADE_EXEMPT = 8192;
    public static final int FLAG_PERMISSION_REVIEW_REQUIRED = 64;
    public static final int FLAG_PERMISSION_SYSTEM_FIXED = 16;
    public static final int FLAG_PERMISSION_USER_SENSITIVE_WHEN_DENIED = 512;
    public static final int FLAG_PERMISSION_USER_SENSITIVE_WHEN_GRANTED = 256;
    public static final int INSTALL_SUCCEEDED = 1;
    public static final int MATCH_ANY_USER = 4194304;
    public static final int MATCH_HIDDEN_UNTIL_INSTALLED_COMPONENTS = 536870912;
    public static final String PACKAGE_NAME_ARGUMENT_EXCEPTION = "package name should not be null";
    private static final String TAG = "TranPackageManager";
    public static final String USERID_ARGUMENT_EXCEPTION = "userId is wrong";
    private ITranPackageManagerAdapter mAospService;
    private ITranPackageManagerAdapter mThubService;

    public interface ITranPackageDeleteObserver {
        void packageDeleted(String str, int i);
    }

    public static void lambda$deletePackageAsOOBE$1(ITranPackageDeleteObserver iTranPackageDeleteObserver, String str, int i) {
        if (iTranPackageDeleteObserver != null) {
            iTranPackageDeleteObserver.packageDeleted(str, i);
        }
    }

    public static void lambda$deletePackageAsUser$0(ITranPackageDeleteObserver iTranPackageDeleteObserver, String str, int i) {
        if (iTranPackageDeleteObserver != null) {
            iTranPackageDeleteObserver.packageDeleted(str, i);
        }
    }

    public void checkDefaultCalendar() {
        getService(TranVersion.Core.VERSION_33281).checkDefaultCalendar();
    }

    public void checkDefaultGaller() {
        getService(TranVersion.Core.VERSION_33281).checkDefaultGaller();
    }

    public void checkDefaultMusic() {
        getService(TranVersion.Core.VERSION_33281).checkDefaultMusic();
    }

    @TranLevel(level = 2)
    public void deletePackageAsOOBE(String str, final ITranPackageDeleteObserver iTranPackageDeleteObserver, int i) {
        getService(TranVersion.Core.VERSION_33181).deletePackageAsOOBE(str, new TranAospPackageManagerExt.ITranPackageDeleteObserver() {
            @Override
            public final void packageDeleted(String str2, int i2) {
                TranPackageManager.lambda$deletePackageAsOOBE$1(iTranPackageDeleteObserver, str2, i2);
            }
        }, i);
    }

    @TranLevel(level = 1)
    public void deletePackageAsUser(String str, final ITranPackageDeleteObserver iTranPackageDeleteObserver, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        if (i2 <= Integer.MIN_VALUE || i2 >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("userId is wrong");
        }
        getService(TranVersion.Core.VERSION_33161).deletePackageAsUser(str, new TranAospPackageManagerExt.ITranPackageDeleteObserver() {
            @Override
            public final void packageDeleted(String str2, int i3) {
                TranPackageManager.lambda$deletePackageAsUser$0(iTranPackageDeleteObserver, str2, i3);
            }
        }, i, i2);
    }

    @TranLevel(level = 2)
    public String[] getAllHiddenApps() {
        return getService(TranVersion.Core.VERSION_33121).getAllHiddenApps();
    }

    public int getApplicationEnabledSetting(String str) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33161).getApplicationEnabledSetting(str);
        }
        throw new IllegalArgumentException("package name should not be null");
    }

    public ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2) throws PackageManager.NameNotFoundException {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33161).getApplicationInfoAsUser(str, i, i2);
        }
        throw new IllegalArgumentException("package name should not be null");
    }

    public int getApplicationNotifyScreenOn(String str, int i) {
        return getService(TranVersion.Core.VERSION_33281).getApplicationNotifyScreenOn(str, i);
    }

    public String getDefaulCalendarPackageNameAsUser(int i) {
        return getService(TranVersion.Core.VERSION_33281).getDefaulCalendarPackageNameAsUser(i);
    }

    @TranLevel(level = 2)
    public String getDefaultGallerPackageNameAsUser(int i) {
        return getService(TranVersion.Core.VERSION_33181).getDefaultGallerPackageNameAsUser(i);
    }

    public String getDefaultMusicPackageNameAsUser(int i) {
        return getService(TranVersion.Core.VERSION_33281).getDefaultMusicPackageNameAsUser(i);
    }

    public ComponentName getHomeActivities(List<ResolveInfo> list) {
        return getService(TranVersion.Core.VERSION_33111).getHomeActivities(list);
    }

    @TranLevel(level = 1)
    public List<ApplicationInfo> getInstalledApplicationsAsUser(int i, int i2) {
        if (i2 < 0 || i2 >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("userId is wrong");
        }
        return getService(TranVersion.Core.VERSION_33211).getInstalledApplicationsAsUser(i, i2);
    }

    public List<ApplicationInfo> getInstalledApplicationsInDualSpace(int i) {
        return getService(TranVersion.Core.VERSION_33431).getInstalledApplicationsInDualSpace(i);
    }

    public List<PackageInfo> getInstalledPackagesAsUser(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33182).getInstalledPackagesAsUser(i, i2);
    }

    @TranLevel(level = 1)
    public PackageInfo getPackageInfo(String str, int i, int i2) {
        return getService(TranVersion.Core.VERSION_33111).getPackageInfo(str, i, i2);
    }

    public PackageInfo getPackageInfoAsUser(String str, int i, int i2) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33361).getPackageInfoAsUser(str, i, i2);
        }
        throw new IllegalArgumentException("packageName is null");
    }

    public String getPermissionControllerPackageName() {
        return getService(TranVersion.Core.VERSION_33171).getPermissionControllerPackageName();
    }

    public ITranPackageManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubPackageManager");
            ITranPackageManagerAdapter iTranPackageManagerAdapter = this.mThubService;
            if (iTranPackageManagerAdapter != null) {
                return iTranPackageManagerAdapter;
            }
            TranThubPackageManager tranThubPackageManager = new TranThubPackageManager();
            this.mThubService = tranThubPackageManager;
            return tranThubPackageManager;
        }
        TranSdkLog.i(TAG, "TranAospPackageManager");
        ITranPackageManagerAdapter iTranPackageManagerAdapter2 = this.mAospService;
        if (iTranPackageManagerAdapter2 != null) {
            return iTranPackageManagerAdapter2;
        }
        TranAospPackageManager tranAospPackageManager = new TranAospPackageManager();
        this.mAospService = tranAospPackageManager;
        return tranAospPackageManager;
    }

    @TranLevel(level = 1)
    public int installExistingPackageAsUser(String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        if (i < 0 || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("userId is wrong");
        }
        return getService(TranVersion.Core.VERSION_33161).installExistingPackageAsUser(str, i);
    }

    public boolean isRemovableSysApp(String str) {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            return false;
        }
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33361).isRemovableSysApp(str);
        }
        throw new IllegalArgumentException("packageName is null");
    }

    public void markAsUnremovableSystemAppTemp(String str, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("packageName is null");
            }
            getService(TranVersion.Core.VERSION_33361).markAsUnremovableSystemAppTemp(str, z);
        }
    }

    @TranLevel(level = 1)
    public List<ResolveInfo> queryIntentActivitiesAsUser(Intent intent, int i, int i2) {
        if (i2 < 0 || i2 >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("userId is wrong");
        }
        return getService(TranVersion.Core.VERSION_33211).queryIntentActivitiesAsUser(intent, i, i2);
    }

    public List<ResolveInfo> queryIntentServicesAsUser(Intent intent, int i, int i2) {
        return getService(TranVersion.Core.VERSION_33211).queryIntentServicesAsUser(intent, i, i2);
    }

    public int reinstall(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33431).reinstall(str, str2);
    }

    public void replacePreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName, int i2) {
        getService(TranVersion.Core.VERSION_33151).replacePreferredActivity(intentFilter, i, componentNameArr, componentName, i2);
    }

    @TranLevel(level = 2)
    public void setApplicationEnabledSetting(String str, int i, int i2, int i3, String str2) {
        getService(TranVersion.Core.VERSION_33121).setApplicationEnabledSetting(str, i, i2, i3, str2);
    }

    public void setApplicationEnabledSettingForPM(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        getService(TranVersion.Core.VERSION_33161).setApplicationEnabledSettingForPM(str, i, i2);
    }

    public void setApplicationNotifyScreenOn(String str, int i, int i2) {
        getService(TranVersion.Core.VERSION_33281).setApplicationNotifyScreenOn(str, i, i2);
    }

    @TranLevel(level = 1)
    public void setComponentEnabledSetting(ComponentName componentName, int i, int i2, int i3) {
        if (componentName == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        if (i3 <= Integer.MIN_VALUE || i3 >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("userId is wrong");
        }
        getService(TranVersion.Core.VERSION_33161).setComponentEnabledSetting(componentName, i, i2, i3);
    }

    public boolean setDefaulCalendarPackageNameAsUser(String str, int i) {
        return getService(TranVersion.Core.VERSION_33281).setDefaulCalendarPackageNameAsUser(str, i);
    }

    @TranLevel(level = 2)
    public boolean setDefaultBrowserPackageNameAsUser(String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).setDefaultBrowserPackageNameAsUser(str, i);
    }

    public Boolean setDefaultGallerPackageNameAsUser(String str, int i) {
        return Boolean.valueOf(getService(TranVersion.Core.VERSION_33181).setDefaultGallerPackageNameAsUser(str, i));
    }

    public boolean setDefaultMusicPackageNameAsUser(String str, int i) {
        return getService(TranVersion.Core.VERSION_33281).setDefaultMusicPackageNameAsUser(str, i);
    }

    @TranLevel(level = 3)
    public void setHomeActivity(ComponentName componentName, int i) {
        getService(TranVersion.Core.VERSION_33111).setHomeActivity(componentName, i);
    }
}
