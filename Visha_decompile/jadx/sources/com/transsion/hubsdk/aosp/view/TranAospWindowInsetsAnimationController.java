package com.transsion.hubsdk.aosp.view;

import android.graphics.Insets;
import android.view.WindowInsetsAnimationController;
import com.transsion.hubsdk.interfaces.view.ITranWindowInsetsAnimationControllerAdapter;

public class TranAospWindowInsetsAnimationController implements ITranWindowInsetsAnimationControllerAdapter {
    @Override
    public void setInsetsAndAlpha(WindowInsetsAnimationController windowInsetsAnimationController, Insets insets, float f, float f2, boolean z, boolean z2) {
        windowInsetsAnimationController.setInsetsAndAlpha(insets, f, f2);
    }
}
