.class public Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubActivityTaskManager"

.field private static final mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final mActivityStarterExecutedCallbackLock:Ljava/lang/Object;


# instance fields
.field private mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

.field private mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    const-string v0, "activity_task"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IZ)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$takeTaskSnapshot$5(IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/lang/String;ZZJ)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$checkAndUpdateEventStateForMulti$10(Ljava/lang/String;ZZJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$registerActivityStarterExecutedObserver$11(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$getAllMultiWindowTaskInfo$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$getAllRootTaskInfosOnDisplay$6(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$isSplitScreen$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$setConnectBlackListToSystem$4(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$getMaxRecentTasksStatic$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IIZ)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$reparentActivity$2(IIZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;[I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$removeRootTasksInWindowingModes$0([I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$notAllowKeyguardGoingAwayQuickly$8(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Landroid/content/res/Configuration;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$updateConfiguration$7(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkAndUpdateEventStateForMulti$10(Ljava/lang/String;ZZJ)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getAllMultiWindowTaskInfo$9()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllMultiWindowTaskInfo()Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAllRootTaskInfosOnDisplay$6(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getMaxRecentTasksStatic$1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMaxRecentTasksStatic()I

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

.method private synthetic lambda$isSplitScreen$3()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSplitScreen()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$notAllowKeyguardGoingAwayQuickly$8(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notAllowKeyguardGoingAwayQuickly(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerActivityStarterExecutedObserver$11(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;
    .locals 1

    new-instance p2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$1;)V

    return-object p2
.end method

.method private synthetic lambda$removeRootTasksInWindowingModes$0([I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeRootTasksInWindowingModes([I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$reparentActivity$2(IIZ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->reparentActivity(IIZ)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setConnectBlackListToSystem$4(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setConnectBlackListToSystem(Ljava/util/List;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$takeTaskSnapshot$5(IZ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/window/TranTaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$updateConfiguration$7(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public activityInMultiWindow(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->activityInMultiWindow(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityInMultiWindow fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAnimationIconLayer fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addMultiExchangeListener fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public boostEndInLauncher(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostEndInLauncher(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostEndInLauncher RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public boostIMEEnd(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostIMEEnd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostIMEEnd RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public boostIMEStart(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostIMEStart(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "boostIMEStart RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public boostInFling(IZI)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostInFling(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "boostInFling RemoteException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public boostSceneEnd(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostSceneEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostSceneEnd fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public boostSceneStart(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostSceneStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostSceneStart fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public boostStartInLauncher(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostStartInLauncher(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostStartInLauncher RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z
    .locals 9

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v8, Lxza;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lxza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/lang/String;ZZJ)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v8, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public checkTaskCanEnterMultiWin(I)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->checkTaskCanEnterMultiWin(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTaskCanEnterMultiWin RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public clearFinishFixedRotationWithTransaction()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->clearFinishFixedRotationWithTransaction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearFinishFixedRotationWithTransaction fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public clearMultiWindowExtendSize(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->clearMultiWindowExtendSize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMultiWindowExtendSize RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAllMultiWindowPackageInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllMultiWindowPackageInfo()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllMultiWindowPackageInfo RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllMultiWindowTaskInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lg0b;

    invoke-direct {v1, p0}, Lg0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Le0b;

    invoke-direct {v1, p0, p1}, Le0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;I)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;

    new-instance v1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivity(Landroid/content/ComponentName;)V

    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskIds:[I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskIds([I)V

    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskNames([Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskBounds([Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskUserIds([I)V

    iget-boolean v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mVisible:Z

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setVisible(Z)V

    iget v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setPosition(I)V

    iget v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mWindowingMode:I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setWindowingMode(I)V

    iget v0, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTaskId(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public getDefaultRootLeash()Landroid/view/SurfaceControl;
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getDefaultRootLeash()Landroid/view/SurfaceControl;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultRootLeash fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 p0, 0x0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getDragAndZoomBgLeash fail "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getFocusedWinPkgName()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getFocusedWinPkgName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusedWinPkgName fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getGivenPkgWindowMode(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getGivenPkgWindowMode(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getMaxRecentTasksStatic()I
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lf0b;

    invoke-direct {v1, p0}, Lf0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxRecentTasksStatic count :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMultiDisplayAreaAppInfo RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiDisplayAreaTopPackageV4 fail "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiWinTopTask fail "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWindowBlackList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowBlackList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiWindowBlackList fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWindowDefaultRect()Landroid/graphics/Rect;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowDefaultRect()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultiWindowDefaultRect RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultiWindowParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWindowParamsByTaskId(I)Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowParamsByTaskId(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultiWindowParamsByTaskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWindowVersion()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiWindowVersion fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMuteStateV4(I)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMuteStateV4(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMuteStateV4 fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNeedExit(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getNeedExit(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getNotifyMultiWindowBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getNotifyMultiWindowBlackList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotifyMultiWindowBlackList RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackageUserId(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getPackageUserId(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRecentTasks fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/app/TranRootTaskInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->getTopActivityString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivityString(Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getStackInfoTaskId(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getStackInfoTaskId(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskBounds fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTaskIdByPkg(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskIdByPkg(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getTaskIdByPkgName(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskIdByPkgName(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTaskIdByPkgName RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getTaskOrientation(I)I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskOrientation(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskOrientation fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
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

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTasks fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivityComponent fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTopAppWindowInfo()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopAppWindowInfo()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopAppWindowInfo fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopTask fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getVideoNotFullscreen(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getVideoNotFullscreen(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public hasMultiWindow()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hasMultiWindow()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookGetMultiWindowDefaultRect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public hookMultiWindowToClose(II)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowToClose(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookMultiWindowToClose RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public hookMultiWindowToExchange(II)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowToExchange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookMultiWindowToExchange RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public hookMultiWindowVisible()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowVisible()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookMultiWindowVisible RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookMultiWindowVisibleWithCallback fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public hookReparentToDefaultDisplay(II)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookReparentToDefaultDisplay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookReparentToDefaultDisplay fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookSetMultiWindowDefaultRectResult fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookShowBlurLayer RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public hookShowBlurLayerFinish()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookShowBlurLayerFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookShowBlurLayerFinish fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hookStartActivityResult(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartActivityResult(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookStartActivityResult fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hookStartMultiWindow fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p5}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hookStartMultiWindowAndMakeOwnAnimation fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookToMultiWindow RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public inMultiWindowMode()Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->inMultiWindowMode()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inMultiWindowMode fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCanEnterMultiWin(Landroid/content/ComponentName;)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isCanEnterMultiWin(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCanEnterMultiWin RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isHasMultiWindow()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isHasMultiWindow()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isIMEShowing()Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isIMEShowing()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIMEShowing fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isKeyguardLocking()Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isKeyguardLocking()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardLocking fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPCSourceDisplay(I)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isPCSourceDisplay(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPCSourceDisplay RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPinnedMode()Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isPinnedMode()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPinnedMode fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isResizableActivity()Z
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isResizableActivity()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResizableActivity RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSecureWindow()Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSecureWindow()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecureWindow fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSplitScreen()Z
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Li0b;

    invoke-direct {v1, p0}, Li0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSplitScreen :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSupportMultiWindow()Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSupportMultiWindow()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportMultiWindow fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public notAllowKeyguardGoingAwayQuickly(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, La0b;

    invoke-direct {v1, p0, p1}, La0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Z)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public notifyAuthenticateSucceed(Z)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyAuthenticateSucceed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAuthenticateSucceed RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyKeyguardGoingAwayQuickly(Z)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyKeyguardGoingAwayQuickly(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardGoingAwayQuickly RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyLauncherPageTurning(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyLauncherPageTurning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "notifyLauncherPageTurning RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public pauseTaskTopActivity(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->pauseTaskTopActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseTaskTopActivity RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;

    new-instance v3, Lb0b;

    invoke-direct {v3, p0, p1}, Lb0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, v3, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->registerActivityStarterExecutedListener(Lcom/transsion/hubsdk/app/ITranActivityStarterExecutedCallback;Landroid/content/IntentFilter;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1

    :cond_3
    :goto_2
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "registerActivityStarterExecutedObserver observer or intentfilter is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiWindowWmShellListener RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAnimationIconLayer fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeRootTasksInWindowingModes([I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ld0b;

    invoke-direct {v1, p0, p1}, Ld0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;[I)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "removeRootTasksInWindowingModes!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeTask(I)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeTask(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public removeTaskPC(II)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeTaskPC(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeTaskPC RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public reparentActivity(IIZ)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lyza;

    invoke-direct {v1, p0, p1, p2, p3}, Lyza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IIZ)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "reparentActivity"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reparentTaskToDefaultTDA()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->reparentTaskToDefaultTDA()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparentTaskToDefaultTDA RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public requestHideDock()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->requestHideDock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestHideDock RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public requestShowDock()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->requestShowDock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestShowDock RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    invoke-interface {v0, p0, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setActivityController fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setBoostSceneState(ILjava/lang/String;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setBoostSceneState(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setBoostSceneState RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setConnectBlackListToSystem(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lzza;

    invoke-direct {v1, p0, p1}, Lzza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/util/List;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setConnectBlackListToSystem"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setFinishFixedRotationWithTransaction fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setFlingState(Z)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setFlingState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlingState RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setJankScenarioState(ILjava/lang/String;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setJankScenarioState(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setJankScenarioState RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiEnableStateForOOBE RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMultiWindowAcquireFocus(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowAcquireFocus(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiWindowAcquireFocus fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMultiWindowBlackListToSystem(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowBlackListToSystem(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiWindowBlackListToSystem fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiWindowConfigToSystem fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMultiWindowExtendSize(II)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowExtendSize(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiWindowExtendSize RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMultiWindowParams(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowParams(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiWindowParams fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiWindowWhiteListToSystem fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMuteStateV4(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMuteStateV4(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMuteStateV4 fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/app/ITranActivityTaskManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    return-void
.end method

.method public setStartInMultiWindow(Ljava/lang/String;III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindow(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setStartInMultiWindow fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setStartInMultiWindowAsUser fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setStartInMultiWindowWithBundle RemoteException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setTbSpecialLayerState(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setTbSpecialLayerState(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTbSpecialLayerState fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setThunderbackAnimating(Z)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setThunderbackAnimating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThunderbackAnimating RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startCurrentAppInMultiWindow(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->startCurrentAppInMultiWindow(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startCurrentAppInMultiWindow fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startLauncherAction(Landroid/content/Intent;I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->startLauncherAction(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startLauncherAction RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopTask(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->stopTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTask RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopTaskPC(II)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->stopTaskPC(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopTaskPC RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v2, Lc0b;

    invoke-direct {v2, p0, p1, p2}, Lc0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IZ)V

    const-string p0, "activity_task"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/window/TranTaskSnapshot;

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "TranTaskSnapshot is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranTaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranTaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "takeTaskSnapshot mTranTaskSnapshot:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public taskInMultiWindowById(I)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->taskInMultiWindowById(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskInMultiWindowById fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterActivityStarterExecutedObserver observer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, v3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->unRegisterActivityStarterExecutedListener(Lcom/transsion/hubsdk/app/ITranActivityStarterExecutedCallback;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterActivityStarterExecutedObserver: unregister failed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_3
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterActivityStarterExecutedObserver: callback not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lh0b;

    invoke-direct {v1, p0, p1}, Lh0b;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Landroid/content/res/Configuration;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateMediaMapForDynamicIsland fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateZBoostTaskIdWhenToSplit(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateZBoostTaskIdWhenToSplit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateZBoostTaskIdWhenToSplit fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
