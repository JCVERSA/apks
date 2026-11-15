package com.transsion.hubsdk.api.view;

import com.transsion.hubsdk.aosp.view.TranAospRenderNodeAnimator;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubRenderNodeAnimator;
import com.transsion.hubsdk.interfaces.view.ITranRenderNodeAnimatorAdapter;

public class TranRenderNodeAnimator {
    private static final String TAG = "TranRenderNodeAnimator";
    private TranAospRenderNodeAnimator mAospService;
    private TranThubRenderNodeAnimator mThubService;

    public void clearPromote() {
        getService(TranVersion.Core.VERSION_33461).clearPromote();
    }

    public ITranRenderNodeAnimatorAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubRenderNodeAnimator tranThubRenderNodeAnimator = this.mThubService;
            if (tranThubRenderNodeAnimator != null) {
                return tranThubRenderNodeAnimator;
            }
            TranThubRenderNodeAnimator tranThubRenderNodeAnimator2 = new TranThubRenderNodeAnimator();
            this.mThubService = tranThubRenderNodeAnimator2;
            return tranThubRenderNodeAnimator2;
        }
        TranSdkLog.i(TAG, "TranAospRenderNodeAnimator");
        TranAospRenderNodeAnimator tranAospRenderNodeAnimator = this.mAospService;
        if (tranAospRenderNodeAnimator != null) {
            return tranAospRenderNodeAnimator;
        }
        TranAospRenderNodeAnimator tranAospRenderNodeAnimator2 = new TranAospRenderNodeAnimator();
        this.mAospService = tranAospRenderNodeAnimator2;
        return tranAospRenderNodeAnimator2;
    }

    public void setInstance(Object obj) {
        getService(TranVersion.Core.VERSION_33461).setInstance(obj);
    }

    public void setPromote(boolean z) {
        getService(TranVersion.Core.VERSION_33461).setPromote(z);
    }
}
