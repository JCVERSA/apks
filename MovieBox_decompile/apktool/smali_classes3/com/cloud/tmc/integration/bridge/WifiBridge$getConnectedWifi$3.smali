.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;->getConnectedWifi(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
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
        "com/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3",
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

.field final synthetic $wifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$wifiManager:Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

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
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

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
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$wifiManager:Landroid/net/wifi/WifiManager;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$wifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 79
    .line 80
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v6, "\""

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_2

    .line 111
    .line 112
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_2

    .line 123
    .line 124
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 125
    .line 126
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$getSecurity(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    const/4 v2, 0x0

    .line 134
    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 135
    .line 136
    const-string v4, "wifiInfo"

    .line 137
    .line 138
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v1, v2}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$processWifiInfo(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/net/wifi/WifiInfo;I)Lcom/google/gson/JsonObject;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "wifi"

    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v2, "get connect info = "

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const-string v2, "WifiBridge"

    .line 168
    .line 169
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 173
    .line 174
    if-eqz v1, :cond_4

    .line 175
    .line 176
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    return-void
.end method
