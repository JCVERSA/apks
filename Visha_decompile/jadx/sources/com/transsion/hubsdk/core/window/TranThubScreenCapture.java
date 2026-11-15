package com.transsion.hubsdk.core.window;

import android.graphics.Rect;
import android.view.SurfaceControl;
import com.transsion.hubsdk.interfaces.window.ITranScreenCaptureAdapter;
import com.transsion.hubsdk.window.TranScreenCapture;

public class TranThubScreenCapture implements ITranScreenCaptureAdapter {
    private TranScreenCapture mScreenCapture = new TranScreenCapture();

    @Override
    public boolean containsSecureLayers(Object obj) {
        return this.mScreenCapture.containsSecureLayers(obj);
    }

    @Override
    public Object getCaptureArgs(SurfaceControl surfaceControl, Rect rect) {
        return this.mScreenCapture.getCaptureArgs(surfaceControl, rect);
    }
}
