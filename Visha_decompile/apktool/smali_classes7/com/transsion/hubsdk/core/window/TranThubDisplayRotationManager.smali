.class public Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/window/ITranDisplayRotationAdapter;


# instance fields
.field private mDisplayRotationManager:Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "display_rotation"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/window/ITranDisplayRotationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;->mDisplayRotationManager:Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;->lambda$onNotifySaveRotation$0(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onNotifySaveRotation$0(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;->mDisplayRotationManager:Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;->onNotifySaveRotation(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onNotifySaveRotation(I)V
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lx2b;

    invoke-direct {v1, p0, p1}, Lx2b;-><init>(Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;I)V

    const-string p0, "display_rotation"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
