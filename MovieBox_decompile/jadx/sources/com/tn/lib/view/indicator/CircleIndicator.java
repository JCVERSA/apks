package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;

public class CircleIndicator extends BaseIndicator {

    private int f40343d;

    private int f40344e;

    private int f40345f;

    public CircleIndicator(Context context) {
        this(context, null);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iD = this.f40340a.d();
        if (iD <= 1) {
            return;
        }
        float fE = 0.0f;
        int i10 = 0;
        while (i10 < iD) {
            boolean z10 = this.f40340a.a() == i10;
            Paint paint = this.f40341b;
            a aVar = this.f40340a;
            paint.setColor(z10 ? aVar.j() : aVar.g());
            a aVar2 = this.f40340a;
            int iK = z10 ? aVar2.k() : aVar2.h();
            float f10 = z10 ? this.f40344e : this.f40343d;
            canvas.drawCircle(fE + f10, this.f40345f, f10, this.f40341b);
            fE += iK + this.f40340a.e();
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
        this.f40343d = this.f40340a.h() / 2;
        int iK = this.f40340a.k() / 2;
        this.f40344e = iK;
        this.f40345f = Math.max(iK, this.f40343d);
        int i12 = iD - 1;
        setMeasuredDimension((this.f40340a.e() * i12) + this.f40340a.k() + (this.f40340a.h() * i12), Math.max(this.f40340a.h(), this.f40340a.k()));
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40343d = this.f40340a.h() / 2;
        this.f40344e = this.f40340a.k() / 2;
    }
}
