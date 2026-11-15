package com.transsion.hubsdk.aosp.net.wifi;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.InetAddresses;
import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.StaticIpConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.transsion.hubsdk.common.util.TranSdkLog;
import defpackage.swa;
import java.net.Inet4Address;
import java.util.ArrayList;
import java.util.List;

public class TranAospWifiManagerExt {
    private static final String TAG = "TranAospWifiManagerExt";
    public static final int WPA2_PSK = 4;
    private Context mContext;
    private WifiManager mWifiManager;

    public interface TranActionListener {
        void onFailure(int i);

        void onSuccess();
    }

    public class TranAospListener implements WifiManager.ActionListener {
        TranActionListener mTranActionListener;

        public TranAospListener(TranActionListener tranActionListener) {
            this.mTranActionListener = tranActionListener;
        }

        public void onFailure(int i) {
            TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onFailure(i);
            }
        }

        public void onSuccess() {
            TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onSuccess();
            }
        }
    }

    public class TranApCallback implements WifiManager.SoftApCallback {
        TranSoftApCallback mTranSoftApCallback;

        public TranApCallback(TranSoftApCallback tranSoftApCallback) {
            this.mTranSoftApCallback = tranSoftApCallback;
        }

        public void onStateChanged(int i, int i2) {
            TranSoftApCallback tranSoftApCallback = this.mTranSoftApCallback;
            if (tranSoftApCallback != null) {
                tranSoftApCallback.onStateChanged(i, i2);
            }
        }
    }

    public interface TranSoftApCallback {
        void onStateChanged(int i, int i2);
    }

    public TranAospWifiManagerExt(Context context) {
        this.mContext = context;
        this.mWifiManager = (WifiManager) context.getSystemService("wifi");
    }

    private WifiConfiguration get(TranAospWifiConfiguration tranAospWifiConfiguration) {
        if (tranAospWifiConfiguration == null) {
            return null;
        }
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = tranAospWifiConfiguration.SSID;
        wifiConfiguration.hiddenSSID = tranAospWifiConfiguration.hiddenSSID;
        wifiConfiguration.networkId = tranAospWifiConfiguration.networkId;
        wifiConfiguration.allowedKeyManagement.set(1);
        wifiConfiguration.preSharedKey = tranAospWifiConfiguration.preSharedKey;
        return wifiConfiguration;
    }

    private static Inet4Address getIPv4Address(String str) {
        try {
            return (Inet4Address) InetAddresses.parseNumericAddress(str);
        } catch (ClassCastException | IllegalArgumentException unused) {
            TranSdkLog.w(TAG, "getIPv4Address error");
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    public void connect(TranAospWifiConfiguration tranAospWifiConfiguration, TranActionListener tranActionListener) {
        this.mWifiManager.connect(get(tranAospWifiConfiguration), tranActionListener != null ? new TranAospListener(tranActionListener) : null);
    }

    @SuppressLint({"MissingPermission"})
    public void connectSsid(String str, final TranActionListener tranActionListener) {
        List<WifiConfiguration> configuredNetworks = this.mWifiManager.getConfiguredNetworks();
        WifiConfiguration wifiConfiguration = null;
        for (int i = 0; i < configuredNetworks.size(); i++) {
            if (TextUtils.equals(str, configuredNetworks.get(i).SSID)) {
                wifiConfiguration = configuredNetworks.get(i);
            }
        }
        if (wifiConfiguration == null) {
            TranSdkLog.e(TAG, "can not get ssid " + str);
            return;
        }
        WifiManager.ActionListener actionListener = new WifiManager.ActionListener() {
            public void onFailure(int i2) {
                TranActionListener tranActionListener2 = tranActionListener;
                if (tranActionListener2 != null) {
                    tranActionListener2.onFailure(i2);
                }
            }

            public void onSuccess() {
                TranActionListener tranActionListener2 = tranActionListener;
                if (tranActionListener2 != null) {
                    tranActionListener2.onSuccess();
                }
            }
        };
        if (tranActionListener != null) {
            this.mWifiManager.connect(wifiConfiguration, actionListener);
        } else {
            this.mWifiManager.connect(wifiConfiguration, null);
        }
    }

    @SuppressLint({"MissingPermission"})
    public void forget(int i, TranActionListener tranActionListener) {
        this.mWifiManager.forget(i, tranActionListener != null ? new TranAospListener(tranActionListener) : null);
    }

    @SuppressLint({"MissingPermission"})
    public void registerSoftApCallback(TranSoftApCallback tranSoftApCallback) {
        HandlerThread handlerThread = new HandlerThread("registerSoftApCallback");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mWifiManager.registerSoftApCallback(new HandlerExecutor(handler), new TranApCallback(tranSoftApCallback));
    }

    @SuppressLint({"MissingPermission"})
    public void save(TranAospWifiConfiguration tranAospWifiConfiguration, TranActionListener tranActionListener) {
        this.mWifiManager.save(get(tranAospWifiConfiguration), tranActionListener != null ? new TranAospListener(tranActionListener) : null);
    }

    @SuppressLint({"NewApi"})
    public boolean setStaticIpConfiguration(TranAospWifiConfiguration tranAospWifiConfiguration, String str, String str2, String str3) {
        WifiConfiguration wifiConfiguration = get(tranAospWifiConfiguration);
        ArrayList arrayList = new ArrayList();
        arrayList.add(getIPv4Address(str3));
        StaticIpConfiguration staticIpConfigurationBuild = swa.a().setIpAddress(new LinkAddress(getIPv4Address(str), 24)).setGateway(getIPv4Address(str2)).setDnsServers(arrayList).build();
        IpConfiguration ipConfiguration = new IpConfiguration();
        ipConfiguration.setIpAssignment(IpConfiguration.IpAssignment.STATIC);
        ipConfiguration.setProxySettings(IpConfiguration.ProxySettings.NONE);
        ipConfiguration.setStaticIpConfiguration(staticIpConfigurationBuild);
        wifiConfiguration.setIpConfiguration(ipConfiguration);
        return false;
    }
}
