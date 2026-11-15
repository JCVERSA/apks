.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;,
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospSoftApCallback;,
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospWifiManager"

.field public static final WPA2_PSK:I = 0x4

.field private static sApClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.net.wifi.SoftApConfiguration"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    return-void
.end method

.method public static synthetic a(I)[Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->lambda$getTypes$1(I)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->lambda$getTypes$0(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private varargs call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "methodName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private get(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;-><init>()V

    iget-object v0, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->hiddenSSID:Z

    iget v0, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->networkId:I

    iget-object p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private varargs getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Llwa;

    invoke-direct {p1}, Llwa;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lmwa;

    invoke-direct {p1}, Lmwa;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$getTypes$0(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getTypes$1(I)[Ljava/lang/Class;
    .locals 0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public connect(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->get(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->connect(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    :cond_1
    return-void
.end method

.method public connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    :cond_1
    return-void
.end method

.method public forget(ILcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->forget(ILcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    :cond_1
    return-void
.end method

.method public getFactoryMacAddresses()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getFactoryMacAddresses"

    invoke-direct {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getNumAssociation(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    :try_start_0
    const-string p0, "android.net.wifi.WifiConfiguration"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "numAssociation"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception when getNumAssociation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPrivilegedConfiguredNetworksToBundle()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPrivilegedConfiguredNetworks"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wifi_bundle_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrivilegedConfiguredNetworksToJsonString fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPrivilegedConfiguredNetworksToJsonString()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPrivilegedConfiguredNetworks"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wifi_bundle_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrivilegedConfiguredNetworksToJsonString fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSoftApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;
    .locals 32

    move-object/from16 v0, p0

    :try_start_0
    sget-object v2, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v3, "getSsid"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v5, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v6, "getBssid"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v6, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v7, "getPassphrase"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v7, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v8, "isHiddenSsid"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v8, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v9, "getBand"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v9, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v10, "getChannel"

    new-array v11, v4, [Ljava/lang/Class;

    invoke-static {v9, v10, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v10, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v11, "getSecurityType"

    new-array v12, v4, [Ljava/lang/Class;

    invoke-static {v10, v11, v12}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v11, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v12, "getMaxNumberOfClients"

    new-array v13, v4, [Ljava/lang/Class;

    invoke-static {v11, v12, v13}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v12, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v13, "isAutoShutdownEnabled"

    new-array v14, v4, [Ljava/lang/Class;

    invoke-static {v12, v13, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v13, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v14, "getShutdownTimeoutMillis"

    new-array v15, v4, [Ljava/lang/Class;

    invoke-static {v13, v14, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v14, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v15, "isClientControlByUserEnabled"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-static {v14, v15, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v14, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v15, "getBlockedClientList"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v14, v15, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v15, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->sApClassName:Ljava/lang/Class;

    const-string v14, "getAllowedClientList"

    move-object/from16 v16, v3

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v15, v14, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v14, v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getSoftApConfiguration"

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v14, v15, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v0, v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v14, 0x0

    invoke-virtual {v4, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkwa;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Liwa;->a(Ljava/lang/Object;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v2, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    invoke-virtual {v5, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/net/MacAddress;

    invoke-virtual {v6, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/String;

    invoke-virtual {v7, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual {v8, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual {v9, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual {v10, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual {v11, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual {v12, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    move-object/from16 v1, v16

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Ljava/util/List;

    invoke-virtual {v3, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/List;

    new-instance v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v31}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZIIIIZJZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApConfiguration fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    return-object v1
.end method

.method public getWifiApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;
    .locals 3

    :try_start_0
    const-string v0, "getWifiApConfiguration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApConfiguration fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiApState()I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getWifiApState"

    invoke-direct {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWifiConfiguration(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    const-class p0, Landroid/net/wifi/WifiConfiguration;

    :try_start_0
    const-string v0, "CREATOR"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable$Creator;

    const-class v0, Landroid/os/Parcelable$Creator;

    const-string v2, "createFromParcel"

    const-class v3, Landroid/os/Parcel;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    const-string v0, "getWifiConfiguration: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isWifiApEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWifiApEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWifiApEnabled fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public registerSoftApCallback(Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospSoftApCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospSoftApCallback;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->registerSoftApCallback(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;)V

    :cond_1
    return-void
.end method

.method public save(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->get(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->save(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V

    :cond_1
    return-void
.end method

.method public setDefaultCountryCode(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDefaultCountryCode"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultCountryCode fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNumAssociation(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1

    :try_start_0
    const-string p0, "android.net.wifi.WifiConfiguration"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "numAssociation"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception when setNumAssociation:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStaticIpConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->get(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;->setStaticIpConfiguration(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWifiApConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
    .locals 2

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :try_start_0
    const-string p1, "setWifiApConfiguration"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiApConfiguration fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startLocalOnlyHotspot(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V
    .locals 8

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V

    :try_start_0
    const-string p2, "android.net.wifi.SoftApConfiguration$Builder"

    invoke-static {p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    const-string v3, "mSsid"

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const-string v3, "android.net.wifi.WifiSsid"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "fromBytes"

    const-class v7, [B

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "mWifiSsid"

    invoke-virtual {p2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v6, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    const-string v3, "mPassphrase"

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "mSecurityType"

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSecurityType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    const-string v2, "setBand"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getBand()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v2, "mBand"

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getBand()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    const-string v2, "mAutoShutdownEnabled"

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "build"

    invoke-virtual {p2, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Liwa;->a(Ljava/lang/Object;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "startLocalOnlyHotspot"

    invoke-static {}, Ljwa;->a()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/Executor;

    const-class v6, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    filled-new-array {v2, v3, v6}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    filled-new-array {p1, v4, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLocalOnlyHotspot fail: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;->onFailed(I)V

    :goto_3
    return-void
.end method

.method public startSoftAp(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
    .locals 2

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :try_start_0
    const-string p1, "startSoftAp"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSoftAp fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopSoftAp()Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopSoftAp"

    invoke-direct {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
