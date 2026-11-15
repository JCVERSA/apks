.class public Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;
.super Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranInputMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->dispose()V

    :cond_0
    return-void
.end method

.method public pilferPointers()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->pilferPointers()V

    :cond_0
    return-void
.end method
