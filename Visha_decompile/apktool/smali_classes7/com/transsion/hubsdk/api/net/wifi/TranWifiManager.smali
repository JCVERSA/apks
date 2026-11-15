.class public Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;,
        Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;,
        Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final TAG:Ljava/lang/String; = "TranWifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_BUNDLE_KEY:Ljava/lang/String; = "wifi_bundle_key"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;

.field private mThubService:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->connect(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    return-void
.end method

.method public connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    return-void
.end method

.method public forget(ILcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->forget(ILcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    return-void
.end method

.method public getFactoryMacAddresses()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNumAssociation(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getNumAssociation(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wifiConfig is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPrivilegedConfiguredNetworksToBundle()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getPrivilegedConfiguredNetworksToBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getPrivilegedConfiguredNetworksToJsonString()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getPrivilegedConfiguredNetworksToJsonString()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubWifiManager start"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->mThubService:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->mThubService:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWifiManager start"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->mAospService:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->mAospService:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;

    :cond_2
    return-object p1
.end method

.method public getSoftApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getSoftApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getWifiApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApState()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getWifiApState()I

    move-result p0

    return p0
.end method

.method public getWifiConfiguration(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->getWifiConfiguration(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public isWifiApEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->isWifiApEnabled()Z

    move-result p0

    return p0
.end method

.method public registerSoftApCallback(Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->registerSoftApCallback(Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public save(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->save(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    return-void
.end method

.method public setDefaultCountryCode(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->setDefaultCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method public setNumAssociation(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->setNumAssociation(Landroid/net/wifi/WifiConfiguration;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wifiConfig is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStaticIpConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->setStaticIpConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setWifiApConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->setWifiApConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public startLocalOnlyHotspot(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->startLocalOnlyHotspot(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V

    return-void
.end method

.method public startSoftAp(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->startSoftAp(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public stopSoftAp()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;->stopSoftAp()Z

    move-result p0

    return p0
.end method
