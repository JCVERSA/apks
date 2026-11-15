.class public interface abstract Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract connect(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
.end method

.method public abstract connectSsid(Ljava/lang/String;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
.end method

.method public abstract forget(ILcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
.end method

.method public abstract getFactoryMacAddresses()[Ljava/lang/String;
.end method

.method public abstract getNumAssociation(Landroid/net/wifi/WifiConfiguration;)I
.end method

.method public abstract getPrivilegedConfiguredNetworksToBundle()Landroid/os/Bundle;
.end method

.method public abstract getPrivilegedConfiguredNetworksToJsonString()Landroid/os/Bundle;
.end method

.method public abstract getSoftApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;
.end method

.method public abstract getWifiApConfiguration()Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;
.end method

.method public abstract getWifiApState()I
.end method

.method public abstract getWifiConfiguration(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract isWifiApEnabled()Z
.end method

.method public abstract registerSoftApCallback(Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V
.end method

.method public abstract save(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
.end method

.method public abstract setDefaultCountryCode(Ljava/lang/String;)V
.end method

.method public abstract setNumAssociation(Landroid/net/wifi/WifiConfiguration;I)V
.end method

.method public abstract setStaticIpConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setWifiApConfiguration(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
.end method

.method public abstract startLocalOnlyHotspot(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V
.end method

.method public abstract startSoftAp(Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;)Z
.end method

.method public abstract stopSoftAp()Z
.end method
