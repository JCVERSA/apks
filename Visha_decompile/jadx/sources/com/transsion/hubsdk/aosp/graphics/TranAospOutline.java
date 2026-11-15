package com.transsion.hubsdk.aosp.graphics;

import android.graphics.Outline;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.graphics.ITranOutlineAdapter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class TranAospOutline implements ITranOutlineAdapter {
    private static final String TAG = "TranAospOutline";

    @Override
    public void setSmoothRoundRect(Outline outline, int i, int i2, int i3, int i4, float f, int i5) {
        TranSdkLog.w(TAG, "aosp not support setSmoothRoundRect [" + i + StringUtils.COMMA + i2 + ", " + i3 + ", " + i4 + "], radius=" + f);
    }

    @Override
    public boolean smoothcornerCubicEdgeEnabled() {
        return false;
    }
}
