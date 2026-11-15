.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;,
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;,
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranApCallback;,
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospWifiManagerExt"

.field public static final WPA2_PSK:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private get(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    if-eqz p1, :cond_0

    new-instance p0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v0, p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v0, p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->networkId:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "getIPv4Address error"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public connect(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->get(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    sget-object p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not get ssid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$1;

    invoke-direct {p1, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v3, p1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v3, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_1
    return-void
.end method

.method public forget(ILcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public registerSoftApCallback(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "registerSoftApCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranApCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranApCallback;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method public save(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->get(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public setStaticIpConfiguration(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->get(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p4}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lswa;->a()Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p4

    new-instance v0, Landroid/net/LinkAddress;

    invoke-static {p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p2

    const/16 v1, 0x18

    invoke-direct {v0, p2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {p4, v0}, Lnwa;->a(Landroid/net/StaticIpConfiguration$Builder;Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p2

    invoke-static {p3}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p3

    invoke-static {p2, p3}, Lowa;->a(Landroid/net/StaticIpConfiguration$Builder;Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p2

    invoke-static {p2, p1}, Lpwa;->a(Landroid/net/StaticIpConfiguration$Builder;Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p1

    invoke-static {p1}, Lqwa;->a(Landroid/net/StaticIpConfiguration$Builder;)Landroid/net/StaticIpConfiguration;

    move-result-object p1

    new-instance p2, Landroid/net/IpConfiguration;

    invoke-direct {p2}, Landroid/net/IpConfiguration;-><init>()V

    sget-object p3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p2, p3}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    sget-object p3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p2, p3}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    invoke-virtual {p2, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    invoke-static {p0, p2}, Lrwa;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)V

    const/4 p0, 0x0

    return p0
.end method
