.class public Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubStatusBarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "statusbar"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->lambda$expandNotificationsPanel$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->lambda$expandSettingsPanel$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$expandNotificationsPanel$1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->expandNotificationsPanel()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$expandSettingsPanel$0()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->expandSettingsPanel()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "autoStartFullIntent:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public collapsePanels()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapsePanels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public customGesturesEnable(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customGesturesEnable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customGesturesEnable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "customHeadsUp:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customNotificationStyle(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customNotificationStyle(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customNotificationStyle:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customPanelEnable(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customPanelEnable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customPanelEnable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public disable(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->disable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disable2(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->disable2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableAction:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableActionWithUrl:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public expandNotificationsPanel()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lw4b;

    invoke-direct {v1, p0}, Lw4b;-><init>(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)V

    const-string p0, "statusbar"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    const-string v0, "expandNotificationsPanel"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public expandSettingsPanel()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lx4b;

    invoke-direct {v1, p0}, Lx4b;-><init>(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)V

    const-string p0, "statusbar"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    const-string v0, "expandSettingsPanel"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestoryCallback(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->onDestoryCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestoryCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerTranStatusBar(Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;-><init>(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->registerTranStatusBar(Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTranStatusBar e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setIcon:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIconVisibility:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPinningEscapeToast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCloseHeadsUp:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
