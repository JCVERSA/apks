package com.transsion.hubsdk.core.net.wifi;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.net.wifi.TranWifiConfiguration;
import com.transsion.hubsdk.api.net.wifi.TranWifiManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.net.wifi.ITranWifiManagerAdapter;
import com.transsion.hubsdk.net.wifi.ITranActionListener;
import com.transsion.hubsdk.net.wifi.ITranLocalOnlyHotspotCallback;
import com.transsion.hubsdk.net.wifi.ITranSoftApCallback;
import com.transsion.hubsdk.net.wifi.ITranWifiManager;
import com.transsion.hubsdk.net.wifi.TranSoftApConfiguration;
import defpackage.iwa;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class TranThubWifiManager implements ITranWifiManagerAdapter {
    private static final String TAG = "TranThubWifiManager";
    private LocalOnlyHotspotCallback mLocalOnlyHotspotCallback;
    private ITranWifiManager mService = ITranWifiManager.Stub.asInterface(TranServiceManager.getServiceIBinder("wifi_manager"));

    public class LocalOnlyHotspotCallback extends ITranLocalOnlyHotspotCallback.Stub {
        TranWifiManager.TranLocalOnlyHotspotCallback mCallback;

        public LocalOnlyHotspotCallback(TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback) {
            this.mCallback = tranLocalOnlyHotspotCallback;
        }

        public void onFailed(int i) {
            this.mCallback.onFailed(i);
        }

        public void onStarted(TranSoftApConfiguration tranSoftApConfiguration) {
            com.transsion.hubsdk.api.net.wifi.TranSoftApConfiguration tranSoftApConfiguration2 = new com.transsion.hubsdk.api.net.wifi.TranSoftApConfiguration(tranSoftApConfiguration.getSsid(), tranSoftApConfiguration.getBssid(), tranSoftApConfiguration.getPassphrase(), tranSoftApConfiguration.isHiddenSsid(), tranSoftApConfiguration.getBand(), tranSoftApConfiguration.getChannel(), tranSoftApConfiguration.getSecurityType(), tranSoftApConfiguration.getMaxNumberOfClients(), tranSoftApConfiguration.isAutoShutdownEnabled(), tranSoftApConfiguration.getShutdownTimeoutMillis(), tranSoftApConfiguration.isClientControlByUserEnabled(), tranSoftApConfiguration.getBlockedClientList(), tranSoftApConfiguration.getAllowedClientList());
            WifiManager wifiManager = (WifiManager) TranHubSdkManager.getContext().getSystemService("wifi");
            WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation = null;
            try {
                Class cls = TranDoorMan.getClass("android.net.wifi.SoftApConfiguration$Builder");
                Object objNewInstance = cls.newInstance();
                int i = Build.VERSION.SDK_INT;
                if (i < 33) {
                    Field declaredField = cls.getDeclaredField("mSsid");
                    declaredField.setAccessible(true);
                    declaredField.set(objNewInstance, tranSoftApConfiguration2.getSsid());
                } else {
                    Method declaredMethod = Class.forName("android.net.wifi.WifiSsid").getDeclaredMethod("fromBytes", byte[].class);
                    declaredMethod.setAccessible(true);
                    Object objInvoke = declaredMethod.invoke(null, tranSoftApConfiguration2.getSsid().getBytes());
                    Field declaredField2 = cls.getDeclaredField("mWifiSsid");
                    declaredField2.setAccessible(true);
                    declaredField2.set(objNewInstance, objInvoke);
                }
                Field declaredField3 = cls.getDeclaredField("mPassphrase");
                declaredField3.setAccessible(true);
                declaredField3.set(objNewInstance, tranSoftApConfiguration2.getPassphrase());
                Field declaredField4 = cls.getDeclaredField("mSecurityType");
                declaredField4.setAccessible(true);
                declaredField4.set(objNewInstance, Integer.valueOf(tranSoftApConfiguration2.getSecurityType()));
                if (i > 30) {
                    cls.getDeclaredMethod("setBand", Integer.TYPE).invoke(objNewInstance, Integer.valueOf(tranSoftApConfiguration2.getBand()));
                } else {
                    Field declaredField5 = cls.getDeclaredField("mBand");
                    declaredField5.setAccessible(true);
                    declaredField5.set(objNewInstance, Integer.valueOf(tranSoftApConfiguration2.getBand()));
                }
                Field declaredField6 = cls.getDeclaredField("mAutoShutdownEnabled");
                declaredField6.setAccessible(true);
                declaredField6.set(objNewInstance, Boolean.valueOf(tranSoftApConfiguration2.isAutoShutdownEnabled()));
                Object objNewInstance2 = Class.forName("android.net.wifi.WifiManager$LocalOnlyHotspotReservation").getDeclaredConstructors()[0].newInstance(wifiManager, iwa.a(cls.getDeclaredMethod("build", null).invoke(objNewInstance, null)));
                if (objNewInstance2 instanceof WifiManager.LocalOnlyHotspotReservation) {
                    localOnlyHotspotReservation = (WifiManager.LocalOnlyHotspotReservation) objNewInstance2;
                }
            } catch (Throwable th) {
                TranSdkLog.e(TranThubWifiManager.TAG, "get LocalOnlyHotspotReservation fail: " + th);
            }
            this.mCallback.onStarted(localOnlyHotspotReservation);
        }

        public void onStopped() {
            this.mCallback.onStopped();
        }
    }

    public class TranActionListener extends ITranActionListener.Stub {
        TranWifiManager.TranActionListener mTranActionListener;

        public TranActionListener(TranWifiManager.TranActionListener tranActionListener) {
            this.mTranActionListener = tranActionListener;
        }

        public void onFailure(int i) throws RemoteException {
            TranWifiManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onFailure(i);
            }
        }

        public void onSuccess() throws RemoteException {
            TranWifiManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onSuccess();
            }
        }
    }

    public class TranSoftApCallback extends ITranSoftApCallback.Stub {
        TranWifiManager.TranSoftApCallback mTranSoftApCallback;

        public TranSoftApCallback(TranWifiManager.TranSoftApCallback tranSoftApCallback) {
            this.mTranSoftApCallback = tranSoftApCallback;
        }

        public void onStateChanged(int i, int i2) throws RemoteException {
            TranWifiManager.TranSoftApCallback tranSoftApCallback = this.mTranSoftApCallback;
            if (tranSoftApCallback != null) {
                tranSoftApCallback.onStateChanged(i, i2);
            }
        }
    }

    @Override
    public void connect(TranWifiConfiguration tranWifiConfiguration, TranWifiManager.TranActionListener tranActionListener) {
        com.transsion.hubsdk.net.wifi.TranWifiConfiguration tranWifiConfiguration2 = new com.transsion.hubsdk.net.wifi.TranWifiConfiguration();
        tranWifiConfiguration2.SSID = tranWifiConfiguration.mSSID;
        tranWifiConfiguration2.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        tranWifiConfiguration2.networkId = tranWifiConfiguration.mNetworkId;
        tranWifiConfiguration2.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        tranWifiConfiguration2.apBand = tranWifiConfiguration.mApBand;
        tranWifiConfiguration2.apChannel = tranWifiConfiguration.mApChannel;
        TranActionListener tranActionListener2 = new TranActionListener(tranActionListener);
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                iTranWifiManager.connect(tranWifiConfiguration2, tranActionListener2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "connect fail " + e);
            }
        }
    }

    @Override
    public void connectSsid(String str, TranWifiManager.TranActionListener tranActionListener) {
        TranActionListener tranActionListener2 = new TranActionListener(tranActionListener);
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                iTranWifiManager.connectSsid(str, tranActionListener2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "connect ssid fail " + e);
            }
        }
    }

    @Override
    public void forget(int i, TranWifiManager.TranActionListener tranActionListener) {
        TranActionListener tranActionListener2 = new TranActionListener(tranActionListener);
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                iTranWifiManager.forget(i, tranActionListener2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "forget fail " + e);
            }
        }
    }

    @Override
    public String[] getFactoryMacAddresses() {
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return null;
        }
        try {
            return iTranWifiManager.getFactoryMacAddresses();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getFactoryMacAddresses fail " + e);
            return null;
        }
    }

    @Override
    public int getNumAssociation(WifiConfiguration wifiConfiguration) {
        return com.transsion.hubsdk.net.wifi.TranWifiConfiguration.getNumAssociation(wifiConfiguration);
    }

    @Override
    public Bundle getPrivilegedConfiguredNetworksToBundle() {
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return null;
        }
        try {
            return iTranWifiManager.getPrivilegedConfiguredNetworksToBundle();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getPrivilegedConfiguredNetworksToBundle fail " + e);
            return null;
        }
    }

    @Override
    public Bundle getPrivilegedConfiguredNetworksToJsonString() {
        return null;
    }

    @Override
    public com.transsion.hubsdk.api.net.wifi.TranSoftApConfiguration getSoftApConfiguration() {
        TranSoftApConfiguration softApConfiguration;
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                softApConfiguration = iTranWifiManager.getSoftApConfiguration();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getWifiApConfiguration fail " + e);
                softApConfiguration = null;
            }
        } else {
            softApConfiguration = null;
        }
        if (softApConfiguration != null) {
            return new com.transsion.hubsdk.api.net.wifi.TranSoftApConfiguration(softApConfiguration.getSsid(), softApConfiguration.getBssid(), softApConfiguration.getPassphrase(), softApConfiguration.isHiddenSsid(), softApConfiguration.getBand(), softApConfiguration.getChannel(), softApConfiguration.getSecurityType(), softApConfiguration.getMaxNumberOfClients(), softApConfiguration.isAutoShutdownEnabled(), softApConfiguration.getShutdownTimeoutMillis(), softApConfiguration.isClientControlByUserEnabled(), softApConfiguration.getBlockedClientList(), softApConfiguration.getAllowedClientList());
        }
        return null;
    }

    @Override
    public TranWifiConfiguration getWifiApConfiguration() {
        com.transsion.hubsdk.net.wifi.TranWifiConfiguration wifiApConfiguration;
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                wifiApConfiguration = iTranWifiManager.getWifiApConfiguration();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getWifiApConfiguration fail " + e);
                wifiApConfiguration = null;
            }
        } else {
            wifiApConfiguration = null;
        }
        if (wifiApConfiguration == null) {
            return null;
        }
        TranWifiConfiguration tranWifiConfiguration = new TranWifiConfiguration();
        tranWifiConfiguration.mSSID = wifiApConfiguration.SSID;
        tranWifiConfiguration.mHiddenSSID = wifiApConfiguration.hiddenSSID;
        tranWifiConfiguration.mNetworkId = wifiApConfiguration.networkId;
        tranWifiConfiguration.mPreSharedKey = wifiApConfiguration.preSharedKey;
        tranWifiConfiguration.mApBand = wifiApConfiguration.apBand;
        tranWifiConfiguration.mApChannel = wifiApConfiguration.apChannel;
        tranWifiConfiguration.mAllowedKeyManagement = wifiApConfiguration.allowedKeyManagement;
        return tranWifiConfiguration;
    }

    @Override
    public int getWifiApState() {
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return 0;
        }
        try {
            return iTranWifiManager.getWifiApState();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getWifiApState fail " + e);
            return 0;
        }
    }

    @Override
    public WifiConfiguration getWifiConfiguration(Parcel parcel) {
        try {
            Field declaredField = WifiConfiguration.class.getDeclaredField("CREATOR");
            declaredField.setAccessible(true);
            Parcelable.Creator creator = (Parcelable.Creator) declaredField.get(WifiConfiguration.class);
            Method declaredMethod = Parcelable.Creator.class.getDeclaredMethod("createFromParcel", Parcel.class);
            declaredMethod.setAccessible(true);
            return (WifiConfiguration) declaredMethod.invoke(creator, parcel);
        } catch (Exception e) {
            TranSdkLog.w(TAG, "getWifiConfiguration: ", e);
            return null;
        }
    }

    @Override
    public boolean isWifiApEnabled() {
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return false;
        }
        try {
            return iTranWifiManager.isWifiApEnabled();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isWifiApEnabled fail " + e);
            return false;
        }
    }

    @Override
    public void registerSoftApCallback(TranWifiManager.TranSoftApCallback tranSoftApCallback) {
        TranSoftApCallback tranSoftApCallback2 = new TranSoftApCallback(tranSoftApCallback);
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                iTranWifiManager.registerSoftApCallback(tranSoftApCallback2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "forget fail " + e);
            }
        }
    }

    @Override
    public void save(TranWifiConfiguration tranWifiConfiguration, TranWifiManager.TranActionListener tranActionListener) {
        com.transsion.hubsdk.net.wifi.TranWifiConfiguration tranWifiConfiguration2 = new com.transsion.hubsdk.net.wifi.TranWifiConfiguration();
        tranWifiConfiguration2.SSID = tranWifiConfiguration.mSSID;
        tranWifiConfiguration2.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        tranWifiConfiguration2.networkId = tranWifiConfiguration.mNetworkId;
        tranWifiConfiguration2.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        tranWifiConfiguration2.apBand = tranWifiConfiguration.mApBand;
        tranWifiConfiguration2.apChannel = tranWifiConfiguration.mApChannel;
        TranActionListener tranActionListener2 = new TranActionListener(tranActionListener);
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                iTranWifiManager.save(tranWifiConfiguration2, tranActionListener2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "save fail " + e);
            }
        }
    }

    @Override
    public void setDefaultCountryCode(String str) {
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager != null) {
            try {
                iTranWifiManager.setDefaultCountryCode(str);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setDefaultCountryCode fail " + e);
            }
        }
    }

    @Override
    public void setNumAssociation(WifiConfiguration wifiConfiguration, int i) {
        com.transsion.hubsdk.net.wifi.TranWifiConfiguration.setNumAssociation(wifiConfiguration, i);
    }

    @Override
    public boolean setStaticIpConfiguration(TranWifiConfiguration tranWifiConfiguration, String str, String str2, String str3) {
        com.transsion.hubsdk.net.wifi.TranWifiConfiguration tranWifiConfiguration2 = new com.transsion.hubsdk.net.wifi.TranWifiConfiguration();
        tranWifiConfiguration2.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        tranWifiConfiguration2.networkId = tranWifiConfiguration.mNetworkId;
        tranWifiConfiguration2.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        tranWifiConfiguration2.apBand = tranWifiConfiguration.mApBand;
        tranWifiConfiguration2.apChannel = tranWifiConfiguration.mApChannel;
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return false;
        }
        try {
            return iTranWifiManager.setStaticIpConfiguration(tranWifiConfiguration2, str, str2, str3);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "forget fail " + e);
            return false;
        }
    }

    @Override
    public boolean setWifiApConfiguration(TranWifiConfiguration tranWifiConfiguration) {
        com.transsion.hubsdk.net.wifi.TranWifiConfiguration tranWifiConfiguration2 = new com.transsion.hubsdk.net.wifi.TranWifiConfiguration();
        tranWifiConfiguration2.SSID = tranWifiConfiguration.mSSID;
        tranWifiConfiguration2.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        tranWifiConfiguration2.networkId = tranWifiConfiguration.mNetworkId;
        tranWifiConfiguration2.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        tranWifiConfiguration2.apBand = tranWifiConfiguration.mApBand;
        tranWifiConfiguration2.apChannel = tranWifiConfiguration.mApChannel;
        tranWifiConfiguration2.allowedKeyManagement = tranWifiConfiguration.mAllowedKeyManagement;
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return false;
        }
        try {
            return iTranWifiManager.setWifiApConfiguration(tranWifiConfiguration2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setWifiApConfiguration fail " + e);
            return false;
        }
    }

    @Override
    public void startLocalOnlyHotspot(com.transsion.hubsdk.api.net.wifi.TranSoftApConfiguration tranSoftApConfiguration, TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback) {
        if (this.mService != null) {
            try {
                this.mLocalOnlyHotspotCallback = new LocalOnlyHotspotCallback(tranLocalOnlyHotspotCallback);
                this.mService.startLocalOnlyHotspot(new TranSoftApConfiguration(tranSoftApConfiguration.getSsid(), tranSoftApConfiguration.getBssid(), tranSoftApConfiguration.getPassphrase(), tranSoftApConfiguration.isHiddenSsid(), tranSoftApConfiguration.getBand(), tranSoftApConfiguration.getChannel(), tranSoftApConfiguration.getSecurityType(), tranSoftApConfiguration.getMaxNumberOfClients(), tranSoftApConfiguration.isAutoShutdownEnabled(), tranSoftApConfiguration.getShutdownTimeoutMillis(), tranSoftApConfiguration.isClientControlByUserEnabled(), tranSoftApConfiguration.getBlockedClientList(), tranSoftApConfiguration.getAllowedClientList()), this.mLocalOnlyHotspotCallback);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setDefaultCountryCode fail " + e);
                this.mLocalOnlyHotspotCallback.onFailed(2);
            }
        }
    }

    @Override
    public boolean startSoftAp(TranWifiConfiguration tranWifiConfiguration) {
        com.transsion.hubsdk.net.wifi.TranWifiConfiguration tranWifiConfiguration2 = new com.transsion.hubsdk.net.wifi.TranWifiConfiguration();
        tranWifiConfiguration2.SSID = tranWifiConfiguration.mSSID;
        tranWifiConfiguration2.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        tranWifiConfiguration2.networkId = tranWifiConfiguration.mNetworkId;
        tranWifiConfiguration2.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        tranWifiConfiguration2.apBand = tranWifiConfiguration.mApBand;
        tranWifiConfiguration2.apChannel = tranWifiConfiguration.mApChannel;
        tranWifiConfiguration2.allowedKeyManagement = tranWifiConfiguration.mAllowedKeyManagement;
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return false;
        }
        try {
            return iTranWifiManager.startSoftAp(tranWifiConfiguration2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "startSoftAp fail " + e);
            return false;
        }
    }

    @Override
    public boolean stopSoftAp() {
        ITranWifiManager iTranWifiManager = this.mService;
        if (iTranWifiManager == null) {
            return false;
        }
        try {
            return iTranWifiManager.stopSoftAp();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "stopSoftAp fail " + e);
            return false;
        }
    }
}
