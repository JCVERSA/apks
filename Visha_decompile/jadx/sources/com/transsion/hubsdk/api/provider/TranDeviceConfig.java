package com.transsion.hubsdk.api.provider;

import com.transsion.hubsdk.aosp.provider.TranAospDeviceConfig;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.provider.TranThubDeviceConfig;
import com.transsion.hubsdk.interfaces.provider.ITranDeviceConfigAdapter;

public class TranDeviceConfig {
    private static final String TAG = "TranDeviceConfig";
    protected static TranAospDeviceConfig sAospService;
    protected static TranThubDeviceConfig sThubService;

    public static boolean getBoolean(String str, String str2, boolean z) {
        return getService(TranVersion.Core.VERSION_33201).getBoolean(str, str2, z);
    }

    public static int getInt(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33201).getInt(str, str2, i);
    }

    public static ITranDeviceConfigAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDeviceConfig");
            TranThubDeviceConfig tranThubDeviceConfig = sThubService;
            if (tranThubDeviceConfig != null) {
                return tranThubDeviceConfig;
            }
            TranThubDeviceConfig tranThubDeviceConfig2 = new TranThubDeviceConfig();
            sThubService = tranThubDeviceConfig2;
            return tranThubDeviceConfig2;
        }
        TranSdkLog.i(TAG, "TranAospDeviceConfig");
        TranAospDeviceConfig tranAospDeviceConfig = sAospService;
        if (tranAospDeviceConfig != null) {
            return tranAospDeviceConfig;
        }
        TranAospDeviceConfig tranAospDeviceConfig2 = new TranAospDeviceConfig();
        sAospService = tranAospDeviceConfig2;
        return tranAospDeviceConfig2;
    }
}
