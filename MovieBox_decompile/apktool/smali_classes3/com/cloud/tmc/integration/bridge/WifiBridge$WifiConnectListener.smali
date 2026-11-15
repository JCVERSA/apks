.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiConnectListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0017J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;",
        "Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "appId",
        "",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/net/wifi/WifiManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "getCallback",
        "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "onConnected",
        "",
        "networkType",
        "Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;",
        "onDisconnected",
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
.field private final appId:Ljava/lang/String;

.field private final callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/net/wifi/WifiManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "wifiManager"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->appId:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public onConnected(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const-string v0, "wifiInfo"

    .line 2
    .line 3
    const-string v1, "\""

    .line 4
    .line 5
    sget-object v2, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    .line 6
    .line 7
    if-ne p1, v2, :cond_2

    .line 8
    .line 9
    :try_start_0
    const-class p1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->appId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v2}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 26
    .line 27
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 59
    .line 60
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_0

    .line 89
    .line 90
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_0

    .line 101
    .line 102
    iget-object v1, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p1, v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$getSecurity(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const/4 v1, 0x0

    .line 112
    :goto_0
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v3, v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$processWifiInfo(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/net/wifi/WifiInfo;I)Lcom/google/gson/JsonObject;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v2, v0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 123
    .line 124
    if-eqz p1, :cond_2

    .line 125
    .line 126
    invoke-interface {p1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_1
    const-string v0, "WifiBridge"

    .line 131
    .line 132
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    :goto_2
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method
