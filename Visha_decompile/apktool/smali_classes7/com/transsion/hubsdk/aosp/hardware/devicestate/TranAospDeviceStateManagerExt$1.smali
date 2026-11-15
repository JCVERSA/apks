.class Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;)Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt;)Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;->onStateChanged(I)V

    :cond_0
    return-void
.end method
