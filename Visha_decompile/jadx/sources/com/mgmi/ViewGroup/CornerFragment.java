package com.mgmi.ViewGroup;

import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;

public class CornerFragment extends FrameLayout {
    ViewOutlineProvider a;
    private float b;

    public void setRadius(float f) {
        this.b = f;
        if (f > 0.0f) {
            setOutlineProvider(this.a);
            setClipToOutline(true);
        } else {
            setOutlineProvider(null);
            setClipToOutline(false);
        }
    }
}
