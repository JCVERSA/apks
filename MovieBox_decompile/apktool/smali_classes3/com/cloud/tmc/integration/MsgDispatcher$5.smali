.class Lcom/cloud/tmc/integration/MsgDispatcher$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/MsgDispatcher;->handleAsyncMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/MsgDispatcher;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$finalApp:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$worker:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->this$0:Lcom/cloud/tmc/integration/MsgDispatcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$methodName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$finalApp:Lcom/cloud/tmc/integration/structure/App;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/gson/JsonObject;ZZ)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMsgFromJs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgDispatcher"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    const-string v2, "abilityName"

    const-string v3, "callback"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v4, "action"

    if-eqz p2, :cond_0

    .line 9
    const-string p2, "keepalive_active"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 11
    const-string p2, "keepalive_close"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    const-string p3, "callbackId"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p2, "dataJson"

    invoke-virtual {v0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, p2, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v3, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 22
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1, v0, p3}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 24
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1, v1, p3}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 25
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$finalApp:Lcom/cloud/tmc/integration/structure/App;

    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/MsgDispatcher;->b(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/util/HashMap;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMsgFromJs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgDispatcher"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 29
    const-string v2, "abilityName"

    const-string v3, "callback"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v4, "action"

    if-eqz p2, :cond_0

    .line 34
    const-string p2, "keepalive_active"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v1, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 36
    const-string p2, "keepalive_close"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v1, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    const-string p3, "callbackId"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string p2, "dataJson"

    invoke-virtual {v0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, p2, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 42
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v3, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 47
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1, v0, p3}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    goto :goto_1

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 49
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1, v1, p3}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 50
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$finalApp:Lcom/cloud/tmc/integration/structure/App;

    iget-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$5;->val$callbackId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/MsgDispatcher;->b(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void
.end method
