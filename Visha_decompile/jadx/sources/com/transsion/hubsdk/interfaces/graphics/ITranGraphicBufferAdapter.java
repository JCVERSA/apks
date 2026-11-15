package com.transsion.hubsdk.interfaces.graphics;

import android.graphics.Rect;
import android.view.Display;
import android.view.SurfaceControl;
import com.transsion.hubsdk.api.graphics.TranGraphicBuffer;

public interface ITranGraphicBufferAdapter {
    TranGraphicBuffer createFromHardwareBuffer(Display display, int i, int i2);

    TranGraphicBuffer createFromHardwareBuffer(SurfaceControl surfaceControl, Rect rect);
}
