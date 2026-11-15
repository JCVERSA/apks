package com.transsion.hubsdk.api.app;

import com.transsion.hubsdk.aosp.app.TranAospAppGlobals;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubAppGlobals;
import com.transsion.hubsdk.interfaces.app.ITranAppGlobals;

public class TranAppGlobals {
    private static final String TAG = "TranAppGlobals";
    private TranAospAppGlobals mAospService;
    private TranThubAppGlobals mThubService;

    public int getIntCoreSetting(String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).getIntCoreSetting(str, i);
    }

    public ITranAppGlobals getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubAppGlobals");
            TranThubAppGlobals tranThubAppGlobals = this.mThubService;
            if (tranThubAppGlobals != null) {
                return tranThubAppGlobals;
            }
            TranThubAppGlobals tranThubAppGlobals2 = new TranThubAppGlobals();
            this.mThubService = tranThubAppGlobals2;
            return tranThubAppGlobals2;
        }
        TranSdkLog.i(TAG, "TranAospAppGlobals");
        TranAospAppGlobals tranAospAppGlobals = this.mAospService;
        if (tranAospAppGlobals != null) {
            return tranAospAppGlobals;
        }
        TranAospAppGlobals tranAospAppGlobals2 = new TranAospAppGlobals();
        this.mAospService = tranAospAppGlobals2;
        return tranAospAppGlobals2;
    }
}
