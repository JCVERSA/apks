package com.transsion.hubsdk.interfaces.net.wifi;

import android.net.wifi.WifiConfiguration;
import android.os.Bundle;
import android.os.Parcel;
import com.transsion.hubsdk.api.net.wifi.TranSoftApConfiguration;
import com.transsion.hubsdk.api.net.wifi.TranWifiConfiguration;
import com.transsion.hubsdk.api.net.wifi.TranWifiManager;

public interface ITranWifiManagerAdapter {
    void connect(TranWifiConfiguration tranWifiConfiguration, TranWifiManager.TranActionListener tranActionListener);

    void connectSsid(String str, TranWifiManager.TranActionListener tranActionListener);

    void forget(int i, TranWifiManager.TranActionListener tranActionListener);

    String[] getFactoryMacAddresses();

    int getNumAssociation(WifiConfiguration wifiConfiguration);

    Bundle getPrivilegedConfiguredNetworksToBundle();

    Bundle getPrivilegedConfiguredNetworksToJsonString();

    TranSoftApConfiguration getSoftApConfiguration();

    TranWifiConfiguration getWifiApConfiguration();

    int getWifiApState();

    WifiConfiguration getWifiConfiguration(Parcel parcel);

    boolean isWifiApEnabled();

    void registerSoftApCallback(TranWifiManager.TranSoftApCallback tranSoftApCallback);

    void save(TranWifiConfiguration tranWifiConfiguration, TranWifiManager.TranActionListener tranActionListener);

    void setDefaultCountryCode(String str);

    void setNumAssociation(WifiConfiguration wifiConfiguration, int i);

    boolean setStaticIpConfiguration(TranWifiConfiguration tranWifiConfiguration, String str, String str2, String str3);

    boolean setWifiApConfiguration(TranWifiConfiguration tranWifiConfiguration);

    void startLocalOnlyHotspot(TranSoftApConfiguration tranSoftApConfiguration, TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback);

    boolean startSoftAp(TranWifiConfiguration tranWifiConfiguration);

    boolean stopSoftAp();
}
