.class public interface abstract Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkDefaultCalendar()V
.end method

.method public abstract checkDefaultGaller()V
.end method

.method public abstract checkDefaultMusic()V
.end method

.method public abstract deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;I)V
.end method

.method public abstract deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V
.end method

.method public abstract getAllHiddenApps()[Ljava/lang/String;
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getApplicationNotifyScreenOn(Ljava/lang/String;I)I
.end method

.method public abstract getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;
.end method

.method public abstract getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;
.end method

.method public abstract getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;
.end method

.method public abstract getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getInstalledApplicationsAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledApplicationsInDualSpace(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackagesAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPermissionControllerPackageName()Ljava/lang/String;
.end method

.method public abstract installExistingPackageAsUser(Ljava/lang/String;I)I
.end method

.method public abstract isRemovableSysApp(Ljava/lang/String;)Z
.end method

.method public abstract markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V
.end method

.method public abstract queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reinstall(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
.end method

.method public abstract setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract setApplicationEnabledSettingForPM(Ljava/lang/String;II)V
.end method

.method public abstract setApplicationNotifyScreenOn(Ljava/lang/String;II)V
.end method

.method public abstract setComponentEnabledSetting(Landroid/content/ComponentName;III)V
.end method

.method public abstract setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract setHomeActivity(Landroid/content/ComponentName;I)V
.end method
