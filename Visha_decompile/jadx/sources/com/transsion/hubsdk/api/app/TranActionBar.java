package com.transsion.hubsdk.api.app;

import android.app.ActionBar;
import com.transsion.hubsdk.aosp.app.TranAospActionBar;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubActionBar;
import com.transsion.hubsdk.interfaces.app.ITranActionBarAdapter;

public class TranActionBar {
    private static final String TAG = "TranActionBar";
    private TranAospActionBar mAospService;
    private TranThubActionBar mThubService;

    public ITranActionBarAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubActionBar");
            TranThubActionBar tranThubActionBar = this.mThubService;
            if (tranThubActionBar != null) {
                return tranThubActionBar;
            }
            TranThubActionBar tranThubActionBar2 = new TranThubActionBar();
            this.mThubService = tranThubActionBar2;
            return tranThubActionBar2;
        }
        TranSdkLog.i(TAG, "TranAospActionBar");
        TranAospActionBar tranAospActionBar = this.mAospService;
        if (tranAospActionBar != null) {
            return tranAospActionBar;
        }
        TranAospActionBar tranAospActionBar2 = new TranAospActionBar();
        this.mAospService = tranAospActionBar2;
        return tranAospActionBar2;
    }

    public void setShowHideAnimationEnabled(ActionBar actionBar, boolean z) {
        getService(TranVersion.Core.VERSION_33181).setShowHideAnimationEnabled(actionBar, z);
    }
}
