package com.transsion.hubsdk.api.app;

import android.app.Activity;
import com.transsion.hubsdk.aosp.app.TranAospActivityClient;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActivityClient;
import com.transsion.hubsdk.interfaces.app.ITranActivityClientAdapter;

public class TranActivityClient {
    private static final String TAG = "TranActivityClient";
    private TranAospActivityClient mAospService;
    private TranThubActivityClient mThubService;

    public ITranActivityClientAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivityClient");
            TranThubActivityClient tranThubActivityClient = this.mThubService;
            if (tranThubActivityClient != null) {
                return tranThubActivityClient;
            }
            TranThubActivityClient tranThubActivityClient2 = new TranThubActivityClient();
            this.mThubService = tranThubActivityClient2;
            return tranThubActivityClient2;
        }
        TranSdkLog.i(TAG, "TranAospActivityClient");
        TranAospActivityClient tranAospActivityClient = this.mAospService;
        if (tranAospActivityClient != null) {
            return tranAospActivityClient;
        }
        TranAospActivityClient tranAospActivityClient2 = new TranAospActivityClient();
        this.mAospService = tranAospActivityClient2;
        return tranAospActivityClient2;
    }

    public void setBackToDynamicIsland(Activity activity, boolean z) {
        if (activity == null) {
            throw new IllegalArgumentException("activity cannot be null");
        }
        getService(TranVersion.Core.VERSION_33441).setBackToDynamicIsland(activity, z);
    }

    public void setRecoveryWhenError(Activity activity, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            if (activity == null) {
                throw new IllegalArgumentException("activity is null");
            }
            getService(TranVersion.Core.VERSION_33321).setRecoveryWhenError(activity, z);
        }
    }
}
