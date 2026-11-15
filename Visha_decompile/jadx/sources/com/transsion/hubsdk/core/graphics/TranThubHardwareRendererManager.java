package com.transsion.hubsdk.core.graphics;

import android.graphics.Bitmap;
import android.graphics.RenderNode;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.graphics.TranHardwareRenderer;
import com.transsion.hubsdk.interfaces.graphics.ITranHardwareRendererManagerAdapter;

public class TranThubHardwareRendererManager implements ITranHardwareRendererManagerAdapter {
    private static final String TAG = "TranThubHardwareRendererManager";

    @Override
    public Bitmap createHardwareBitmap(final RenderNode renderNode, final int i, final int i2) {
        return (Bitmap) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return TranHardwareRenderer.createHardwareBitmap(renderNode, i, i2);
            }
        }, TAG);
    }
}
