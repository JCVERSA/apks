package com.transsion.hubsdk.core.hardware.display;

import android.view.Display;
import com.transsion.hubsdk.hardware.display.TranDisplayManagerGlobal;
import com.transsion.hubsdk.interfaces.hardware.display.ITranDisplayManagerGlobalAdapter;

public class TranThubDisplayManagerGlobalAdapter implements ITranDisplayManagerGlobalAdapter {
    private TranDisplayManagerGlobal mDisplayManagerGlobal = new TranDisplayManagerGlobal();

    @Override
    public Display getRealDisplay(int i) {
        TranDisplayManagerGlobal tranDisplayManagerGlobal = this.mDisplayManagerGlobal;
        if (tranDisplayManagerGlobal != null) {
            return tranDisplayManagerGlobal.getRealDisplay(i);
        }
        return null;
    }
}
