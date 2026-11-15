package com.warkiz.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

public class ArrowView extends View {

    private final int f58450a;

    private final int f58451b;

    private final Path f58452c;

    private final Paint f58453d;

    public ArrowView(Context context) {
        this(context, null);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        canvas.drawPath(this.f58452c, this.f58453d);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(this.f58450a, this.f58451b);
    }

    void setColor(int i10) {
        this.f58453d.setColor(i10);
        invalidate();
    }

    public ArrowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int iA = g.a(context, 12.0f);
        this.f58450a = iA;
        int iA2 = g.a(context, 7.0f);
        this.f58451b = iA2;
        Path path = new Path();
        this.f58452c = path;
        path.moveTo(0.0f, 0.0f);
        path.lineTo(iA, 0.0f);
        path.lineTo(iA / 2.0f, iA2);
        path.close();
        Paint paint = new Paint();
        this.f58453d = paint;
        paint.setAntiAlias(true);
        paint.setStrokeWidth(1.0f);
    }
}
