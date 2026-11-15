.class public Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubPackageManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "package"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$checkDefaultMusic$14()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;III)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setComponentEnabledSetting$4(Landroid/content/ComponentName;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setApplicationNotifyScreenOn$11(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/Intent;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$queryIntentActivitiesAsUser$6(Landroid/content/Intent;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$checkDefaultGaller$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getInstalledApplicationsInDualSpace$17(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$installExistingPackageAsUser$8(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getAllHiddenApps$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$deletePackageAsUser$7(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getPackageInfo$1(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$checkDefaultCalendar$13()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getApplicationNotifyScreenOn$10(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkDefaultCalendar$13()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->checkDefaultCalendar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v1, " checkDefaultCalendar exception: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$checkDefaultGaller$12()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->checkDefaultGaller()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v1, " checkDefaultGaller exception: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$checkDefaultMusic$14()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->checkDefaultMusic()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v1, " checkDefaultMusic exception: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$deletePackageAsUser$7(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;

    invoke-direct {v1, p0, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;)V

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/content/pm/ITranPackageDeleteObserver;II)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAllHiddenApps$3()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getAllHiddenApps()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getApplicationNotifyScreenOn$10(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getApplicationNotifyScreenOn(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " getApplicationNotifyScreenOn exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDefaulCalendarPackageNameAsUser$15(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " getDefaulCalendarPackageNameAsUser exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method private synthetic lambda$getHomeActivities$2(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getInstalledApplicationsAsUser$5(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getInstalledApplicationsAsUserExt(II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getInstalledApplicationsInDualSpace$17(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getInstalledApplicationsInDualSpace(I)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$getPackageInfo$1(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getPermissionControllerPackageName$9()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$installExistingPackageAsUser$8(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$queryIntentActivitiesAsUser$6(Landroid/content/Intent;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->queryIntentActivitiesAsUserExt(Landroid/content/Intent;II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setApplicationNotifyScreenOn$11(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setApplicationNotifyScreenOn(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setApplicationNotifyScreenOn exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setComponentEnabledSetting$4(Landroid/content/ComponentName;III)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setDefaulCalendarPackageNameAsUser$16(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setDefaulCalendarPackageNameAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setHomeActivity$0(Landroid/content/ComponentName;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setHomeActivity(Landroid/content/ComponentName;I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setHomeActivity$0(Landroid/content/ComponentName;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setDefaulCalendarPackageNameAsUser$16(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getHomeActivities$2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getInstalledApplicationsAsUser$5(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getDefaulCalendarPackageNameAsUser$15(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getPermissionControllerPackageName$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkDefaultCalendar()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lp4b;

    invoke-direct {v1, p0}, Lp4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public checkDefaultGaller()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lc4b;

    invoke-direct {v1, p0}, Lc4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public checkDefaultMusic()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, La4b;

    invoke-direct {v1, p0}, La4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;

    invoke-direct {v1, p0, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/content/pm/ITranPackageDeleteObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deletePackageAsOOBE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V
    .locals 8

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lh4b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lh4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V

    const-string p0, "package"

    invoke-virtual {v0, v7, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getAllHiddenApps()[Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ln4b;

    invoke-direct {v1, p0}, Ln4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllHiddenApps result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getApplicationInfoAsUser fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationNotifyScreenOn(Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ll4b;

    invoke-direct {v1, p0, p1, p2}, Ll4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lg4b;

    invoke-direct {v1, p0, p1}, Lg4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " getDefaultGallerPackageNameAsUser exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " getDefaultMusicPackageNameAsUser exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Le4b;

    invoke-direct {v1, p0, p1}, Le4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/util/List;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHomeActivities mComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lq4b;

    invoke-direct {v1, p0, p1, p2}, Lq4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInstalledApplicationsAsUser applicationInfos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getInstalledApplicationsInDualSpace(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lf4b;

    invoke-direct {v1, p0, p1}, Lf4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInstalledApplicationsInDualSpace applicationInfos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getInstalledPackagesAsUserExt(II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInstalledPackagesAsUser fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Li4b;

    invoke-direct {v1, p0, p1, p2, p3}, Li4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPackageInfo mPackageInfo:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " getPackageInfoAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lo4b;

    invoke-direct {v1, p0}, Lo4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPermissionControllerPackageName packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lk4b;

    invoke-direct {v1, p0, p1, p2}, Lk4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "installExistingPackageAsUser result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRemovableSysApp(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " isRemovableSysApp exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " markAsUnremovableSystemAppTemp exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 2
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

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ld4b;

    invoke-direct {v1, p0, p1, p2, p3}, Ld4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/Intent;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryIntentActivitiesAsUser mResolveInfos:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->queryIntentServicesAsUserExt(Landroid/content/Intent;II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryIntentServicesAsUser fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public reinstall(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->reinstall(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " reinstall exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 p0, -0x3e8

    return p0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "replacePreferredActivity fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, "setApplicationEnabledSetting exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setApplicationEnabledSettingForPM(Ljava/lang/String;II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setApplicationEnabledSettingForPM(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setApplicationNotifyScreenOn(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lm4b;

    invoke-direct {v1, p0, p1, p2, p3}, Lm4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .locals 8

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lj4b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lj4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;III)V

    const-string p0, "package"

    invoke-virtual {v0, v7, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lb4b;

    invoke-direct {v1, p0, p1, p2}, Lb4b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDefaultBrowserPackageNameAsUser "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setDefaultGallerPackageNameAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setDefaultMusicPackageNameAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setHomeActivity(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lz3b;

    invoke-direct {v1, p0, p1, p2}, Lz3b;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p1, "setHomeActivity"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/content/pm/ITranPackageManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    return-void
.end method
