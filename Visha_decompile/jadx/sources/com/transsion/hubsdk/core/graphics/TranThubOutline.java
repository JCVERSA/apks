package com.transsion.hubsdk.core.graphics;

import android.graphics.Outline;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.graphics.TranOutline;
import com.transsion.hubsdk.interfaces.graphics.ITranOutlineAdapter;

public class TranThubOutline implements ITranOutlineAdapter {
    private static final String TAG = "TranThubOutline";
    private TranOutline mService = new TranOutline();

    @Override
    public void setSmoothRoundRect(Outline outline, int i, int i2, int i3, int i4, float f, int i5) {
        TranOutline tranOutline = this.mService;
        if (tranOutline != null) {
            tranOutline.setSmoothRoundRect(outline, i, i2, i3, i4, f, i5);
        } else {
            TranSdkLog.e(TAG, "cannot get core");
        }
    }

    @Override
    public boolean smoothcornerCubicEdgeEnabled() {
        TranOutline tranOutline = this.mService;
        if (tranOutline != null) {
            return tranOutline.smoothcornerCubicEdgeEnabled();
        }
        return false;
    }
}
