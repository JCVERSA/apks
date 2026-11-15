package com.transsion.hubsdk.api.window;

import com.transsion.hubsdk.aosp.window.TranAospDisplayRotationManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.window.TranThubDisplayRotationManager;
import com.transsion.hubsdk.interfaces.window.ITranDisplayRotationAdapter;

public class TranDisplayRotationManager {
    private static final String TAG = "TranDisplayRotationManager";
    private TranAospDisplayRotationManager mAospService;
    private TranThubDisplayRotationManager mThubService;

    public ITranDisplayRotationAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDisplayRotationManager");
            TranThubDisplayRotationManager tranThubDisplayRotationManager = this.mThubService;
            if (tranThubDisplayRotationManager != null) {
                return tranThubDisplayRotationManager;
            }
            TranThubDisplayRotationManager tranThubDisplayRotationManager2 = new TranThubDisplayRotationManager();
            this.mThubService = tranThubDisplayRotationManager2;
            return tranThubDisplayRotationManager2;
        }
        TranSdkLog.i(TAG, "TranAospDisplayRotationManager");
        TranAospDisplayRotationManager tranAospDisplayRotationManager = this.mAospService;
        if (tranAospDisplayRotationManager != null) {
            return tranAospDisplayRotationManager;
        }
        TranAospDisplayRotationManager tranAospDisplayRotationManager2 = new TranAospDisplayRotationManager();
        this.mAospService = tranAospDisplayRotationManager2;
        return tranAospDisplayRotationManager2;
    }

    public void onNotifySaveRotation(int i) {
        getService(TranVersion.Core.VERSION_33301).onNotifySaveRotation(i);
    }
}
