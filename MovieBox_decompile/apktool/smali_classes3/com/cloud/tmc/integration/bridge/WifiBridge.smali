.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/bridge/WifiBridge$Companion;,
        Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;,
        Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;,
        Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 82\u00020\u0001:\u000489:;B\u0005\u00a2\u0006\u0002\u0010\u0002JU\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007\u00a2\u0006\u0002\u0010\u0015J6\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0003J6\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0003J\u0014\u0010\u001a\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J \u0010\u001b\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J*\u0010\u001c\u001a\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010!\u001a\u00020\u001d2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010#\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J \u0010%\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J \u0010&\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0008\u0010\'\u001a\u00020\u000cH\u0016J \u0010(\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0008\u0010)\u001a\u00020\u000cH\u0016J \u0010*\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\n\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u001dH\u0002J\u001c\u00102\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00182\n\u00103\u001a\u00060\nR\u00020\u0000H\u0002J \u00104\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J \u00105\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0018\u00106\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u00103\u001a\u000207H\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0008\u0012\u00060\u0008R\u00020\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0008\u0012\u00060\nR\u00020\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/WifiBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "mWifiInitMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "",
        "mWifiListenerMap",
        "Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;",
        "mWifiScanReceiverMap",
        "Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;",
        "connectWifi",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "ssid",
        "bssid",
        "password",
        "maunal",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "connectWifiConfig",
        "context",
        "Landroid/content/Context;",
        "connectWifiV29",
        "destroyAppWifi",
        "getConnectedWifi",
        "getNetworkIdFromConfig",
        "",
        "configList",
        "",
        "Landroid/net/wifi/WifiConfiguration;",
        "getSecurity",
        "capabilities",
        "getWifiList",
        "isLocationOpen",
        "offGetWifiList",
        "offWifiConnected",
        "onFinalized",
        "onGetWifiList",
        "onInitialized",
        "onWifiConnected",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "processWifiInfo",
        "Lcom/google/gson/JsonObject;",
        "wifiInfo",
        "Landroid/net/wifi/WifiInfo;",
        "security",
        "registerWifiReceiver",
        "receiver",
        "startWifi",
        "stopWifi",
        "unregisterReceiver",
        "Landroid/content/BroadcastReceiver;",
        "Companion",
        "ConnectingEventReceiver",
        "WifiConnectListener",
        "WifiReceiver",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/bridge/WifiBridge$Companion;

.field public static final ERROR_CONNECT_TIMEOUT:Ljava/lang/String; = "connection timeout: W12003"

.field public static final ERROR_INVALID_SSID:Ljava/lang/String; = "invalid ssid: W12008"

.field public static final ERROR_LOCATION_CLOSED:Ljava/lang/String; = "gps not turned on: W12006"

.field public static final ERROR_LOCATION_PERMISSION:Ljava/lang/String; = "not have location permission: W12007"

.field public static final ERROR_MULTI_LISTENER:Ljava/lang/String; = "this app already has listener: W12004"

.field public static final ERROR_NO_INIT:Ljava/lang/String; = "not init: W12000"

.field public static final ERROR_PASSWORD_INVALID:Ljava/lang/String; = "password error Wi-Fi: W12002"

.field public static final ERROR_SYSTEM_ERROR:Ljava/lang/String; = "system internal error: W12010"

.field public static final ERROR_WIFI_CLOSED:Ljava/lang/String; = "wifi not turned on: W12005"

.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_WEP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WifiBridge"

.field public static final WIFI_CONNECT_TIMEOUT:J = 0x1eL


# instance fields
.field private final mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/bridge/WifiBridge$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->Companion:Lcom/cloud/tmc/integration/bridge/WifiBridge$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic access$connectWifiConfig(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->connectWifiConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$connectWifiV29(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->connectWifiV29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getMWifiScanReceiverMap$p(Lcom/cloud/tmc/integration/bridge/WifiBridge;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSecurity(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->getSecurity(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$isLocationOpen(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->isLocationOpen(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$processWifiInfo(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/net/wifi/WifiInfo;I)Lcom/google/gson/JsonObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->processWifiInfo(Landroid/net/wifi/WifiInfo;I)Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$registerWifiReceiver(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->registerWifiReceiver(Landroid/content/Context;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic connectWifi$default(Lcom/cloud/tmc/integration/bridge/WifiBridge;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x10

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    move-object v5, p5

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v6, p6

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->connectWifi(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final connectWifiConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "wifi"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v1, p2, p3}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->getNetworkIdFromConfig(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-gez v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v5, "\""

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 58
    .line 59
    const/4 p2, 0x2

    .line 60
    iput p2, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 61
    .line 62
    if-eqz p4, :cond_1

    .line 63
    .line 64
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-nez p3, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 90
    .line 91
    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 92
    .line 93
    iget-object p3, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 94
    .line 95
    invoke-virtual {p3, v2}, Ljava/util/BitSet;->set(I)V

    .line 96
    .line 97
    .line 98
    iget-object p3, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 99
    .line 100
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    .line 101
    .line 102
    .line 103
    iget-object p3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 104
    .line 105
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->set(I)V

    .line 106
    .line 107
    .line 108
    iget-object p3, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 109
    .line 110
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->set(I)V

    .line 111
    .line 112
    .line 113
    iget-object p3, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 114
    .line 115
    const/4 p4, 0x3

    .line 116
    invoke-virtual {p3, p4}, Ljava/util/BitSet;->set(I)V

    .line 117
    .line 118
    .line 119
    iget-object p3, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 120
    .line 121
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    iget-object p2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 126
    .line 127
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    :cond_2
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    .line 135
    .line 136
    invoke-direct {p2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 137
    .line 138
    .line 139
    new-instance p3, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;

    .line 140
    .line 141
    invoke-direct {p3, p0, v1, p2}, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;-><init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;ILjava/util/concurrent/CountDownLatch;)V

    .line 142
    .line 143
    .line 144
    if-ltz v1, :cond_3

    .line 145
    .line 146
    new-instance p4, Landroid/content/IntentFilter;

    .line 147
    .line 148
    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 149
    .line 150
    invoke-direct {p4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    move p4, v3

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    move p4, v2

    .line 163
    :goto_2
    const-string v0, "system internal error: W12010"

    .line 164
    .line 165
    const/16 v1, 0x2eea

    .line 166
    .line 167
    const-string v4, "errMsg"

    .line 168
    .line 169
    const-string v5, "errCode"

    .line 170
    .line 171
    if-nez v2, :cond_6

    .line 172
    .line 173
    if-eqz p4, :cond_4

    .line 174
    .line 175
    invoke-direct {p0, p1, p3}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    const-string p1, "WifiBridge"

    .line 179
    .line 180
    const-string p2, "connect wifi failed!"

    .line 181
    .line 182
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    if-eqz p5, :cond_5

    .line 186
    .line 187
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 188
    .line 189
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, v5, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {p5, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    return-void

    .line 206
    :cond_6
    const-wide/16 v6, 0x1e

    .line 207
    .line 208
    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    .line 210
    invoke-virtual {p2, v6, v7, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->getErrorReason()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_8

    .line 218
    .line 219
    if-eq p2, v3, :cond_7

    .line 220
    .line 221
    if-eqz p5, :cond_9

    .line 222
    .line 223
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 224
    .line 225
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p4

    .line 232
    invoke-virtual {p2, v5, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {p5, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_7
    if-eqz p5, :cond_9

    .line 243
    .line 244
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 245
    .line 246
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 247
    .line 248
    .line 249
    const/16 p4, 0x2ee2

    .line 250
    .line 251
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object p4

    .line 255
    invoke-virtual {p2, v5, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 256
    .line 257
    .line 258
    const-string p4, "password error Wi-Fi: W12002"

    .line 259
    .line 260
    invoke-virtual {p2, v4, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p5, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_8
    if-eqz p5, :cond_9

    .line 268
    .line 269
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 270
    .line 271
    .line 272
    :cond_9
    :goto_3
    invoke-direct {p0, p1, p3}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 273
    .line 274
    .line 275
    return-void
.end method

.method private final connectWifiV29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/bridge/y;->a()Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/bridge/r;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "Builder().setSsid(ssid)"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p2}, Lcom/cloud/tmc/integration/bridge/s;->a(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/bridge/t;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Landroid/net/MacAddress;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 31
    .line 32
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1, p3}, Lcom/cloud/tmc/integration/bridge/u;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/cloud/tmc/integration/bridge/v;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;)Landroid/net/wifi/WifiNetworkSpecifier;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "specifierBuilder.build()"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/cloud/tmc/integration/bridge/w;->a(Ljava/lang/Object;)Landroid/net/NetworkSpecifier;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    .line 56
    .line 57
    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 p3, 0x1

    .line 61
    invoke-virtual {p2, p3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/16 v0, 0xc

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2, p1}, Lcom/cloud/tmc/integration/bridge/x;->a(Landroid/net/NetworkRequest$Builder;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string p4, "connectivity"

    .line 84
    .line 85
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string p4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 90
    .line 91
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 95
    .line 96
    new-instance p4, Ljava/util/concurrent/CountDownLatch;

    .line 97
    .line 98
    invoke-direct {p4, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 99
    .line 100
    .line 101
    new-instance p3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 102
    .line 103
    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 104
    .line 105
    .line 106
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;

    .line 107
    .line 108
    invoke-direct {v0, p3, p2, p5, p4}, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/util/concurrent/CountDownLatch;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 115
    .line 116
    const-wide/16 v0, 0x1e

    .line 117
    .line 118
    invoke-virtual {p4, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 119
    .line 120
    .line 121
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 122
    .line 123
    if-nez p1, :cond_5

    .line 124
    .line 125
    if-eqz p5, :cond_5

    .line 126
    .line 127
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 128
    .line 129
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "errCode"

    .line 133
    .line 134
    const/16 p3, 0x2ee3

    .line 135
    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 141
    .line 142
    .line 143
    const-string p2, "errMsg"

    .line 144
    .line 145
    const-string p3, "connection timeout: W12003"

    .line 146
    .line 147
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p5, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    if-eqz p5, :cond_4

    .line 156
    .line 157
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 158
    .line 159
    .line 160
    :cond_4
    const-string p2, "WifiBridge"

    .line 161
    .line 162
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_2
    return-void
.end method

.method private final getNetworkIdFromConfig(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "\""

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 49
    .line 50
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    if-eqz p3, :cond_3

    .line 59
    .line 60
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    :cond_3
    :goto_0
    iget p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 76
    .line 77
    return p1

    .line 78
    :cond_4
    :goto_1
    return v1
.end method

.method private final getSecurity(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "WPA"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    return p1

    .line 22
    :cond_1
    const-string v1, "WEP"

    .line 23
    .line 24
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    const-string v1, "EAP"

    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    :cond_3
    :goto_0
    return v0
.end method

.method private final isLocationOpen(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const-string v1, "location_mode"

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    const-string v1, "WifiBridge"

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method private final processWifiInfo(Landroid/net/wifi/WifiInfo;I)Lcom/google/gson/JsonObject;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "frequency"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "wifiInfo.ssid"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    sub-int/2addr v2, v3

    .line 38
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "SSID"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "BSSID"

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v3, 0x0

    .line 65
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string v1, "security"

    .line 70
    .line 71
    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const/16 p2, 0x64

    .line 79
    .line 80
    invoke-static {p1, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "signalStrength"

    .line 89
    .line 90
    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method

.method private final registerWifiReceiver(Landroid/content/Context;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    const-string p2, "WifiBridge"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final connectWifi(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "SSID"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "BSSID"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "password"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "maunal"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v9, p6

    .line 2
    .line 3
    if-eqz p1, :cond_d

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    move-object v7, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    if-nez v7, :cond_3

    .line 34
    .line 35
    if-eqz v9, :cond_2

    .line 36
    .line 37
    invoke-interface/range {p6 .. p6}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    const-string v10, "errMsg"

    .line 42
    .line 43
    const-string v11, "errCode"

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    :cond_4
    move-object v12, p0

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_5
    move-object v12, p0

    .line 57
    :try_start_1
    iget-object v0, v12, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    if-eqz v9, :cond_6

    .line 76
    .line 77
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 80
    .line 81
    .line 82
    const/16 v1, 0x2ee0

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v11, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "not init: W12000"

    .line 92
    .line 93
    invoke-virtual {v0, v10, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v9, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :cond_6
    :goto_2
    return-void

    .line 104
    :cond_7
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v2, "wifi"

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v2, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 115
    .line 116
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object v2, v0

    .line 120
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_9

    .line 127
    .line 128
    if-eqz v9, :cond_8

    .line 129
    .line 130
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 131
    .line 132
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 133
    .line 134
    .line 135
    const/16 v1, 0x2ee5

    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v11, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 142
    .line 143
    .line 144
    const-string v1, "wifi not turned on: W12005"

    .line 145
    .line 146
    invoke-virtual {v0, v10, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v9, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    return-void

    .line 153
    :cond_9
    move-object/from16 v0, p5

    .line 154
    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_b

    .line 160
    .line 161
    new-instance v0, Landroid/content/Intent;

    .line 162
    .line 163
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 164
    .line 165
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    .line 170
    .line 171
    if-eqz v9, :cond_a

    .line 172
    .line 173
    invoke-interface/range {p6 .. p6}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 174
    .line 175
    .line 176
    :cond_a
    return-void

    .line 177
    :cond_b
    const-string v0, "LOCATION"

    .line 178
    .line 179
    filled-new-array {v0}, [Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    new-instance v13, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;

    .line 188
    .line 189
    move-object v1, v13

    .line 190
    move-object v3, p0

    .line 191
    move-object/from16 v4, p2

    .line 192
    .line 193
    move-object/from16 v5, p3

    .line 194
    .line 195
    move-object/from16 v6, p4

    .line 196
    .line 197
    move-object/from16 v8, p6

    .line 198
    .line 199
    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;-><init>(Landroid/net/wifi/WifiManager;Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v13}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :catchall_1
    move-exception v0

    .line 211
    move-object v12, p0

    .line 212
    goto :goto_4

    .line 213
    :goto_3
    if-eqz v9, :cond_c

    .line 214
    .line 215
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 216
    .line 217
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 218
    .line 219
    .line 220
    const/16 v1, 0x2ee8

    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v11, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 227
    .line 228
    .line 229
    const-string v1, "invalid ssid: W12008"

    .line 230
    .line 231
    invoke-virtual {v0, v10, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v9, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :goto_4
    const-string v1, "WifiBridge"

    .line 239
    .line 240
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    if-eqz v9, :cond_c

    .line 244
    .line 245
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 246
    .line 247
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 248
    .line 249
    .line 250
    const/16 v1, 0x2eea

    .line 251
    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v11, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 257
    .line 258
    .line 259
    const-string v1, "system internal error: W12010"

    .line 260
    .line 261
    invoke-virtual {v0, v10, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v9, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 265
    .line 266
    .line 267
    :cond_c
    :goto_5
    return-void

    .line 268
    :cond_d
    :goto_6
    move-object v12, p0

    .line 269
    if-eqz v9, :cond_e

    .line 270
    .line 271
    invoke-interface/range {p6 .. p6}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 272
    .line 273
    .line 274
    :cond_e
    return-void
.end method

.method public final destroyAppWifi(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 5
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .line 1
    const-string v0, "WifiBridge"

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "unregisterNetworkStatusChangedListener = "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->unregisterNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v3, "unRegisterWifiReceiver = "

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v2, "getApp().applicationContext"

    .line 128
    .line 129
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_3

    .line 140
    .line 141
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_2
    return-void
.end method

.method public final getConnectedWifi(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void

    .line 41
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const-string v1, "errMsg"

    .line 58
    .line 59
    const-string v2, "errCode"

    .line 60
    .line 61
    if-nez p1, :cond_6

    .line 62
    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 68
    .line 69
    .line 70
    const/16 v0, 0x2ee0

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "not init: W12000"

    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    :goto_0
    return-void

    .line 91
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v3, "wifi"

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v3, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 102
    .line 103
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_8

    .line 113
    .line 114
    if-eqz p2, :cond_7

    .line 115
    .line 116
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 117
    .line 118
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 119
    .line 120
    .line 121
    const/16 v0, 0x2ee5

    .line 122
    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 128
    .line 129
    .line 130
    const-string v0, "wifi not turned on: W12005"

    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    return-void

    .line 139
    :cond_8
    const-string v1, "LOCATION"

    .line 140
    .line 141
    filled-new-array {v1}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v2, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;

    .line 150
    .line 151
    invoke-direct {v2, p0, v0, p2, p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$getConnectedWifi$3;-><init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/net/wifi/WifiManager;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :goto_1
    const-string v0, "WifiBridge"

    .line 163
    .line 164
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    if-eqz p2, :cond_9

    .line 168
    .line 169
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 170
    .line 171
    .line 172
    :cond_9
    :goto_2
    return-void

    .line 173
    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    .line 174
    .line 175
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 176
    .line 177
    .line 178
    :cond_b
    return-void
.end method

.method public final getWifiList(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "WifiBridge"

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_4

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void

    .line 43
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const-string v2, "errMsg"

    .line 60
    .line 61
    const-string v3, "errCode"

    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x2ee0

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "not init: W12000"

    .line 82
    .line 83
    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    :goto_0
    return-void

    .line 93
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    move-object v6, p1

    .line 104
    check-cast v6, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    .line 105
    .line 106
    if-nez v6, :cond_7

    .line 107
    .line 108
    const-string p1, "please onGetList before this function!"

    .line 109
    .line 110
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_7
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v1, "wifi"

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 125
    .line 126
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move-object v7, p1

    .line 130
    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 131
    .line 132
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_9

    .line 137
    .line 138
    if-eqz p2, :cond_8

    .line 139
    .line 140
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 141
    .line 142
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x2ee5

    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 152
    .line 153
    .line 154
    const-string v1, "wifi not turned on: W12005"

    .line 155
    .line 156
    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 160
    .line 161
    .line 162
    :cond_8
    return-void

    .line 163
    :cond_9
    const-string p1, "LOCATION"

    .line 164
    .line 165
    filled-new-array {p1}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    new-instance v1, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;

    .line 174
    .line 175
    move-object v2, v1

    .line 176
    move-object v3, p0

    .line 177
    move-object v5, p2

    .line 178
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;-><init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;Landroid/net/wifi/WifiManager;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    if-eqz p2, :cond_a

    .line 193
    .line 194
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 195
    .line 196
    .line 197
    :cond_a
    :goto_2
    return-void

    .line 198
    :cond_b
    :goto_3
    if-eqz p2, :cond_c

    .line 199
    .line 200
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 201
    .line 202
    .line 203
    :cond_c
    return-void
.end method

.method public final offGetWifiList(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void

    .line 40
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 70
    .line 71
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    const-string v0, "WifiBridge"

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    if-eqz p2, :cond_6

    .line 81
    .line 82
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_2
    return-void

    .line 86
    :cond_7
    :goto_3
    if-eqz p2, :cond_8

    .line 87
    .line 88
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 89
    .line 90
    .line 91
    :cond_8
    return-void
.end method

.method public final offWifiConnected(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void

    .line 41
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_6

    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v0, "errCode"

    .line 67
    .line 68
    const/16 v1, 0x2ee0

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "errMsg"

    .line 78
    .line 79
    const-string v1, "not init: W12000"

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    :goto_0
    return-void

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;

    .line 102
    .line 103
    if-eqz p1, :cond_8

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 112
    .line 113
    .line 114
    :cond_7
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->unregisterNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    .line 115
    .line 116
    .line 117
    :cond_8
    if-eqz p2, :cond_9

    .line 118
    .line 119
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    const-string v0, "WifiBridge"

    .line 124
    .line 125
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    if-eqz p2, :cond_9

    .line 129
    .line 130
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 131
    .line 132
    .line 133
    :cond_9
    :goto_2
    return-void

    .line 134
    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    .line 135
    .line 136
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 137
    .line 138
    .line 139
    :cond_b
    return-void
.end method

.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onGetWifiList(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "app.appId"

    .line 2
    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :cond_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_4

    .line 35
    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void

    .line 42
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "errCode"

    .line 62
    .line 63
    const/16 v1, 0x2ee4

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 70
    .line 71
    .line 72
    const-string v0, "errMsg"

    .line 73
    .line 74
    const-string v1, "this app already has listener: W12004"

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    :goto_0
    return-void

    .line 86
    :cond_6
    new-instance v1, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, p0, v2, p2}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;-><init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    .line 100
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :goto_1
    const-string v0, "WifiBridge"

    .line 112
    .line 113
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    if-eqz p2, :cond_7

    .line 117
    .line 118
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 119
    .line 120
    .line 121
    :cond_7
    :goto_2
    return-void

    .line 122
    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 123
    .line 124
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 125
    .line 126
    .line 127
    :cond_9
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWifiConnected(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 6
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "app.appId"

    .line 2
    .line 3
    if-eqz p1, :cond_c

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_c

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void

    .line 43
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const-string v3, "errMsg"

    .line 60
    .line 61
    const-string v4, "errCode"

    .line 62
    .line 63
    if-nez v2, :cond_6

    .line 64
    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 70
    .line 71
    .line 72
    const/16 v0, 0x2ee0

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "not init: W12000"

    .line 82
    .line 83
    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    :goto_0
    return-void

    .line 93
    :cond_6
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_8

    .line 104
    .line 105
    if-eqz p2, :cond_7

    .line 106
    .line 107
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 110
    .line 111
    .line 112
    const/16 v0, 0x2ee4

    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "this app already has listener: W12004"

    .line 122
    .line 123
    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 127
    .line 128
    .line 129
    :cond_7
    return-void

    .line 130
    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v2, "wifi"

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 141
    .line 142
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_a

    .line 152
    .line 153
    if-eqz p2, :cond_9

    .line 154
    .line 155
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 156
    .line 157
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 158
    .line 159
    .line 160
    const/16 v0, 0x2ee5

    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "wifi not turned on: W12005"

    .line 170
    .line 171
    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 175
    .line 176
    .line 177
    :cond_9
    return-void

    .line 178
    :cond_a
    new-instance v2, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;

    .line 179
    .line 180
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {v2, p0, v1, v3, p2}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;-><init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/net/wifi/WifiManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 191
    .line 192
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->registerNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :goto_1
    const-string v0, "WifiBridge"

    .line 207
    .line 208
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    if-eqz p2, :cond_b

    .line 212
    .line 213
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_2
    return-void

    .line 217
    :cond_c
    :goto_3
    if-eqz p2, :cond_d

    .line 218
    .line 219
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 220
    .line 221
    .line 222
    :cond_d
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final startWifi(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 18
    .line 19
    .line 20
    :cond_2
    return-void

    .line 21
    :cond_3
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_5

    .line 26
    .line 27
    if-eqz p2, :cond_4

    .line 28
    .line 29
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 30
    .line 31
    .line 32
    :cond_4
    return-void

    .line 33
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, "app.appId"

    .line 40
    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_6

    .line 50
    .line 51
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    const-string v0, "WifiBridge"

    .line 57
    .line 58
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 64
    .line 65
    .line 66
    :cond_6
    :goto_0
    return-void
.end method

.method public final stopWifi(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void

    .line 40
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiInitMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;

    .line 60
    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->unregisterNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge;->mWifiScanReceiverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 102
    .line 103
    .line 104
    :cond_6
    if-eqz p2, :cond_7

    .line 105
    .line 106
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_1
    const-string v0, "WifiBridge"

    .line 111
    .line 112
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    if-eqz p2, :cond_7

    .line 116
    .line 117
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_2
    return-void

    .line 121
    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 122
    .line 123
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 124
    .line 125
    .line 126
    :cond_9
    return-void
.end method
