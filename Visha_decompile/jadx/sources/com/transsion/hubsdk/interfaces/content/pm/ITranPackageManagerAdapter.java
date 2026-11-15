package com.transsion.hubsdk.interfaces.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import com.transsion.hubsdk.aosp.content.pm.TranAospPackageManagerExt;
import java.util.List;

public interface ITranPackageManagerAdapter {
    void checkDefaultCalendar();

    void checkDefaultGaller();

    void checkDefaultMusic();

    void deletePackageAsOOBE(String str, TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver, int i);

    void deletePackageAsUser(String str, TranAospPackageManagerExt.ITranPackageDeleteObserver iTranPackageDeleteObserver, int i, int i2);

    String[] getAllHiddenApps();

    int getApplicationEnabledSetting(String str);

    ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2);

    int getApplicationNotifyScreenOn(String str, int i);

    String getDefaulCalendarPackageNameAsUser(int i);

    String getDefaultGallerPackageNameAsUser(int i);

    String getDefaultMusicPackageNameAsUser(int i);

    ComponentName getHomeActivities(List<ResolveInfo> list);

    List<ApplicationInfo> getInstalledApplicationsAsUser(int i, int i2);

    List<ApplicationInfo> getInstalledApplicationsInDualSpace(int i);

    List<PackageInfo> getInstalledPackagesAsUser(int i, int i2);

    PackageInfo getPackageInfo(String str, int i, int i2);

    PackageInfo getPackageInfoAsUser(String str, int i, int i2);

    String getPermissionControllerPackageName();

    int installExistingPackageAsUser(String str, int i);

    boolean isRemovableSysApp(String str);

    void markAsUnremovableSystemAppTemp(String str, boolean z);

    List<ResolveInfo> queryIntentActivitiesAsUser(Intent intent, int i, int i2);

    List<ResolveInfo> queryIntentServicesAsUser(Intent intent, int i, int i2);

    int reinstall(String str, String str2);

    void replacePreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName, int i2);

    void setApplicationEnabledSetting(String str, int i, int i2, int i3, String str2);

    void setApplicationEnabledSettingForPM(String str, int i, int i2);

    void setApplicationNotifyScreenOn(String str, int i, int i2);

    void setComponentEnabledSetting(ComponentName componentName, int i, int i2, int i3);

    boolean setDefaulCalendarPackageNameAsUser(String str, int i);

    boolean setDefaultBrowserPackageNameAsUser(String str, int i);

    boolean setDefaultGallerPackageNameAsUser(String str, int i);

    boolean setDefaultMusicPackageNameAsUser(String str, int i);

    void setHomeActivity(ComponentName componentName, int i);
}
