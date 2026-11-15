package com.transsion.hubsdk.api.media.projection;

import android.content.Intent;
import com.transsion.hubsdk.aosp.media.projection.TranAospMediaProjectionManager;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.media.projection.TranThubMediaProjectionManager;
import com.transsion.hubsdk.interfaces.media.projection.ITranMediaProjectionManagerAdapter;

public class TranMediaProjectionManager {
    private TranAospMediaProjectionManager mAospService;
    private TranThubMediaProjectionManager mThubService;

    public Intent getPutIBindIntent(int i, String str, int i2, boolean z) {
        return getService(TranVersion.Core.VERSION_33141).getPutIBindIntent(i, str, i2, z);
    }

    public ITranMediaProjectionManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubMediaProjectionManager tranThubMediaProjectionManager = this.mThubService;
            if (tranThubMediaProjectionManager != null) {
                return tranThubMediaProjectionManager;
            }
            TranThubMediaProjectionManager tranThubMediaProjectionManager2 = new TranThubMediaProjectionManager();
            this.mThubService = tranThubMediaProjectionManager2;
            return tranThubMediaProjectionManager2;
        }
        TranAospMediaProjectionManager tranAospMediaProjectionManager = this.mAospService;
        if (tranAospMediaProjectionManager != null) {
            return tranAospMediaProjectionManager;
        }
        TranAospMediaProjectionManager tranAospMediaProjectionManager2 = new TranAospMediaProjectionManager();
        this.mAospService = tranAospMediaProjectionManager2;
        return tranAospMediaProjectionManager2;
    }
}
