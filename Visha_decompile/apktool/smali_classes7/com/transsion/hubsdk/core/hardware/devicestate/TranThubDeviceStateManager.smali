.class public Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDeviceStateManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "device_state"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->lambda$getCurrentState$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getCurrentState$0()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;->getCurrentState()I

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


# virtual methods
.method public getCurrentState()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ln2b;

    invoke-direct {v1, p0}, Ln2b;-><init>(Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;)V

    const-string p0, "device_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .locals 0

    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    return-void
.end method

.method public unregisterCallback(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .locals 0

    return-void
.end method
