.class Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/LocationUtils$AddressCallback;


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
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGetAddress(Landroid/location/Address;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onGetCountryCode(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/LocationBridge;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {v0, p1, v1, v1}, Lcom/cloud/tmc/integration/bridge/LocationBridge;->a(Lcom/cloud/tmc/integration/bridge/LocationBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/LocationUtils;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->clearAddressCallback()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onGetLocation(DD)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/LocationBridge;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/bridge/LocationBridge;->a(Lcom/cloud/tmc/integration/bridge/LocationBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/LocationUtils;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->clearAddressCallback()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
