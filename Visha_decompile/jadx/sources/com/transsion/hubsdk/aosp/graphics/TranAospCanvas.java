package com.transsion.hubsdk.aosp.graphics;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.graphics.ITranCanvasAdapter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class TranAospCanvas implements ITranCanvasAdapter {
    private static final String TAG = "TranAospCanvas";

    @Override
    public boolean clipRRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, int i) {
        return false;
    }

    @Override
    public void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        TranSdkLog.w(TAG, "aosp not support drawSmoothRoundRect [" + f + StringUtils.COMMA + f2 + ", " + f3 + ", " + f4 + "], radius=" + f5);
    }

    @Override
    public boolean smoothcornerCubicEdgeEnabled() {
        return false;
    }

    @Override
    public void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, int i, Paint paint) {
        TranSdkLog.w(TAG, "aosp not support drawSmoothRoundRect [" + f + StringUtils.COMMA + f2 + ", " + f3 + ", " + f4 + "], cornerFlags=" + i + ", radius=" + f5);
    }
}
