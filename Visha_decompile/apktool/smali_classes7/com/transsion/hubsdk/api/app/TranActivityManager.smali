.class public Lcom/transsion/hubsdk/api/app/TranActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;,
        Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;,
        Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;,
        Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;
    }
.end annotation


# static fields
.field public static final CLEAN_LEVEL_HIGH:I = 0x3

.field private static final EXCEPTION_TEXT:Ljava/lang/String; = "taskInfo cannot be null"

.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranActivityManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToAppLockAsUser(ILandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->applyToAppLockAsUser(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public backgroundAllowlistUid(I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->backgroundAllowlistUid(I)V

    return-void
.end method

.method public calculateReclaimableMemory()J
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->calculateReclaimableMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public changeCompactionMem(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->changeCompactionMem(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "meminfo cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->clearApplicationUserData(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)Z

    move-result p0

    return p0
.end method

.method public doClean(ILjava/util/List;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->doClean(ILjava/util/List;)V

    return-void
.end method

.method public doClean(ZZZZ[I[Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9

    .line 2
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->doClean(ZZZZ[I[Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public enableHiber(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->enableHiber(Z)V

    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method public forceStopPackageNecessity(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->forceStopPackageNecessity(Ljava/lang/String;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public gameSceneEnd(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->gameSceneEnd(Ljava/lang/String;Z)V

    return-void
.end method

.method public gameSceneStart(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->gameSceneStart(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-void
.end method

.method public getActivityToken(Landroid/app/Activity;)Landroid/os/IBinder;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getActivityToken"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAppListMode(I)[I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getAppListMode(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundRestrictionExemptionReason(I)I
    .locals 1

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "uid cannot be out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBloodOxygenLedState()I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getBloodOxygenLedState()I

    move-result p0

    return p0
.end method

.method public getCleanProtectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getCleanProtectList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationExt(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getConfigurationExt(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskInfo cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCpuId(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getCpuId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUser()I
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method public getDisplayId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getDisplayId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskInfo cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getJavaProcessRss()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getJavaProcessRss()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKernelMemInfo()[J
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getKernelMemInfo()[J

    move-result-object p0

    return-object p0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getLightEffectInfos(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLightEffectInfos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLightStyleDataBundle(I)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLightStyleDataBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getLightStyleIdArray(I)[I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLightStyleIdArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getLightStyleIdData(I)[I
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLightStyleIdData(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getLockTaskModeState()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getLockTaskModeState()I

    move-result p0

    return p0
.end method

.method public getMEMCList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getMEMCList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "param key cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMemoryForMF(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getMemoryForMF(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "memFusionSize cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNativeProcessRss()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getNativeProcessRss()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getRealActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getRealActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskInfo cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    :cond_2
    return-object p1
.end method

.method public getSwapFileSizeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getSwapFileSizeList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTargetFps(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getTargetFps(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTopActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getTopActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivityType(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getTopActivityType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    return p0
.end method

.method public getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranGameList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getTranGameList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskInfo cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWindowingMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getWindowingMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskInfo cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookDisturbStatus(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->hookDisturbStatus(I)V

    return-void
.end method

.method public ignoreCPUAndMemoryPressureForPreload()Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->ignoreCPUAndMemoryPressureForPreload()Z

    move-result p0

    return p0
.end method

.method public inMultiWindowMode(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->inMultiWindowMode(I)Z

    move-result p0

    return p0
.end method

.method public isEnabledHiber()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isEnabledHiber()Z

    move-result p0

    return p0
.end method

.method public isGameGuardSupport()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isGameGuardSupport()Z

    move-result p0

    return p0
.end method

.method public isInGameGuardProtectedList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isInGameGuardProtectedList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInLockTaskMode()Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isInLockTaskMode()Z

    move-result p0

    return p0
.end method

.method public isLowRamDeviceStatic()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isLowRamDeviceStatic()Z

    move-result p0

    return p0
.end method

.method public isMatchCurMemSelection()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isMatchCurMemSelection()Z

    move-result p0

    return p0
.end method

.method public isMemSettingEnterEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isMemSettingEnterEnabled()Z

    move-result p0

    return p0
.end method

.method public isMemoryEnoughToMF(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isMemoryEnoughToMF(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "memFusionSize cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRequestChangeParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isRequestChangeParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUserRunning(II)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isUserRunning(II)Z

    move-result p0

    return p0
.end method

.method public isUxCompactionSupport()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isUxCompactionSupport()Z

    move-result p0

    return p0
.end method

.method public isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskInfo cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isWhiteApp(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isWhiteApp(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "package is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyInterceptUnknowSource(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->notifyInterceptUnknowSource(Z)V

    return-void
.end method

.method public registerActivityStartObserver([Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerActivityStartObserver([Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Z

    move-result p0

    return p0
.end method

.method public registerAppRecoveryCallback(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getActivityToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerAppRecoveryCallback(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/os/IBinder;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z

    move-result p0

    return p0
.end method

.method public registerBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registerProcessObserver() parameter observer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V

    return-void
.end method

.method public registerTranNecessityServices(Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerTranNecessityServices(Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;)V

    return-void
.end method

.method public registerUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->registerUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Observer name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportAbnormalApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->reportAbnormalApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "proc,from and reason cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetAllTest()Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->resetAllTest()Z

    move-result p0

    return p0
.end method

.method public resumeAppSwitches()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->resumeAppSwitches()V

    return-void
.end method

.method public sendMallocDebugSignal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->sendMallocDebugSignal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setAppForFixAdj(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setAppForFixAdj(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName and processName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppIdleForLimit(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setAppIdleForLimit(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppInCgroup(ILjava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setAppInCgroup(ILjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppMode(II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setAppMode(II)V

    return-void
.end method

.method public setAudioPatch(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setAudioPatch(Ljava/lang/String;)V

    return-void
.end method

.method public setBlackListToSystem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setBlackListToSystem(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "list is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCleanProtect(Ljava/lang/String;Z)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setCleanProtect(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setCpuPresureLevel(I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setCpuPresureLevel(I)Z

    move-result p0

    return p0
.end method

.method public setCpuSystemSence(I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setCpuSystemSence(I)Z

    move-result p0

    return p0
.end method

.method public setCpuUsagePercentForKill(I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setCpuUsagePercentForKill(I)Z

    move-result p0

    return p0
.end method

.method public setCurrentActivityKeepAwake()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setCurrentActivityKeepAwake()V

    return-void
.end method

.method public setETControl(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setETControl(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setGameParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setGameParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLedMusicPlay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setLedMusicPlay(Z)V

    return-void
.end method

.method public setLightingEffect([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setLightingEffect([I)V

    return-void
.end method

.method public setLightingScene(I[ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setLightingScene(I[ILandroid/os/Bundle;)V

    return-void
.end method

.method public setMemSystemSence(I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setMemSystemSence(I)Z

    move-result p0

    return p0
.end method

.method public setMemoryPresureLevel(I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setMemoryPresureLevel(I)Z

    move-result p0

    return p0
.end method

.method public setTestMode(Z)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->setTestMode(Z)Z

    move-result p0

    return p0
.end method

.method public startProfile(Landroid/os/UserHandle;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->startProfile(Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "startProfile param should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->startTNE(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public startUserInBackground(I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->startUserInBackground(I)Z

    move-result p0

    return p0
.end method

.method public stopAppForUser(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->stopAppForUser(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public swipeUpClean(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->swipeUpClean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public switchMemFusion(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->switchMemFusion(Z)V

    return-void
.end method

.method public switchUXCompaction(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->switchUXCompaction(Z)V

    return-void
.end method

.method public toggleFreeformWindowingMode(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->toggleFreeformWindowingMode(I)V

    return-void
.end method

.method public triggerCpuKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerCpuKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "process and packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public triggerHealthBlockAppForLimit(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerHealthBlockAppForLimit(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public triggerMPSKByMemAvailable(I)Z
    .locals 1

    .line 3
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMPSKByMemAvailableExt(I)Z

    move-result p0

    return p0
.end method

.method public triggerMPSKByMemAvailable(J)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMPSKByMemAvailable(J)Z

    move-result p0

    return p0
.end method

.method public triggerMPSKByMemFree(I)Z
    .locals 1

    .line 3
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMPSKByMemFreeExt(I)Z

    move-result p0

    return p0
.end method

.method public triggerMPSKByMemFree(J)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMPSKByMemFree(J)Z

    move-result p0

    return p0
.end method

.method public triggerMPSKBySwapFree(I)Z
    .locals 1

    .line 3
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMPSKBySwapFreeExt(I)Z

    move-result p0

    return p0
.end method

.method public triggerMPSKBySwapFree(J)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMPSKBySwapFree(J)Z

    move-result p0

    return p0
.end method

.method public triggerMemPressureforSortKill()Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMemPressureforSortKill()Z

    move-result p0

    return p0
.end method

.method public triggerMemoryLowKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->triggerMemoryLowKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "process and packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterAppRecoveryCallback(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getActivityToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->unRegisterAppRecoveryCallback(Landroid/os/IBinder;)V

    return-void
.end method

.method public unRegisterBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->unRegisterBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->unRegisterProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unRegisterProcessObserver() parameter observer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterActivityStartObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->unregisterActivityStartObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)V

    return-void
.end method

.method public unregisterAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->unregisterAudioVolumeListener(Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Z

    move-result p0

    return p0
.end method

.method public unregisterTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->unregisterTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V

    return-void
.end method

.method public unregisterUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->unregisterUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V

    return-void
.end method
