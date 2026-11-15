package com.transsion.hubsdk.aosp.net.wifi;

import android.content.Context;
import android.net.MacAddress;
import android.net.wifi.SoftApConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.hubsdk.aosp.net.wifi.TranAospWifiManager;
import com.transsion.hubsdk.api.net.wifi.TranSoftApConfiguration;
import com.transsion.hubsdk.api.net.wifi.TranWifiConfiguration;
import com.transsion.hubsdk.api.net.wifi.TranWifiManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.net.wifi.ITranWifiManagerAdapter;
import defpackage.iwa;
import defpackage.jwa;
import defpackage.kwa;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.Function;
import java.util.function.IntFunction;

public class TranAospWifiManager implements ITranWifiManagerAdapter {
    private static final String TAG = "TranAospWifiManager";
    public static final int WPA2_PSK = 4;
    private static Class<?> sApClassName = TranDoorMan.getClass("android.net.wifi.SoftApConfiguration");
    private Context mContext;
    private TranAospWifiManagerExt mWifiExt;
    private WifiManager mWifiManager;

    public class TranAospActionListener implements TranAospWifiManagerExt.TranActionListener {
        TranWifiManager.TranActionListener mTranActionListener;

        public TranAospActionListener(TranWifiManager.TranActionListener tranActionListener) {
            this.mTranActionListener = tranActionListener;
        }

        @Override
        public void onFailure(int i) {
            TranWifiManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onFailure(i);
            }
        }

        @Override
        public void onSuccess() {
            TranWifiManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onSuccess();
            }
        }
    }

    public class TranAospLocalOnlyHotspotCallback extends WifiManager.LocalOnlyHotspotCallback {
        private final TranWifiManager.TranLocalOnlyHotspotCallback mLocalOnlyHotspotCallback;

        public TranAospLocalOnlyHotspotCallback(TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback) {
            this.mLocalOnlyHotspotCallback = tranLocalOnlyHotspotCallback;
        }

        @Override
        public void onFailed(int i) {
            super.onFailed(i);
            TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback = this.mLocalOnlyHotspotCallback;
            if (tranLocalOnlyHotspotCallback != null) {
                tranLocalOnlyHotspotCallback.onFailed(i);
            }
        }

        @Override
        public void onStarted(WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation) {
            super.onStarted(localOnlyHotspotReservation);
            TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback = this.mLocalOnlyHotspotCallback;
            if (tranLocalOnlyHotspotCallback != null) {
                tranLocalOnlyHotspotCallback.onStarted(localOnlyHotspotReservation);
            }
        }

        @Override
        public void onStopped() {
            super.onStopped();
            TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback = this.mLocalOnlyHotspotCallback;
            if (tranLocalOnlyHotspotCallback != null) {
                tranLocalOnlyHotspotCallback.onStopped();
            }
        }
    }

    public class TranAospSoftApCallback implements TranAospWifiManagerExt.TranSoftApCallback {
        TranWifiManager.TranSoftApCallback mTranSoftApCallback;

        public TranAospSoftApCallback(TranWifiManager.TranSoftApCallback tranSoftApCallback) {
            this.mTranSoftApCallback = tranSoftApCallback;
        }

        @Override
        public void onStateChanged(int i, int i2) {
            TranWifiManager.TranSoftApCallback tranSoftApCallback = this.mTranSoftApCallback;
            if (tranSoftApCallback != null) {
                tranSoftApCallback.onStateChanged(i, i2);
            }
        }
    }

    public TranAospWifiManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mWifiManager = (WifiManager) context.getSystemService("wifi");
        this.mWifiExt = new TranAospWifiManagerExt(this.mContext);
    }

    private <T> T call(String str, Object... objArr) {
        try {
            Method method = TranDoorMan.getMethod(this.mWifiManager.getClass(), str, objArr == null ? null : getTypes(objArr));
            method.setAccessible(true);
            return (T) method.invoke(this.mWifiManager, objArr);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "methodName:" + str, e);
            return null;
        }
    }

    private TranAospWifiConfiguration get(TranWifiConfiguration tranWifiConfiguration) {
        if (tranWifiConfiguration == null) {
            return null;
        }
        TranAospWifiConfiguration tranAospWifiConfiguration = new TranAospWifiConfiguration();
        tranAospWifiConfiguration.SSID = tranWifiConfiguration.mSSID;
        tranAospWifiConfiguration.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        tranAospWifiConfiguration.networkId = tranWifiConfiguration.mNetworkId;
        tranAospWifiConfiguration.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        tranAospWifiConfiguration.allowedKeyManagement.set(4);
        return tranAospWifiConfiguration;
    }

    private Class<?>[] getTypes(Object... objArr) {
        return (Class[]) Arrays.stream(objArr).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return TranAospWifiManager.lambda$getTypes$0(obj);
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i) {
                return TranAospWifiManager.lambda$getTypes$1(i);
            }
        });
    }

    public static Class lambda$getTypes$0(Object obj) {
        if (obj != null) {
            return obj.getClass();
        }
        return null;
    }

    public static Class[] lambda$getTypes$1(int i) {
        return new Class[i];
    }

    @Override
    public void connect(TranWifiConfiguration tranWifiConfiguration, TranWifiManager.TranActionListener tranActionListener) {
        TranAospWifiConfiguration tranAospWifiConfiguration = get(tranWifiConfiguration);
        if (this.mWifiExt != null) {
            this.mWifiExt.connect(tranAospWifiConfiguration, tranActionListener != null ? new TranAospActionListener(tranActionListener) : null);
        }
    }

    @Override
    public void connectSsid(String str, TranWifiManager.TranActionListener tranActionListener) {
        if (this.mWifiExt != null) {
            this.mWifiExt.connectSsid(str, tranActionListener != null ? new TranAospActionListener(tranActionListener) : null);
        }
    }

    @Override
    public void forget(int i, TranWifiManager.TranActionListener tranActionListener) {
        if (this.mWifiExt != null) {
            this.mWifiExt.forget(i, tranActionListener != null ? new TranAospActionListener(tranActionListener) : null);
        }
    }

    @Override
    public String[] getFactoryMacAddresses() {
        return (String[]) call("getFactoryMacAddresses", new Object[0]);
    }

    @Override
    public int getNumAssociation(WifiConfiguration wifiConfiguration) {
        try {
            return TranDoorMan.getField(TranDoorMan.getClass("android.net.wifi.WifiConfiguration"), "numAssociation").getInt(wifiConfiguration);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "Exception when getNumAssociation:" + e.getMessage());
            return 0;
        }
    }

    @Override
    public Bundle getPrivilegedConfiguredNetworksToBundle() {
        try {
            Method method = TranDoorMan.getMethod(this.mWifiManager.getClass(), "getPrivilegedConfiguredNetworks", new Class[0]);
            method.setAccessible(true);
            ArrayList<? extends Parcelable> arrayList = (ArrayList) method.invoke(this.mWifiManager, null);
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList(TranWifiManager.WIFI_BUNDLE_KEY, arrayList);
            return bundle;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getPrivilegedConfiguredNetworksToJsonString fail " + th);
            return null;
        }
    }

    @Override
    public Bundle getPrivilegedConfiguredNetworksToJsonString() {
        try {
            Method method = TranDoorMan.getMethod(this.mWifiManager.getClass(), "getPrivilegedConfiguredNetworks", new Class[0]);
            method.setAccessible(true);
            ArrayList<? extends Parcelable> arrayList = (ArrayList) method.invoke(this.mWifiManager, null);
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList(TranWifiManager.WIFI_BUNDLE_KEY, arrayList);
            return bundle;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getPrivilegedConfiguredNetworksToJsonString fail " + th);
            return null;
        }
    }

    @Override
    public TranSoftApConfiguration getSoftApConfiguration() {
        try {
            Method method = TranDoorMan.getMethod(sApClassName, "getSsid", new Class[0]);
            method.setAccessible(true);
            Method method2 = TranDoorMan.getMethod(sApClassName, "getBssid", new Class[0]);
            method2.setAccessible(true);
            Method method3 = TranDoorMan.getMethod(sApClassName, "getPassphrase", new Class[0]);
            method3.setAccessible(true);
            Method method4 = TranDoorMan.getMethod(sApClassName, "isHiddenSsid", new Class[0]);
            method4.setAccessible(true);
            Method method5 = TranDoorMan.getMethod(sApClassName, "getBand", new Class[0]);
            method5.setAccessible(true);
            Method method6 = TranDoorMan.getMethod(sApClassName, "getChannel", new Class[0]);
            method6.setAccessible(true);
            Method method7 = TranDoorMan.getMethod(sApClassName, "getSecurityType", new Class[0]);
            method7.setAccessible(true);
            Method method8 = TranDoorMan.getMethod(sApClassName, "getMaxNumberOfClients", new Class[0]);
            method8.setAccessible(true);
            Method method9 = TranDoorMan.getMethod(sApClassName, "isAutoShutdownEnabled", new Class[0]);
            method9.setAccessible(true);
            Method method10 = TranDoorMan.getMethod(sApClassName, "getShutdownTimeoutMillis", new Class[0]);
            method10.setAccessible(true);
            Method method11 = TranDoorMan.getMethod(sApClassName, "isClientControlByUserEnabled", new Class[0]);
            method11.setAccessible(true);
            Method method12 = TranDoorMan.getMethod(sApClassName, "getBlockedClientList", new Class[0]);
            method12.setAccessible(true);
            Method method13 = TranDoorMan.getMethod(sApClassName, "getAllowedClientList", new Class[0]);
            method13.setAccessible(true);
            Method method14 = TranDoorMan.getMethod(this.mWifiManager.getClass(), "getSoftApConfiguration", new Class[0]);
            method14.setAccessible(true);
            Object objInvoke = method14.invoke(this.mWifiManager, null);
            if (objInvoke == null || !kwa.a(objInvoke)) {
                return null;
            }
            SoftApConfiguration softApConfigurationA = iwa.a(objInvoke);
            return new TranSoftApConfiguration((String) method.invoke(softApConfigurationA, null), (MacAddress) method2.invoke(softApConfigurationA, null), (String) method3.invoke(softApConfigurationA, null), ((Boolean) method4.invoke(softApConfigurationA, null)).booleanValue(), ((Integer) method5.invoke(softApConfigurationA, null)).intValue(), ((Integer) method6.invoke(softApConfigurationA, null)).intValue(), ((Integer) method7.invoke(softApConfigurationA, null)).intValue(), ((Integer) method8.invoke(softApConfigurationA, null)).intValue(), ((Boolean) method9.invoke(softApConfigurationA, null)).booleanValue(), ((Long) method10.invoke(softApConfigurationA, null)).longValue(), ((Boolean) method11.invoke(softApConfigurationA, null)).booleanValue(), (List) method12.invoke(softApConfigurationA, null), (List) method13.invoke(softApConfigurationA, null));
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getWifiApConfiguration fail " + th);
            return null;
        }
    }

    @Override
    public TranWifiConfiguration getWifiApConfiguration() {
        try {
            WifiConfiguration wifiConfiguration = (WifiConfiguration) call("getWifiApConfiguration", new Object[0]);
            if (wifiConfiguration == null) {
                return null;
            }
            TranWifiConfiguration tranWifiConfiguration = new TranWifiConfiguration();
            tranWifiConfiguration.mSSID = wifiConfiguration.SSID;
            tranWifiConfiguration.mHiddenSSID = wifiConfiguration.hiddenSSID;
            tranWifiConfiguration.mNetworkId = wifiConfiguration.networkId;
            tranWifiConfiguration.mPreSharedKey = wifiConfiguration.preSharedKey;
            return tranWifiConfiguration;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getWifiApConfiguration fail " + th);
            return null;
        }
    }

    @Override
    public int getWifiApState() {
        return ((Integer) call("getWifiApState", new Object[0])).intValue();
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
        try {
            Method method = TranDoorMan.getMethod(this.mWifiManager.getClass(), "isWifiApEnabled", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(this.mWifiManager, null);
            if (objInvoke != null && (objInvoke instanceof Boolean)) {
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "isWifiApEnabled fail " + th);
        }
        return false;
    }

    @Override
    public void registerSoftApCallback(TranWifiManager.TranSoftApCallback tranSoftApCallback) {
        if (this.mWifiExt != null) {
            this.mWifiExt.registerSoftApCallback(tranSoftApCallback != null ? new TranAospSoftApCallback(tranSoftApCallback) : null);
        }
    }

    @Override
    public void save(TranWifiConfiguration tranWifiConfiguration, TranWifiManager.TranActionListener tranActionListener) {
        TranAospWifiConfiguration tranAospWifiConfiguration = get(tranWifiConfiguration);
        if (this.mWifiExt != null) {
            this.mWifiExt.save(tranAospWifiConfiguration, tranActionListener != null ? new TranAospActionListener(tranActionListener) : null);
        }
    }

    @Override
    public void setDefaultCountryCode(String str) {
        try {
            Method method = TranDoorMan.getMethod(this.mWifiManager.getClass(), "setDefaultCountryCode", String.class);
            method.setAccessible(true);
            method.invoke(this.mWifiManager, str);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setDefaultCountryCode fail " + th);
        }
    }

    @Override
    public void setNumAssociation(WifiConfiguration wifiConfiguration, int i) {
        try {
            TranDoorMan.getField(TranDoorMan.getClass("android.net.wifi.WifiConfiguration"), "numAssociation").setInt(wifiConfiguration, i);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "Exception when setNumAssociation:" + e.getMessage());
        }
    }

    @Override
    public boolean setStaticIpConfiguration(TranWifiConfiguration tranWifiConfiguration, String str, String str2, String str3) {
        TranAospWifiConfiguration tranAospWifiConfiguration = get(tranWifiConfiguration);
        TranAospWifiManagerExt tranAospWifiManagerExt = this.mWifiExt;
        if (tranAospWifiManagerExt != null) {
            return tranAospWifiManagerExt.setStaticIpConfiguration(tranAospWifiConfiguration, str, str2, str3);
        }
        return false;
    }

    @Override
    public boolean setWifiApConfiguration(TranWifiConfiguration tranWifiConfiguration) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = tranWifiConfiguration.mSSID;
        wifiConfiguration.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        wifiConfiguration.networkId = tranWifiConfiguration.mNetworkId;
        wifiConfiguration.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        wifiConfiguration.allowedKeyManagement.set(4);
        try {
            return ((Boolean) call("setWifiApConfiguration", wifiConfiguration)).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "setWifiApConfiguration fail " + th);
            return false;
        }
    }

    @Override
    public void startLocalOnlyHotspot(TranSoftApConfiguration tranSoftApConfiguration, TranWifiManager.TranLocalOnlyHotspotCallback tranLocalOnlyHotspotCallback) {
        TranAospLocalOnlyHotspotCallback tranAospLocalOnlyHotspotCallback = new TranAospLocalOnlyHotspotCallback(tranLocalOnlyHotspotCallback);
        try {
            Class cls = TranDoorMan.getClass("android.net.wifi.SoftApConfiguration$Builder");
            Object objNewInstance = cls.newInstance();
            int i = Build.VERSION.SDK_INT;
            if (i < 33) {
                Field declaredField = cls.getDeclaredField("mSsid");
                declaredField.setAccessible(true);
                declaredField.set(objNewInstance, tranSoftApConfiguration.getSsid());
            } else {
                Method declaredMethod = Class.forName("android.net.wifi.WifiSsid").getDeclaredMethod("fromBytes", byte[].class);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, tranSoftApConfiguration.getSsid().getBytes());
                Field declaredField2 = cls.getDeclaredField("mWifiSsid");
                declaredField2.setAccessible(true);
                declaredField2.set(objNewInstance, objInvoke);
            }
            Field declaredField3 = cls.getDeclaredField("mPassphrase");
            declaredField3.setAccessible(true);
            declaredField3.set(objNewInstance, tranSoftApConfiguration.getPassphrase());
            Field declaredField4 = cls.getDeclaredField("mSecurityType");
            declaredField4.setAccessible(true);
            declaredField4.set(objNewInstance, Integer.valueOf(tranSoftApConfiguration.getSecurityType()));
            if (i > 30) {
                cls.getDeclaredMethod("setBand", Integer.TYPE).invoke(objNewInstance, Integer.valueOf(tranSoftApConfiguration.getBand()));
            } else {
                Field declaredField5 = cls.getDeclaredField("mBand");
                declaredField5.setAccessible(true);
                declaredField5.set(objNewInstance, Integer.valueOf(tranSoftApConfiguration.getBand()));
            }
            Field declaredField6 = cls.getDeclaredField("mAutoShutdownEnabled");
            declaredField6.setAccessible(true);
            declaredField6.set(objNewInstance, Boolean.valueOf(tranSoftApConfiguration.isAutoShutdownEnabled()));
            SoftApConfiguration softApConfigurationA = iwa.a(cls.getDeclaredMethod("build", null).invoke(objNewInstance, null));
            Method method = TranDoorMan.getMethod(this.mWifiManager.getClass(), "startLocalOnlyHotspot", jwa.a(), Executor.class, WifiManager.LocalOnlyHotspotCallback.class);
            method.setAccessible(true);
            method.invoke(this.mWifiManager, softApConfigurationA, null, tranAospLocalOnlyHotspotCallback);
        } catch (Throwable th) {
            TranSdkLog.printStackTrace(th);
            TranSdkLog.e(TAG, "startLocalOnlyHotspot fail: " + th);
            tranAospLocalOnlyHotspotCallback.onFailed(2);
        }
    }

    @Override
    public boolean startSoftAp(TranWifiConfiguration tranWifiConfiguration) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = tranWifiConfiguration.mSSID;
        wifiConfiguration.hiddenSSID = tranWifiConfiguration.mHiddenSSID;
        wifiConfiguration.networkId = tranWifiConfiguration.mNetworkId;
        wifiConfiguration.preSharedKey = tranWifiConfiguration.mPreSharedKey;
        wifiConfiguration.allowedKeyManagement.set(4);
        try {
            return ((Boolean) call("startSoftAp", wifiConfiguration)).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "startSoftAp fail " + th);
            return false;
        }
    }

    @Override
    public boolean stopSoftAp() {
        return ((Boolean) call("stopSoftAp", new Object[0])).booleanValue();
    }
}
