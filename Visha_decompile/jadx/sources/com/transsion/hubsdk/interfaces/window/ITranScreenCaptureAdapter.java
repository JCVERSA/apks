package com.transsion.hubsdk.interfaces.window;

import android.graphics.Rect;
import android.view.SurfaceControl;

public interface ITranScreenCaptureAdapter {
    boolean containsSecureLayers(Object obj);

    Object getCaptureArgs(SurfaceControl surfaceControl, Rect rect);
}
