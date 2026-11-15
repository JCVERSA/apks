package com.transsion.hubsdk.interfaces.graphics;

import android.graphics.Bitmap;
import android.graphics.RenderNode;

public interface ITranHardwareRendererManagerAdapter {
    Bitmap createHardwareBitmap(RenderNode renderNode, int i, int i2);
}
