.class Lcom/just/agentweb/AgentWebJsInterfaceCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/AgentWebJsInterfaceCompat;->uploadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/AgentWebJsInterfaceCompat;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/AgentWebJsInterfaceCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWebJsInterfaceCompat$1;->this$0:Lcom/just/agentweb/AgentWebJsInterfaceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/AgentWebJsInterfaceCompat$1;->this$0:Lcom/just/agentweb/AgentWebJsInterfaceCompat;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebJsInterfaceCompat;->a(Lcom/just/agentweb/AgentWebJsInterfaceCompat;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/just/agentweb/AgentWebJsInterfaceCompat$1;->this$0:Lcom/just/agentweb/AgentWebJsInterfaceCompat;

    invoke-static {p0}, Lcom/just/agentweb/AgentWebJsInterfaceCompat;->a(Lcom/just/agentweb/AgentWebJsInterfaceCompat;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getJsAccessEntrace()Lcom/just/agentweb/JsAccessEntrace;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "uploadFileResult"

    invoke-interface {p0, v0, p1}, Lcom/just/agentweb/QuickCallJs;->quickCallJs(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
