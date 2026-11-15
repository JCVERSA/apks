.class Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;
.super Landroid/view/InputEventReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranInputReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$200(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$200(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;->handleInputEvent(Landroid/view/InputEvent;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
