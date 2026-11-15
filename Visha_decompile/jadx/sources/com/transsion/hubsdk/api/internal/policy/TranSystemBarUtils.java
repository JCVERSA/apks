package com.transsion.hubsdk.api.internal.policy;

import android.content.Context;
import com.transsion.hubsdk.aosp.internal.policy.TranAospSystemBarUtils;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.policy.TranThubSystemBarUtils;
import com.transsion.hubsdk.interfaces.internal.policy.ITranSystemBarUtilsAdapter;

public class TranSystemBarUtils {
    private static final String TAG = "TranSystemBarUtils";
    private static TranAospSystemBarUtils sAospService;
    private static TranThubSystemBarUtils sThubService;

    public static ITranSystemBarUtilsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubSystemBarUtils");
            TranThubSystemBarUtils tranThubSystemBarUtils = sThubService;
            if (tranThubSystemBarUtils != null) {
                return tranThubSystemBarUtils;
            }
            TranThubSystemBarUtils tranThubSystemBarUtils2 = new TranThubSystemBarUtils();
            sThubService = tranThubSystemBarUtils2;
            return tranThubSystemBarUtils2;
        }
        TranSdkLog.i(TAG, "TranAospSystemBarUtils");
        TranAospSystemBarUtils tranAospSystemBarUtils = sAospService;
        if (tranAospSystemBarUtils != null) {
            return tranAospSystemBarUtils;
        }
        TranAospSystemBarUtils tranAospSystemBarUtils2 = new TranAospSystemBarUtils();
        sAospService = tranAospSystemBarUtils2;
        return tranAospSystemBarUtils2;
    }

    public static int getStatusBarHeight(Context context) {
        return getService(TranVersion.Core.VERSION_33211).getStatusBarHeight(context);
    }
}
