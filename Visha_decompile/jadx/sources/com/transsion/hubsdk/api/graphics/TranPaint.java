package com.transsion.hubsdk.api.graphics;

import android.graphics.Paint;
import com.transsion.hubsdk.aosp.graphics.TranAospPaint;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.graphics.TranThubPaint;
import com.transsion.hubsdk.interfaces.graphics.ITranPaintAdapter;

public class TranPaint {
    private static final String TAG = "TranPaint";
    private TranAospPaint mAospService;
    private TranThubPaint mThubService;

    public ITranPaintAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubPaint");
            TranThubPaint tranThubPaint = this.mThubService;
            if (tranThubPaint != null) {
                return tranThubPaint;
            }
            TranThubPaint tranThubPaint2 = new TranThubPaint();
            this.mThubService = tranThubPaint2;
            return tranThubPaint2;
        }
        TranSdkLog.i(TAG, "TranAospPaint");
        TranAospPaint tranAospPaint = this.mAospService;
        if (tranAospPaint != null) {
            return tranAospPaint;
        }
        TranAospPaint tranAospPaint2 = new TranAospPaint();
        this.mAospService = tranAospPaint2;
        return tranAospPaint2;
    }

    public void setUnionRenderEffect(Paint paint, Object obj) {
        if (paint == null) {
            throw new IllegalArgumentException("paint cannot be null");
        }
        getService(TranVersion.Core.VERSION_33431).setUnionRenderEffect(paint, obj);
    }
}
