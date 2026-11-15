.class public Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcEngine:DefaultBridgeCallback"


# instance fields
.field private final isSticky:Z

.field private final responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->isSticky:Z

    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->close(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public close(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->isSticky:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResultCloseKept(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResponseHelper()Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSticky()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->isSticky:Z

    .line 2
    .line 3
    return v0
.end method

.method public sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->SUCCESS:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 10
    .line 11
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->getErrorCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->getErrorMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->get()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->isSticky:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResultWithCallbackKept(Lcom/google/gson/JsonObject;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResult(Lcom/google/gson/JsonObject;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public sendFailMapResponse()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendFailResponse(Ljava/util/HashMap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public sendFailResponse()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public sendFailResponse(Lcom/google/gson/JsonObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3
    :cond_0
    const-string v0, "success"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public sendFailResponse(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_0
    const-string v0, "success"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendMapResponse(Ljava/util/HashMap;)V

    return-void
.end method

.method public sendJSONResponse(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->isSticky:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResultWithCallbackKept(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResult(Lcom/google/gson/JsonObject;)V

    :goto_0
    return-void
.end method

.method public sendJSONResponse(Lcom/google/gson/JsonObject;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResultWithCallbackKept(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResult(Lcom/google/gson/JsonObject;)V

    :goto_0
    return-void
.end method

.method public sendMapResponse(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->isSticky:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeMapResultWithCallbackKept(Ljava/util/HashMap;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeMapResult(Ljava/util/HashMap;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public sendSuccessMapResponse()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendSuccessResponse(Ljava/util/HashMap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public sendSuccessResponse()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3
    :cond_0
    const-string v0, "success"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public sendSuccessResponse(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_0
    const-string v0, "success"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendMapResponse(Ljava/util/HashMap;)V

    return-void
.end method
