.class Lcom/cloud/tmc/kernel/utils/EngineUtils$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendToRender(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

.field final synthetic val$finalUseWorkerCallback:Z


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$finalUseWorkerCallback:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;->val$finalUseWorkerCallback:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
