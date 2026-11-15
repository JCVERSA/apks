.class public Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;
.super Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedValue"
.end annotation


# instance fields
.field response:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;-><init>(Lcom/google/gson/JsonObject;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;->response:Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;->response:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method
