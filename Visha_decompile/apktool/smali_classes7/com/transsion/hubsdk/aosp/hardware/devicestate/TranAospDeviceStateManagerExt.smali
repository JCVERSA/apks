.class public Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospDeviceStateManagerExt"


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

.field private mContext:Landroid/content/Context;

.field private final mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;)Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mCallback:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

    return-object p0
.end method


# virtual methods
.method public registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mCallback:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

    iget-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {p2, p1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public unregisterCallback(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_0
    return-void
.end method
