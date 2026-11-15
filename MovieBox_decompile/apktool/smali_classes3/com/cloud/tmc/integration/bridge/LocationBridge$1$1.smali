.class Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/CommonDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/LocationBridge$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLeftClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "errMsg"

    .line 12
    .line 13
    const-string v3, "not open GPS:LB001"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onRightClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "errMsg"

    .line 12
    .line 13
    const-string v3, "not open GPS,go setting:LB002"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LocationUtils;->openGpsSettings()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
