package com.transsion.hubsdk.core.app;

import com.transsion.hubsdk.app.TranAppGlobals;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranAppGlobals;

public class TranThubAppGlobals implements ITranAppGlobals {
    private static final String TAG = "TranThubAppGlobals";

    @Override
    public int getIntCoreSetting(String str, int i) {
        try {
            return TranAppGlobals.getIntCoreSetting(str, i);
        } catch (RuntimeException e) {
            TranSdkLog.e(TAG, "startDozing fail " + e);
            return 0;
        }
    }
}
