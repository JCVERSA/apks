package com.transsion.hubsdk.api.internal.graphic;

import com.transsion.hubsdk.aosp.internal.graphic.TranAospDrawable;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.graphic.TranThubDrawable;
import com.transsion.hubsdk.interfaces.internal.graphic.ITranDrawableAdapter;

public class TranDrawable {
    private static final String TAG = "TranDrawable";
    private TranAospDrawable mAospService;
    private TranThubDrawable mThubService;

    public ITranDrawableAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDrawable");
            TranThubDrawable tranThubDrawable = this.mThubService;
            if (tranThubDrawable != null) {
                return tranThubDrawable;
            }
            TranThubDrawable tranThubDrawable2 = new TranThubDrawable();
            this.mThubService = tranThubDrawable2;
            return tranThubDrawable2;
        }
        TranSdkLog.i(TAG, "TranAospDrawable");
        TranAospDrawable tranAospDrawable = this.mAospService;
        if (tranAospDrawable != null) {
            return tranAospDrawable;
        }
        TranAospDrawable tranAospDrawable2 = new TranAospDrawable();
        this.mAospService = tranAospDrawable2;
        return tranAospDrawable2;
    }

    public void setBlurSaturation(Object obj, float f) {
        if (obj == null) {
            throw new IllegalArgumentException("drawable is null");
        }
        getService(TranVersion.Core.VERSION_33311).setBlurSaturation(obj, f);
    }
}
