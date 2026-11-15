package com.transsion.hubsdk.api.app;

import com.transsion.hubsdk.aosp.app.TranAospUiModeManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubUiModeManager;
import com.transsion.hubsdk.interfaces.app.ITranUiModeManagerAdapter;

public class TranUiModeManager {
    private static final String TAG = "TranUiModeManager";
    private TranAospUiModeManager mAospService;
    private TranThubUiModeManager mThubService;

    public ITranUiModeManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubUiModeManager");
            TranThubUiModeManager tranThubUiModeManager = this.mThubService;
            if (tranThubUiModeManager != null) {
                return tranThubUiModeManager;
            }
            TranThubUiModeManager tranThubUiModeManager2 = new TranThubUiModeManager();
            this.mThubService = tranThubUiModeManager2;
            return tranThubUiModeManager2;
        }
        TranSdkLog.i(TAG, "TranAospUiModeManager");
        TranAospUiModeManager tranAospUiModeManager = this.mAospService;
        if (tranAospUiModeManager != null) {
            return tranAospUiModeManager;
        }
        TranAospUiModeManager tranAospUiModeManager2 = new TranAospUiModeManager();
        this.mAospService = tranAospUiModeManager2;
        return tranAospUiModeManager2;
    }

    @TranLevel(level = 1)
    public boolean setNightModeActivated(boolean z) {
        return getService(TranVersion.Core.VERSION_33181).setNightModeActivated(z);
    }
}
