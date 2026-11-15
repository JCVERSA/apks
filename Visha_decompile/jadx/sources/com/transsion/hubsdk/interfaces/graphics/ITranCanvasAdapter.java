package com.transsion.hubsdk.interfaces.graphics;

import android.graphics.Canvas;
import android.graphics.Paint;

public interface ITranCanvasAdapter {
    boolean clipRRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, int i);

    void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, int i, Paint paint);

    void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint);

    boolean smoothcornerCubicEdgeEnabled();
}
