.class public Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubActivityOptions"


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/ITranActivityOptions;

.field protected mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    const-string v0, "activity_option"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityOptions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mService:Lcom/transsion/hubsdk/app/ITranActivityOptions;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->lambda$setRotationAnimationHint$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->lambda$setDisallowEnterPictureInPictureWhileLaunching$0(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->lambda$toBundle$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setDisallowEnterPictureInPictureWhileLaunching$0(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mService:Lcom/transsion/hubsdk/app/ITranActivityOptions;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setRotationAnimationHint$1(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mService:Lcom/transsion/hubsdk/app/ITranActivityOptions;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityOptions;->setRotationAnimationHint(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$toBundle$2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mService:Lcom/transsion/hubsdk/app/ITranActivityOptions;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityOptions;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public setActivitySurfaceShownCallback(Landroid/app/ActivityOptions;Landroid/os/Messenger;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityOptions;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/hubsdk/app/TranActivityOptions;->setActivitySurfaceShownCallback(Landroid/app/ActivityOptions;Landroid/os/Messenger;JJ)V

    return-void
.end method

.method public setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lvza;

    invoke-direct {v1, p0, p1}, Lvza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;Z)V

    const-string p0, "accessibility_service_info"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisallowEnterPictureInPictureWhileLaunching disallow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLaunchTaskId(Landroid/app/ActivityOptions;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityOptions;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranActivityOptions;->setLaunchTaskId(Landroid/app/ActivityOptions;I)V

    return-void
.end method

.method public setLaunchWindowingMode(Landroid/app/ActivityOptions;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityOptions;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranActivityOptions;->setLaunchWindowingMode(Landroid/app/ActivityOptions;I)V

    return-void
.end method

.method public setRotationAnimationHint(I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Luza;

    invoke-direct {v1, p0, p1}, Luza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;I)V

    const-string p0, "accessibility_service_info"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRotationAnimationHint hint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/app/ITranActivityOptions;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mService:Lcom/transsion/hubsdk/app/ITranActivityOptions;

    return-void
.end method

.method public setStartMultiWindowByRecent(Landroid/app/ActivityOptions;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityOptions;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranActivityOptions;->setStartMultiWindowByRecent(Landroid/app/ActivityOptions;I)V

    return-void
.end method

.method public setThunderBackSupport(Landroid/app/ActivityOptions;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityOptions;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->mTranActivityOptions:Lcom/transsion/hubsdk/app/TranActivityOptions;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranActivityOptions;->setThunderBackSupport(Landroid/app/ActivityOptions;Z)V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lwza;

    invoke-direct {v1, p0}, Lwza;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;)V

    const-string p0, "accessibility_service_info"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toBundle bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
