package com.transsion.hubsdk.aosp.graphics;

import android.graphics.Paint;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.graphics.ITranPaintAdapter;

public class TranAospPaint implements ITranPaintAdapter {
    private static final String TAG = "TranAospPaint";

    @Override
    public void setUnionRenderEffect(Paint paint, Object obj) {
        TranSdkLog.e(TAG, "setUnionRenderEffect not support");
    }
}
