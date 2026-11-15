package com.transsion.hubsdk.api.view;

import android.graphics.Insets;
import android.view.WindowInsetsAnimationController;
import com.transsion.hubsdk.aosp.view.TranAospWindowInsetsAnimationController;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubWindowInsetsAnimationController;
import com.transsion.hubsdk.interfaces.view.ITranWindowInsetsAnimationControllerAdapter;

public class TranWindowInsetsAnimationController {
    private static final String TAG = TranViewRootImpl.class.getSimpleName();
    private TranAospWindowInsetsAnimationController mAospService;
    private TranThubWindowInsetsAnimationController mThubService;

    public ITranWindowInsetsAnimationControllerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubWindowInsetsAnimationController tranThubWindowInsetsAnimationController = this.mThubService;
            if (tranThubWindowInsetsAnimationController != null) {
                return tranThubWindowInsetsAnimationController;
            }
            TranThubWindowInsetsAnimationController tranThubWindowInsetsAnimationController2 = new TranThubWindowInsetsAnimationController();
            this.mThubService = tranThubWindowInsetsAnimationController2;
            return tranThubWindowInsetsAnimationController2;
        }
        TranSdkLog.i(TAG, "TranAospWindowInsetsAnimationController");
        TranAospWindowInsetsAnimationController tranAospWindowInsetsAnimationController = this.mAospService;
        if (tranAospWindowInsetsAnimationController != null) {
            return tranAospWindowInsetsAnimationController;
        }
        TranAospWindowInsetsAnimationController tranAospWindowInsetsAnimationController2 = new TranAospWindowInsetsAnimationController();
        this.mAospService = tranAospWindowInsetsAnimationController2;
        return tranAospWindowInsetsAnimationController2;
    }

    public void setInsetsAndAlpha(WindowInsetsAnimationController windowInsetsAnimationController, Insets insets, float f, float f2, boolean z, boolean z2) {
        if (windowInsetsAnimationController == null) {
            throw new IllegalArgumentException("controller cannot be null");
        }
        getService(TranVersion.Core.VERSION_33421).setInsetsAndAlpha(windowInsetsAnimationController, insets, f, f2, z, z2);
    }
}
