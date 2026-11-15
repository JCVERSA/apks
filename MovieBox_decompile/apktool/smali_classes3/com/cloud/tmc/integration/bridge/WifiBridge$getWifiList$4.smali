.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;->getWifiList(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4",
        "Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;",
        "onDenied",
        "",
        "onGranted",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $receiver:Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

.field final synthetic $wifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$receiver:Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x2ee7

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "errCode"

    .line 17
    .line 18
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "errMsg"

    .line 22
    .line 23
    const-string v3, "not have location permission: W12007"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$isLocationOpen(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x2ee6

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "errCode"

    .line 32
    .line 33
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "errMsg"

    .line 37
    .line 38
    const-string v3, "gps not turned on: W12006"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$receiver:Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$registerWifiReceiver(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method
