package com.transsion.hubsdk.api.net.wifi;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Parcel;
import com.transsion.hubsdk.aosp.net.wifi.TranAospWifiManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.net.wifi.TranThubWifiManager;
import com.transsion.hubsdk.interfaces.net.wifi.ITranWifiManagerAdapter;

public class TranWifiManager {
    public static final String EXTRA_WIFI_AP_STATE = "wifi_state";
    private static final String TAG = "TranWifiManager";
    public static final String WIFI_AP_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    public static final int WIFI_AP_STATE_ENABLED = 13;
    public static final String WIFI_BUNDLE_KEY = "wifi_bundle_key";
    private TranAospWifiManager mAospService;
    private TranThubWifiManager mThubService;

    public interface TranActionListener {
        void onFailure(int i);

        void onSuccess();
    }

    public interface TranLocalOnlyHotspotCallback {
        void onFailed(int i);

        void onStarted(WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation);

        void onStopped();
    }

    public interface TranSoftApCallback {
        void onStateChanged(int i, int i2);
    }

    public void connect(TranWifiConfiguration tranWifiConfiguration, TranActionListener tranActionListener) {
        getService(TranVersion.Core.VERSION_33131).connect(tranWifiConfiguration, tranActionListener);
    }

    public void connectSsid(String str, TranActionListener tranActionListener) {
        getService(TranVersion.Core.VERSION_33131).connectSsid(str, tranActionListener);
    }

    public void forget(int i, TranActionListener tranActionListener) {
        getService(TranVersion.Core.VERSION_33131).forget(i, tranActionListener);
    }

    public String[] getFactoryMacAddresses() {
        return getService(TranVersion.Core.VERSION_33131).getFactoryMacAddresses();
    }

    public int getNumAssociation(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration != null) {
            return getService(TranVersion.Core.VERSION_33201).getNumAssociation(wifiConfiguration);
        }
        throw new IllegalArgumentException("wifiConfig is null.");
    }

    public Bundle getPrivilegedConfiguredNetworksToBundle() {
        return getService(TranVersion.Core.VERSION_33201).getPrivilegedConfiguredNetworksToBundle();
    }

    @Deprecated
    public Bundle getPrivilegedConfiguredNetworksToJsonString() {
        return getService(TranVersion.Core.VERSION_33171).getPrivilegedConfiguredNetworksToJsonString();
    }

    public ITranWifiManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.d(TAG, "TranThubWifiManager start");
            TranThubWifiManager tranThubWifiManager = this.mThubService;
            if (tranThubWifiManager != null) {
                return tranThubWifiManager;
            }
            TranThubWifiManager tranThubWifiManager2 = new TranThubWifiManager();
            this.mThubService = tranThubWifiManager2;
            return tranThubWifiManager2;
        }
        TranSdkLog.d(TAG, "TranAospWifiManager start");
        TranAospWifiManager tranAospWifiManager = this.mAospService;
        if (tranAospWifiManager != null) {
            return tranAospWifiManager;
        }
        TranAospWifiManager tranAospWifiManager2 = new TranAospWifiManager();
        this.mAospService = tranAospWifiManager2;
        return tranAospWifiManager2;
    }

    public TranSoftApConfiguration getSoftApConfiguration() {
        return getService(TranVersion.Core.VERSION_33131).getSoftApConfiguration();
    }

    public TranWifiConfiguration getWifiApConfiguration() {
        return getService(TranVersion.Core.VERSION_33131).getWifiApConfiguration();
    }

    public int getWifiApState() {
        return getService(TranVersion.Core.VERSION_33131).getWifiApState();
    }

    public WifiConfiguration getWifiConfiguration(Parcel parcel) {
        return getService(TranVersion.Core.VERSION_33161).getWifiConfiguration(parcel);
    }

    public boolean isWifiApEnabled() {
        return getService(TranVersion.Core.VERSION_33171).isWifiApEnabled();
    }

    public void registerSoftApCallback(TranSoftApCallback tranSoftApCallback) {
        if (tranSoftApCallback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        getService(TranVersion.Core.VERSION_33131).registerSoftApCallback(tranSoftApCallback);
    }

    public void save(TranWifiConfiguration tranWifiConfiguration, TranActionListener tranActionListener) {
        getService(TranVersion.Core.VERSION_33131).save(tranWifiConfiguration, tranActionListener);
    }

    @TranLevel(level = 1)
    public void setDefaultCountryCode(String str) {
        getService(TranVersion.Core.VERSION_33171).setDefaultCountryCode(str);
    }

    public void setNumAssociation(WifiConfiguration wifiConfiguration, int i) {
        if (wifiConfiguration == null) {
            throw new IllegalArgumentException("wifiConfig is null.");
        }
        getService(TranVersion.Core.VERSION_33201).setNumAssociation(wifiConfiguration, i);
    }

    public boolean setStaticIpConfiguration(TranWifiConfiguration tranWifiConfiguration, String str, String str2, String str3) {
        return getService(TranVersion.Core.VERSION_33131).setStaticIpConfiguration(tranWifiConfiguration, str, str2, str3);
    }

    public boolean setWifiApConfiguration(TranWifiConfiguration tranWifiConfiguration) {
        return getService(TranVersion.Core.VERSION_33131).setWifiApConfiguration(tranWifiConfiguration);
    }

    public void startLocalOnlyHotspot(TranSoftApConfiguration tranSoftApConfiguration, TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback) {
        getService(TranVersion.Core.VERSION_33171).startLocalOnlyHotspot(tranSoftApConfiguration, tranLocalOnlyHotspotCallback);
    }

    public boolean startSoftAp(TranWifiConfiguration tranWifiConfiguration) {
        return getService(TranVersion.Core.VERSION_33131).startSoftAp(tranWifiConfiguration);
    }

    public boolean stopSoftAp() {
        return getService(TranVersion.Core.VERSION_33131).stopSoftAp();
    }
}
