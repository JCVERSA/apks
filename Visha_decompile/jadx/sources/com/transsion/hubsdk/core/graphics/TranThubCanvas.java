package com.transsion.hubsdk.core.graphics;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.graphics.TranCanvas;
import com.transsion.hubsdk.interfaces.graphics.ITranCanvasAdapter;

public class TranThubCanvas implements ITranCanvasAdapter {
    private static final String TAG = "TranThubCanvas";
    private TranCanvas mService = new TranCanvas();

    @Override
    public boolean clipRRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, int i) {
        TranCanvas tranCanvas = this.mService;
        if (tranCanvas != null) {
            return tranCanvas.clipRRect(canvas, f, f2, f3, f4, f5, i);
        }
        TranSdkLog.e(TAG, "cannot get core");
        return false;
    }

    @Override
    public void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        TranCanvas tranCanvas = this.mService;
        if (tranCanvas != null) {
            tranCanvas.drawSmoothRoundRect(canvas, f, f2, f3, f4, f5, paint);
        } else {
            TranSdkLog.e(TAG, "cannot get core");
        }
    }

    @Override
    public boolean smoothcornerCubicEdgeEnabled() {
        TranCanvas tranCanvas = this.mService;
        if (tranCanvas != null) {
            return tranCanvas.smoothcornerCubicEdgeEnabled();
        }
        return false;
    }

    @Override
    public void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, int i, Paint paint) {
        TranCanvas tranCanvas = this.mService;
        if (tranCanvas != null) {
            tranCanvas.drawSmoothRoundRect(canvas, f, f2, f3, f4, f5, i, paint);
        } else {
            TranSdkLog.e(TAG, "cannot get core");
        }
    }
}
