package com.transsion.hubsdk.api.content.pm;

import android.content.pm.ActivityInfo;
import com.transsion.hubsdk.aosp.content.pm.TranAospActivityInfo;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.pm.TranThubActivityInfo;
import com.transsion.hubsdk.interfaces.content.pm.ITranActivityInfoAdapter;

public class TranActivityInfo {
    private static final String TAG = "TranActivityInfo";
    private TranAospActivityInfo mAospService;
    private TranThubActivityInfo mThubService;

    public ITranActivityInfoAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActivityInfo");
            TranThubActivityInfo tranThubActivityInfo = this.mThubService;
            if (tranThubActivityInfo != null) {
                return tranThubActivityInfo;
            }
            TranThubActivityInfo tranThubActivityInfo2 = new TranThubActivityInfo();
            this.mThubService = tranThubActivityInfo2;
            return tranThubActivityInfo2;
        }
        TranSdkLog.i(TAG, "TranAospActivityInfo");
        TranAospActivityInfo tranAospActivityInfo = this.mAospService;
        if (tranAospActivityInfo != null) {
            return tranAospActivityInfo;
        }
        TranAospActivityInfo tranAospActivityInfo2 = new TranAospActivityInfo();
        this.mAospService = tranAospActivityInfo2;
        return tranAospActivityInfo2;
    }

    public boolean isResizeableMode(int i) {
        return getService(TranVersion.Core.VERSION_33141).isResizeableMode(i);
    }

    public int resizeMode(ActivityInfo activityInfo) {
        if (activityInfo != null) {
            return getService(TranVersion.Core.VERSION_33141).resizeMode(activityInfo);
        }
        throw new IllegalArgumentException("info cannot be null");
    }
}
