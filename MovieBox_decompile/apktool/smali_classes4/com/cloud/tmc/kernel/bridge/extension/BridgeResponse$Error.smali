.class public Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;
.super Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field errorCode:I

.field errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;-><init>(Lcom/google/gson/JsonObject;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorCode:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorCode:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "error"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "message"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "errorMessage"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
