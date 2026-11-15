package com.transsion.hubsdk.core.graphics;

import android.graphics.Rect;
import android.view.Display;
import android.view.SurfaceControl;
import com.transsion.hubsdk.aosp.graphics.TranAospGraphicBuffer;
import com.transsion.hubsdk.graphics.TranGraphicBuffer;
import com.transsion.hubsdk.interfaces.graphics.ITranGraphicBufferAdapter;

public class TranThubGraphicBuffer implements ITranGraphicBufferAdapter {
    private TranGraphicBuffer mService = new TranGraphicBuffer();

    @Override
    public com.transsion.hubsdk.api.graphics.TranGraphicBuffer createFromHardwareBuffer(Display display, int i, int i2) {
        TranGraphicBuffer tranGraphicBuffer = this.mService;
        if (tranGraphicBuffer == null) {
            return null;
        }
        TranGraphicBuffer tranGraphicBufferCreateFromHardwareBuffer = tranGraphicBuffer.createFromHardwareBuffer(display, i, i2);
        com.transsion.hubsdk.api.graphics.TranGraphicBuffer tranGraphicBuffer2 = new com.transsion.hubsdk.api.graphics.TranGraphicBuffer();
        tranGraphicBuffer2.setWidth(tranGraphicBufferCreateFromHardwareBuffer.getWidth());
        tranGraphicBuffer2.setHeight(tranGraphicBufferCreateFromHardwareBuffer.getHeight());
        return tranGraphicBuffer2;
    }

    @Override
    public com.transsion.hubsdk.api.graphics.TranGraphicBuffer createFromHardwareBuffer(SurfaceControl surfaceControl, Rect rect) {
        return new TranAospGraphicBuffer().createFromHardwareBuffer(surfaceControl, rect);
    }
}
