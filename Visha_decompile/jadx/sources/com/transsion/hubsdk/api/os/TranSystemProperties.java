package com.transsion.hubsdk.api.os;

import android.os.RemoteException;
import com.transsion.hubsdk.aosp.os.TranAospSystemProperties;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.os.TranThubSystemProperties;
import com.transsion.hubsdk.interfaces.os.ITranSystemPropertiesAdapter;

public class TranSystemProperties {
    private static final String TAG = "TranSystemProperties";
    protected static TranAospSystemProperties sAospService;
    protected static TranThubSystemProperties sThubService;

    @TranLevel(level = 0)
    public static String get(String str) {
        try {
            return getService(TranVersion.Core.VERSION_33181).get(str, "");
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMethod:" + e);
            return "";
        }
    }

    @TranLevel(level = 0)
    public static boolean getBoolean(String str, boolean z) {
        try {
            return getService(TranVersion.Core.VERSION_33181).getBoolean(str, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getBooleanMethod:" + e);
            return z;
        }
    }

    @TranLevel(level = 0)
    public static int getInt(String str, int i) {
        try {
            return getService(TranVersion.Core.VERSION_33181).getInt(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getIntMethod:" + e);
            return i;
        }
    }

    @TranLevel(level = 0)
    public static long getLong(String str, long j) {
        try {
            return getService(TranVersion.Core.VERSION_33181).getLong(str, j);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getLongMethod:" + e);
            return j;
        }
    }

    public static ITranSystemPropertiesAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubSystemProperties");
            TranThubSystemProperties tranThubSystemProperties = sThubService;
            if (tranThubSystemProperties != null) {
                return tranThubSystemProperties;
            }
            TranThubSystemProperties tranThubSystemProperties2 = new TranThubSystemProperties();
            sThubService = tranThubSystemProperties2;
            return tranThubSystemProperties2;
        }
        TranSdkLog.i(TAG, "TranAospSystemProperties");
        TranAospSystemProperties tranAospSystemProperties = sAospService;
        if (tranAospSystemProperties != null) {
            return tranAospSystemProperties;
        }
        TranAospSystemProperties tranAospSystemProperties2 = new TranAospSystemProperties();
        sAospService = tranAospSystemProperties2;
        return tranAospSystemProperties2;
    }

    @TranLevel(level = 1)
    public static void set(String str, String str2) {
        try {
            getService(TranVersion.Core.VERSION_33181).set(str, str2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setMethod:" + e);
        }
    }

    @TranLevel(level = 0)
    public static String get(String str, String str2) {
        try {
            return getService(TranVersion.Core.VERSION_33181).get(str, str2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getWithDefaultMethod:" + e);
            return str2;
        }
    }
}
