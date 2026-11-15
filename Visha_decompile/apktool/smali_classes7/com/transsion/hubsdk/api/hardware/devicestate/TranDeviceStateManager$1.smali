.class Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBaseStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;->onBaseStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onSupportedStatesChanged([I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;->onSupportedStatesChanged([I)V

    :cond_0
    return-void
.end method
