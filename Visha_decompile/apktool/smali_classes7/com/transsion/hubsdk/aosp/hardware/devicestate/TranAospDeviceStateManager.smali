.class public Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospDeviceStateManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTranAospDeviceStateManagerExt:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.hardware.devicestate.DeviceStateManagerGlobal"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getTranAospDeviceStateManagerExt()Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->mTranAospDeviceStateManagerExt:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->mTranAospDeviceStateManagerExt:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->mTranAospDeviceStateManagerExt:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    return-object p0
.end method


# virtual methods
.method public getCurrentState()I
    .locals 4

    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->sClassName:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getInstance"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentState"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->getTranAospDeviceStateManagerExt()Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V

    return-void
.end method

.method public unregisterCallback(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;->getTranAospDeviceStateManagerExt()Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->unregisterCallback(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V

    return-void
.end method
