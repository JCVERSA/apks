.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;->connectWifi(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0017\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4",
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
.field final synthetic $bssid:Ljava/lang/String;

.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $ssid:Ljava/lang/String;

.field final synthetic $wifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$password:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$context:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

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
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v1, 0x1d

    .line 53
    .line 54
    if-lt v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$password:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$context:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v7, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 67
    .line 68
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$connectWifiV29(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v8, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 73
    .line 74
    iget-object v9, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$context:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v10, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v11, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v12, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$password:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v13, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 83
    .line 84
    invoke-static/range {v8 .. v13}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$connectWifiConfig(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void
.end method
