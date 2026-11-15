.class public Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;,
        Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranSoftApCallback;,
        Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWifiManager"


# instance fields
.field private mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;

.field private mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wifi_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public connect(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;-><init>()V

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->hiddenSSID:Z

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->networkId:I

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApBand:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apBand:I

    iget p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApChannel:I

    iput p1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apChannel:I

    new-instance p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;

    invoke-direct {p1, p0, p2}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->connect(Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/net/wifi/ITranActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/net/wifi/ITranActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect ssid fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public forget(ILcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->forget(ILcom/transsion/hubsdk/net/wifi/ITranActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forget fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getFactoryMacAddresses()[Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFactoryMacAddresses fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumAssociation(Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->getNumAssociation(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method

.method public getPrivilegedConfiguredNetworksToBundle()Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->getPrivilegedConfiguredNetworksToBundle()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrivilegedConfiguredNetworksToBundle fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrivilegedConfiguredNetworksToJsonString()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSoftApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->getSoftApConfiguration()Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-object v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApConfiguration fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->isHiddenSsid()Z

    move-result v6

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getBand()I

    move-result v7

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getChannel()I

    move-result v8

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getSecurityType()I

    move-result v9

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getMaxNumberOfClients()I

    move-result v10

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v11

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v14

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v0}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v16

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZIIIIZJZLjava/util/List;Ljava/util/List;)V

    :cond_1
    return-object v1
.end method

.method public getWifiApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->getWifiApConfiguration()Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApConfiguration fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iget v1, p0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->networkId:I

    iput v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iget-object v1, p0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apBand:I

    iput v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApBand:I

    iget v1, p0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apChannel:I

    iput v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApChannel:I

    iget-object p0, p0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object p0, v0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mAllowedKeyManagement:Ljava/util/BitSet;

    :cond_1
    return-object v0
.end method

.method public getWifiApState()I
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->getWifiApState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApState fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

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

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    const-string v0, "getWifiConfiguration: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isWifiApEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->isWifiApEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiApEnabled fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerSoftApCallback(Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranSoftApCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranSoftApCallback;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->registerSoftApCallback(Lcom/transsion/hubsdk/net/wifi/ITranSoftApCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forget fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public save(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;-><init>()V

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->hiddenSSID:Z

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->networkId:I

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApBand:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apBand:I

    iget p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApChannel:I

    iput p1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apChannel:I

    new-instance p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;

    invoke-direct {p1, p0, p2}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->save(Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/net/wifi/ITranActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultCountryCode(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->setDefaultCountryCode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultCountryCode fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setNumAssociation(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->setNumAssociation(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method public setStaticIpConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;-><init>()V

    iget-boolean v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->hiddenSSID:Z

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->networkId:I

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApBand:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apBand:I

    iget p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApChannel:I

    iput p1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apChannel:I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0, p2, p3, p4}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->setStaticIpConfiguration(Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "forget fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWifiApConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;-><init>()V

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->hiddenSSID:Z

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->networkId:I

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApBand:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apBand:I

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApChannel:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apChannel:I

    iget-object p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mAllowedKeyManagement:Ljava/util/BitSet;

    iput-object p1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->setWifiApConfiguration(Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiApConfiguration fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startLocalOnlyHotspot(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V

    iput-object v0, v1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;

    new-instance v0, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->isHiddenSsid()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getBand()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getChannel()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSecurityType()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getMaxNumberOfClients()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v16

    move-object v2, v0

    invoke-direct/range {v2 .. v16}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZIIIIZJZLjava/util/List;Ljava/util/List;)V

    iget-object v2, v1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    iget-object v3, v1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;

    invoke-interface {v2, v0, v3}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->startLocalOnlyHotspot(Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;Lcom/transsion/hubsdk/net/wifi/ITranLocalOnlyHotspotCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultCountryCode fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public startSoftAp(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;-><init>()V

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mHiddenSSID:Z

    iput-boolean v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->hiddenSSID:Z

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mNetworkId:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->networkId:I

    iget-object v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mPreSharedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApBand:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apBand:I

    iget v1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApChannel:I

    iput v1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->apChannel:I

    iget-object p1, p1, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mAllowedKeyManagement:Ljava/util/BitSet;

    iput-object p1, v0, Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->startSoftAp(Lcom/transsion/hubsdk/net/wifi/TranWifiConfiguration;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSoftAp fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopSoftAp()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiManager;->stopSoftAp()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSoftAp fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
