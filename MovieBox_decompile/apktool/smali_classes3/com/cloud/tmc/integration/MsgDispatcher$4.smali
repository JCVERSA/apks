.class Lcom/cloud/tmc/integration/MsgDispatcher$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$jsonObject:Lcom/google/gson/JsonObject;

.field final synthetic val$worker:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/MsgDispatcher;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$4;->this$0:Lcom/cloud/tmc/integration/MsgDispatcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/MsgDispatcher$4;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/MsgDispatcher$4;->val$jsonObject:Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/MsgDispatcher$4;->val$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/MsgDispatcher$4;->val$jsonObject:Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
