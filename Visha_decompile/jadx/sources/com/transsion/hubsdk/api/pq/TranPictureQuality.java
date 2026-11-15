package com.transsion.hubsdk.api.pq;

import com.transsion.hubsdk.aosp.pq.TranAospPictureQuality;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.pq.TranThubPictureQuality;
import com.transsion.hubsdk.interfaces.pq.ITranPictureQualityAdapter;

public class TranPictureQuality {
    private static final String TAG = "TranPictureQuality";
    private TranAospPictureQuality mAospService;
    private TranThubPictureQuality mThubService;

    public void enableC3D(boolean z) {
        getService(TranVersion.Core.VERSION_33281).enableC3D(z);
    }

    public int getAALFunction() {
        return getService(TranVersion.Core.VERSION_33281).getAALFunction();
    }

    public int getGammaIndex() {
        return getService(TranVersion.Core.VERSION_33141).getGammaIndex();
    }

    public int getPictureMode() {
        return getService(TranVersion.Core.VERSION_33141).getPictureMode();
    }

    public ITranPictureQualityAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubPictureQuality");
            TranThubPictureQuality tranThubPictureQuality = this.mThubService;
            if (tranThubPictureQuality != null) {
                return tranThubPictureQuality;
            }
            TranThubPictureQuality tranThubPictureQuality2 = new TranThubPictureQuality();
            this.mThubService = tranThubPictureQuality2;
            return tranThubPictureQuality2;
        }
        TranSdkLog.i(TAG, "TranAospPictureQuality");
        TranAospPictureQuality tranAospPictureQuality = this.mAospService;
        if (tranAospPictureQuality != null) {
            return tranAospPictureQuality;
        }
        TranAospPictureQuality tranAospPictureQuality2 = new TranAospPictureQuality();
        this.mAospService = tranAospPictureQuality2;
        return tranAospPictureQuality2;
    }

    public void setAALFunction(int i) {
        getService(TranVersion.Core.VERSION_33281).setAALFunction(i);
    }

    public void setGammaIndex(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("invalid index");
        }
        if (this.mAospService == null) {
            this.mAospService = new TranAospPictureQuality();
        }
        this.mAospService.setGammaIndex(i);
    }

    public void setPictureMode(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("invalid picture mode");
        }
        getService(TranVersion.Core.VERSION_33141).setPictureMode(i);
    }

    public void setSmartBacklightStrength(int i) {
        getService(TranVersion.Core.VERSION_33281).setSmartBacklightStrength(i);
    }
}
