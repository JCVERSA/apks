package com.transsion.hubsdk.api.tranthubutils;

import com.transsion.hubsdk.aosp.tranthubutils.TranAospAppProperties;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.tranthubutils.TranThubAppProperties;
import com.transsion.hubsdk.interfaces.tranthubutils.ITranAppPropertiesAdapter;

public class TranAppPropertiesManager {
    private static final String TAG = "TranAppPropertiesManager";
    private TranAospAppProperties mAospService;
    private TranThubAppProperties mThubService;

    public String get(String str) {
        return getService(TranVersion.Core.VERSION_33391).get(str);
    }

    public boolean getBoolean(String str, boolean z) {
        return getService(TranVersion.Core.VERSION_33391).getBoolean(str, z);
    }

    public ITranAppPropertiesAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAppProperties tranThubAppProperties = this.mThubService;
            if (tranThubAppProperties != null) {
                return tranThubAppProperties;
            }
            TranThubAppProperties tranThubAppProperties2 = new TranThubAppProperties();
            this.mThubService = tranThubAppProperties2;
            return tranThubAppProperties2;
        }
        TranSdkLog.i(TAG, "TranAospAppProperties");
        TranAospAppProperties tranAospAppProperties = this.mAospService;
        if (tranAospAppProperties != null) {
            return tranAospAppProperties;
        }
        TranAospAppProperties tranAospAppProperties2 = new TranAospAppProperties();
        this.mAospService = tranAospAppProperties2;
        return tranAospAppProperties2;
    }

    public void initialize(String str) {
        getService(TranVersion.Core.VERSION_33391).initialize(str);
    }
}
