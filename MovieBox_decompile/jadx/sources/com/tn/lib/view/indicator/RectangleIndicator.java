package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;

public class RectangleIndicator extends BaseIndicator {

    RectF f40348d;

    public RectangleIndicator(Context context) {
        this(context, null);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iD = this.f40340a.d();
        if (iD <= 1) {
            return;
        }
        int i10 = 0;
        float fE = 0.0f;
        while (i10 < iD) {
            this.f40341b.setColor(this.f40340a.a() == i10 ? this.f40340a.j() : this.f40340a.g());
            int iK = this.f40340a.a() == i10 ? this.f40340a.k() : this.f40340a.h();
            this.f40348d.set(fE, 0.0f, iK + fE, this.f40340a.c());
            fE += iK + this.f40340a.e();
            canvas.drawRoundRect(this.f40348d, this.f40340a.i(), this.f40340a.i(), this.f40341b);
            i10++;
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int iD = this.f40340a.d();
        if (iD <= 1) {
            return;
        }
        int i12 = iD - 1;
        setMeasuredDimension((this.f40340a.e() * i12) + (this.f40340a.h() * i12) + this.f40340a.k(), this.f40340a.c());
    }

    public RectangleIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RectangleIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40348d = new RectF();
    }
}
