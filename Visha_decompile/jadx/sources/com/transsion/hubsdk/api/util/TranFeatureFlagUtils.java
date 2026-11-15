package com.transsion.hubsdk.api.util;

import android.content.Context;
import com.transsion.hubsdk.aosp.util.TranAospFeatureFlagUtils;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.util.TranThubFeatureFlagUtils;
import com.transsion.hubsdk.interfaces.util.ITranFeatureFlagUtilsAdapter;

public class TranFeatureFlagUtils {
    private static final String TAG = "TranFeatureFlagUtils";
    private TranAospFeatureFlagUtils mAospService;
    private TranThubFeatureFlagUtils mThubService;

    public ITranFeatureFlagUtilsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubFeatureFlagUtils");
            TranThubFeatureFlagUtils tranThubFeatureFlagUtils = this.mThubService;
            if (tranThubFeatureFlagUtils != null) {
                return tranThubFeatureFlagUtils;
            }
            TranThubFeatureFlagUtils tranThubFeatureFlagUtils2 = new TranThubFeatureFlagUtils();
            this.mThubService = tranThubFeatureFlagUtils2;
            return tranThubFeatureFlagUtils2;
        }
        TranSdkLog.i(TAG, "TranAospFeatureFlagUtils");
        TranAospFeatureFlagUtils tranAospFeatureFlagUtils = this.mAospService;
        if (tranAospFeatureFlagUtils != null) {
            return tranAospFeatureFlagUtils;
        }
        TranAospFeatureFlagUtils tranAospFeatureFlagUtils2 = new TranAospFeatureFlagUtils();
        this.mAospService = tranAospFeatureFlagUtils2;
        return tranAospFeatureFlagUtils2;
    }

    public boolean isEnabled(Context context, String str) {
        return getService(TranVersion.Core.VERSION_33181).isEnabled(context, str);
    }
}
