.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;
.super Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranInputMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranInputMonitor;->dispose()V

    :cond_0
    return-void
.end method

.method public pilferPointers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranInputMonitor;->pilferPointers()V

    :cond_0
    return-void
.end method
