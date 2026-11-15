.class Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$1;
.super Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;-><init>(Lcom/google/gson/JsonObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
