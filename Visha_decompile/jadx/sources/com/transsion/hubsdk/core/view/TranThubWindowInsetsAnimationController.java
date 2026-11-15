package com.transsion.hubsdk.core.view;

import android.graphics.Insets;
import android.view.WindowInsetsAnimationController;
import com.transsion.hubsdk.interfaces.view.ITranWindowInsetsAnimationControllerAdapter;
import com.transsion.hubsdk.view.TranWindowInsetsAnimationController;

public class TranThubWindowInsetsAnimationController implements ITranWindowInsetsAnimationControllerAdapter {
    private TranWindowInsetsAnimationController mTranWindowInsetsAnimationController;

    private TranWindowInsetsAnimationController getTranWindowInsetsAnimationControllerImpl() {
        if (this.mTranWindowInsetsAnimationController == null) {
            this.mTranWindowInsetsAnimationController = new TranWindowInsetsAnimationController();
        }
        return this.mTranWindowInsetsAnimationController;
    }

    @Override
    public void setInsetsAndAlpha(WindowInsetsAnimationController windowInsetsAnimationController, Insets insets, float f, float f2, boolean z, boolean z2) {
        getTranWindowInsetsAnimationControllerImpl().setInsetsAndAlpha(windowInsetsAnimationController, insets, f, f2, z, z2);
    }
}
