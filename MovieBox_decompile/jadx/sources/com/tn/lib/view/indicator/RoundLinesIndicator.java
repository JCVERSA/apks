package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.Nullable;

public class RoundLinesIndicator extends BaseIndicator {
    public RoundLinesIndicator(Context context) {
        this(context, null);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f40340a.d() <= 1) {
            return;
        }
        this.f40341b.setColor(this.f40340a.g());
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, canvas.getWidth(), this.f40340a.c()), this.f40340a.i(), this.f40340a.i(), this.f40341b);
        this.f40341b.setColor(this.f40340a.j());
        int iA = this.f40340a.a() * this.f40340a.k();
        canvas.drawRoundRect(new RectF(iA, 0.0f, iA + this.f40340a.k(), this.f40340a.c()), this.f40340a.i(), this.f40340a.i(), this.f40341b);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int iD = this.f40340a.d();
        if (iD <= 1) {
            return;
        }
        setMeasuredDimension(this.f40340a.k() * iD, this.f40340a.c());
    }

    public RoundLinesIndicator(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundLinesIndicator(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40341b.setStyle(Paint.Style.FILL);
    }
}
