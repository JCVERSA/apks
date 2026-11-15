package com.app.hubert.guide.model;

import android.graphics.RectF;
import android.view.View;

public interface HighLight {

    public enum Shape {
        CIRCLE,
        RECTANGLE,
        OVAL,
        ROUND_RECTANGLE
    }

    Shape a();

    RectF b(View view);

    int c();

    b getOptions();

    float getRadius();
}
