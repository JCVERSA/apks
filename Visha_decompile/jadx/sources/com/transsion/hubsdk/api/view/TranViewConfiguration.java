package com.transsion.hubsdk.api.view;

import com.transsion.hubsdk.aosp.view.TranAospViewConfiguration;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubViewConfiguration;
import com.transsion.hubsdk.interfaces.view.ITranViewConfigurationAdapter;

public class TranViewConfiguration {
    private static final String TAG = "TranViewConfiguration";
    private TranAospViewConfiguration mAospService;
    private TranThubViewConfiguration mThubService;

    public int getHoverTapSlop() {
        return getService(TranVersion.Core.VERSION_33311).getHoverTapSlop();
    }

    public int getHoverTapTimeout() {
        return getService(TranVersion.Core.VERSION_33311).getHoverTapTimeout();
    }

    public ITranViewConfigurationAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubViewConfiguration");
            TranThubViewConfiguration tranThubViewConfiguration = this.mThubService;
            if (tranThubViewConfiguration != null) {
                return tranThubViewConfiguration;
            }
            TranThubViewConfiguration tranThubViewConfiguration2 = new TranThubViewConfiguration();
            this.mThubService = tranThubViewConfiguration2;
            return tranThubViewConfiguration2;
        }
        TranSdkLog.i(TAG, "TranAospViewConfiguration");
        TranAospViewConfiguration tranAospViewConfiguration = this.mAospService;
        if (tranAospViewConfiguration != null) {
            return tranAospViewConfiguration;
        }
        TranAospViewConfiguration tranAospViewConfiguration2 = new TranAospViewConfiguration();
        this.mAospService = tranAospViewConfiguration2;
        return tranAospViewConfiguration2;
    }
}
