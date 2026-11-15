.class Lcom/cloud/tmc/integration/MsgDispatcher$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/MsgDispatcher;->handleMsgFromRender(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/MsgDispatcher;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$render:Lcom/cloud/tmc/kernel/render/IRender;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->this$0:Lcom/cloud/tmc/integration/MsgDispatcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$methodName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$callbackId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$render:Lcom/cloud/tmc/kernel/render/IRender;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/gson/JsonObject;ZZ)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleMsgFromJs: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$methodName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MsgDispatcher"

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3
    const-string p3, "abilityName"

    const-string v0, "callback"

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$callbackId:Ljava/lang/String;

    const-string v1, "callbackId"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "dataJson"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$callbackId:Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$render:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    const-string p2, "message"

    .line 11
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    const-string p2, "call"

    .line 12
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$render:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 15
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$render:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    :cond_0
    return-void
.end method

.method public onCallback(Ljava/util/HashMap;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleMsgFromJs: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$methodName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MsgDispatcher"

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 18
    const-string p3, "abilityName"

    const-string v0, "callback"

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$callbackId:Ljava/lang/String;

    const-string v1, "callbackId"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "dataJson"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$callbackId:Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$render:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz p1, :cond_0

    .line 25
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    const-string p2, "message"

    .line 26
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    const-string p2, "call"

    .line 27
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$render:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 30
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$1;->val$render:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    :cond_0
    return-void
.end method
