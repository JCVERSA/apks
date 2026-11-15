package com.transsion.hubsdk.core.provider;

import com.transsion.hubsdk.interfaces.provider.ITranDeviceConfigAdapter;
import com.transsion.hubsdk.provider.TranDeviceConfig;

public class TranThubDeviceConfig implements ITranDeviceConfigAdapter {
    private static final String TAG = "TranThubDeviceConfig";

    @Override
    public boolean getBoolean(String str, String str2, boolean z) {
        return TranDeviceConfig.getBoolean(str, str2, z);
    }

    @Override
    public int getInt(String str, String str2, int i) {
        return TranDeviceConfig.getInt(str, str2, i);
    }
}
