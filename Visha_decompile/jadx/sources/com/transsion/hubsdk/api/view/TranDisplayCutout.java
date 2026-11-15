package com.transsion.hubsdk.api.view;

import android.view.DisplayCutout;
import com.transsion.hubsdk.aosp.view.TranAospDisplayCutout;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubDisplayCutout;
import com.transsion.hubsdk.interfaces.view.ITranDisplayCutoutAdapter;

public class TranDisplayCutout {
    private static final String TAG = "TranDisplayCutout";
    private TranAospDisplayCutout mAospService;
    private TranThubDisplayCutout mThubService;

    public ITranDisplayCutoutAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDisplayCutout");
            TranThubDisplayCutout tranThubDisplayCutout = this.mThubService;
            if (tranThubDisplayCutout != null) {
                return tranThubDisplayCutout;
            }
            TranThubDisplayCutout tranThubDisplayCutout2 = new TranThubDisplayCutout();
            this.mThubService = tranThubDisplayCutout2;
            return tranThubDisplayCutout2;
        }
        TranSdkLog.i(TAG, "TranAospDisplayCutout");
        TranAospDisplayCutout tranAospDisplayCutout = this.mAospService;
        if (tranAospDisplayCutout != null) {
            return tranAospDisplayCutout;
        }
        TranAospDisplayCutout tranAospDisplayCutout2 = new TranAospDisplayCutout();
        this.mAospService = tranAospDisplayCutout2;
        return tranAospDisplayCutout2;
    }

    public boolean isBoundsEmpty(DisplayCutout displayCutout) {
        if (displayCutout != null) {
            return getService(TranVersion.Core.VERSION_33311).isBoundsEmpty(displayCutout);
        }
        throw new IllegalArgumentException("cutout is null");
    }
}
