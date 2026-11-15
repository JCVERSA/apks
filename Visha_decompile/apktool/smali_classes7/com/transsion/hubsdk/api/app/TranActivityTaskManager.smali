.class public Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;
    }
.end annotation


# static fields
.field public static final BOOST_SCENE_4:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TranActivityTaskManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;


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
.method public activityInMultiWindow(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->activityInMultiWindow(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->addAnimationIconLayer(Landroid/view/SurfaceControl;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter surface control"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void
.end method

.method public boostEndInLauncher(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostEndInLauncher(I)V

    return-void
.end method

.method public boostIMEEnd(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostIMEEnd(Ljava/lang/String;)V

    return-void
.end method

.method public boostIMEStart(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostIMEStart(ILjava/lang/String;)V

    return-void
.end method

.method public boostInFling(IZI)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostInFling(IZI)V

    return-void
.end method

.method public boostSceneEnd(I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-ltz p1, :cond_0

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostSceneEnd(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter scene"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public boostSceneStart(I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-ltz p1, :cond_0

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostSceneStart(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter scene"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public boostStartInLauncher(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostStartInLauncher(I)V

    return-void
.end method

.method public checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z
    .locals 7

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "delayTime is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkTaskCanEnterMultiWin(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->checkTaskCanEnterMultiWin(I)Z

    move-result p0

    return p0
.end method

.method public clearFinishFixedRotationWithTransaction()V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->clearFinishFixedRotationWithTransaction()V

    return-void
.end method

.method public clearMultiWindowExtendSize(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->clearMultiWindowExtendSize(I)V

    return-void
.end method

.method public getAllMultiWindowPackageInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getAllMultiWindowPackageInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllMultiWindowTaskInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getAllMultiWindowTaskInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_0

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultRootLeash()Landroid/view/SurfaceControl;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getDefaultRootLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;
    .locals 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameters width or height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFocusedWinPkgName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran getFocusedWinPkgName"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getFocusedWinPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGivenPkgWindowMode(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getGivenPkgWindowMode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
    .locals 1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid task id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMaxRecentTasksStatic()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMaxRecentTasksStatic()I

    move-result p0

    return p0
.end method

.method public getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowBlackList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowDefaultRect()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowDefaultRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowParamsByTaskId(I)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowParamsByTaskId(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMuteStateV4(I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMuteStateV4(I)Z

    move-result p0

    return p0
.end method

.method public getNeedExit(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getNeedExit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getNotifyMultiWindowBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getNotifyMultiWindowBlackList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageUserId(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getPackageUserId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getRecentTasks(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityTaskManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityTaskManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    :cond_2
    return-object p1
.end method

.method public getStackInfoTaskId(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getStackInfoTaskId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getTaskIdByPkg(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskIdByPkg(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTaskIdByPkgName(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskIdByPkgName(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTaskOrientation(I)I
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskOrientation(I)I

    move-result p0

    return p0
.end method

.method public getTasks(IZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTasks(IZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .locals 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran getTopActivityComponent"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getTopAppWindowInfo()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTopAppWindowInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVideoNotFullscreen(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getVideoNotFullscreen(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasMultiWindow()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hasMultiWindow()Z

    move-result p0

    return p0
.end method

.method public hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public hookMultiWindowToClose(II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowToClose(II)V

    return-void
.end method

.method public hookMultiWindowToExchange(II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowToExchange(II)V

    return-void
.end method

.method public hookMultiWindowVisible()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowVisible()V

    return-void
.end method

.method public hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void
.end method

.method public hookReparentToDefaultDisplay(II)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookReparentToDefaultDisplay(II)V

    return-void
.end method

.method public hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter rect"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appSurface or packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookShowBlurLayerFinish()V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookShowBlurLayerFinish()V

    return-void
.end method

.method public hookStartActivityResult(ILandroid/graphics/Rect;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookStartActivityResult(ILandroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 1

    if-ltz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid task id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p4, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid startBound"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public inMultiWindowMode()Z
    .locals 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran inMultiWindowMode"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->inMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public isCanEnterMultiWin(Landroid/content/ComponentName;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isCanEnterMultiWin(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isHasMultiWindow()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isHasMultiWindow()Z

    move-result p0

    return p0
.end method

.method public isIMEShowing()Z
    .locals 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran isIMEShowing"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isIMEShowing()Z

    move-result p0

    return p0
.end method

.method public isKeyguardLocking()Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isKeyguardLocking()Z

    move-result p0

    return p0
.end method

.method public isPCSourceDisplay(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isPCSourceDisplay(I)Z

    move-result p0

    return p0
.end method

.method public isPinnedMode()Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isPinnedMode()Z

    move-result p0

    return p0
.end method

.method public isResizableActivity()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isResizableActivity()Z

    move-result p0

    return p0
.end method

.method public isSecureWindow()Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isSecureWindow()Z

    move-result p0

    return p0
.end method

.method public isSplitScreen()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isSplitScreen()Z

    move-result p0

    return p0
.end method

.method public isSupportMultiWindow()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isSupportMultiWindow()Z

    move-result p0

    return p0
.end method

.method public isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notAllowKeyguardGoingAwayQuickly(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notAllowKeyguardGoingAwayQuickly(Z)V

    return-void
.end method

.method public notifyAuthenticateSucceed(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notifyAuthenticateSucceed(Z)V

    return-void
.end method

.method public notifyKeyguardGoingAwayQuickly(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notifyKeyguardGoingAwayQuickly(Z)V

    return-void
.end method

.method public notifyLauncherPageTurning(Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notifyLauncherPageTurning(Z)V

    return-void
.end method

.method public pauseTaskTopActivity(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->pauseTaskTopActivity(I)V

    return-void
.end method

.method public registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z

    move-result p0

    return p0
.end method

.method public registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->registerMultiWindowWmShellListener(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeAnimationIconLayer(Landroid/view/SurfaceControl;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter surface control"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeRootTasksInWindowingModes([I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeRootTasksInWindowingModes([I)V

    return-void
.end method

.method public removeTask(I)Z
    .locals 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran removeTask"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeTask(I)Z

    move-result p0

    return p0
.end method

.method public removeTaskPC(II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeTaskPC(II)V

    return-void
.end method

.method public reparentActivity(IIZ)V
    .locals 2

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_1

    const v1, 0x7fffffff

    if-ge p1, v1, :cond_1

    if-le p2, v0, :cond_0

    if-ge p2, v1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->reparentActivity(IIZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter destDisplayId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter fromDisplayId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reparentTaskToDefaultTDA()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->reparentTaskToDefaultTDA()V

    return-void
.end method

.method public requestHideDock()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->requestHideDock()V

    return-void
.end method

.method public requestShowDock()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->requestShowDock()V

    return-void
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V

    return-void
.end method

.method public setBoostSceneState(ILjava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setBoostSceneState(ILjava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scene is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConnectBlackListToSystem(Ljava/util/List;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setConnectBlackListToSystem(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFlingState(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setFlingState(Z)V

    return-void
.end method

.method public setJankScenarioState(ILjava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setJankScenarioState(ILjava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jankName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public setMultiWindowAcquireFocus(IZ)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowAcquireFocus(IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "multiWindowId has exceeded the maximum value "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowBlackListToSystem(Ljava/util/List;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowBlackListToSystem(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowExtendSize(II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowExtendSize(II)V

    return-void
.end method

.method public setMultiWindowParams(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowParams(Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowWhiteListToSystem(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMuteStateV4(ZI)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMuteStateV4(ZI)V

    return-void
.end method

.method public setStartInMultiWindow(Ljava/lang/String;III)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setStartInMultiWindow(Ljava/lang/String;III)V

    return-void
.end method

.method public setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V

    return-void
.end method

.method public setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V

    return-void
.end method

.method public setTbSpecialLayerState(ZI)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setTbSpecialLayerState(ZI)V

    return-void
.end method

.method public setThunderbackAnimating(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setThunderbackAnimating(Z)V

    return-void
.end method

.method public startCurrentAppInMultiWindow(ZI)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->startCurrentAppInMultiWindow(ZI)V

    return-void
.end method

.method public startLauncherAction(Landroid/content/Intent;I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->startLauncherAction(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopTask(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->stopTask(I)V

    return-void
.end method

.method public stopTaskPC(II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->stopTaskPC(II)V

    return-void
.end method

.method public takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public taskInMultiWindowById(I)Z
    .locals 1

    if-ltz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->taskInMultiWindowById(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid task id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z

    move-result p0

    return p0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Configuration is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateZBoostTaskIdWhenToSplit(I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->updateZBoostTaskIdWhenToSplit(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskID is out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
