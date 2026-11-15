package com.transsion.hubsdk.api.graphics;

import android.graphics.Rect;
import android.view.Display;
import android.view.SurfaceControl;
import com.transsion.hubsdk.aosp.graphics.TranAospGraphicBuffer;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.graphics.TranThubGraphicBuffer;
import com.transsion.hubsdk.interfaces.graphics.ITranGraphicBufferAdapter;

public class TranGraphicBufferManager {
    private static final String TAG = "TranGraphicBufferManager";
    private TranAospGraphicBuffer mAospService;
    private TranThubGraphicBuffer mThubService;

    public TranGraphicBuffer createFromHardwareBuffer(Display display, int i, int i2) {
        if (display != null) {
            return getService(TranVersion.Core.VERSION_33181).createFromHardwareBuffer(display, i, i2);
        }
        throw new IllegalArgumentException("display cannot be null");
    }

    public ITranGraphicBufferAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubGraphicBuffer");
            TranThubGraphicBuffer tranThubGraphicBuffer = this.mThubService;
            if (tranThubGraphicBuffer != null) {
                return tranThubGraphicBuffer;
            }
            TranThubGraphicBuffer tranThubGraphicBuffer2 = new TranThubGraphicBuffer();
            this.mThubService = tranThubGraphicBuffer2;
            return tranThubGraphicBuffer2;
        }
        TranSdkLog.i(TAG, "TranAospGraphicBuffer");
        TranAospGraphicBuffer tranAospGraphicBuffer = this.mAospService;
        if (tranAospGraphicBuffer != null) {
            return tranAospGraphicBuffer;
        }
        TranAospGraphicBuffer tranAospGraphicBuffer2 = new TranAospGraphicBuffer();
        this.mAospService = tranAospGraphicBuffer2;
        return tranAospGraphicBuffer2;
    }

    public TranGraphicBuffer createFromHardwareBuffer(SurfaceControl surfaceControl, Rect rect) {
        if (rect != null) {
            return getService(TranVersion.Core.VERSION_33181).createFromHardwareBuffer(surfaceControl, rect);
        }
        throw new IllegalArgumentException("Rect cannot be null");
    }
}
