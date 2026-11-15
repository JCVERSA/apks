package com.transsion.hubsdk.interfaces.graphics;

import android.graphics.Outline;

public interface ITranOutlineAdapter {
    void setSmoothRoundRect(Outline outline, int i, int i2, int i3, int i4, float f, int i5);

    boolean smoothcornerCubicEdgeEnabled();
}
