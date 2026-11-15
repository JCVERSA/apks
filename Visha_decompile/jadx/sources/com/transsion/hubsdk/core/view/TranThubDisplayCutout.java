package com.transsion.hubsdk.core.view;

import android.view.DisplayCutout;
import com.transsion.hubsdk.interfaces.view.ITranDisplayCutoutAdapter;
import com.transsion.hubsdk.view.TranDisplayCutout;

public class TranThubDisplayCutout implements ITranDisplayCutoutAdapter {
    private TranDisplayCutout mTranDisplayCutout = new TranDisplayCutout();

    @Override
    public boolean isBoundsEmpty(DisplayCutout displayCutout) {
        TranDisplayCutout tranDisplayCutout = this.mTranDisplayCutout;
        if (tranDisplayCutout != null) {
            return tranDisplayCutout.isBoundsEmpty(displayCutout);
        }
        return false;
    }
}
