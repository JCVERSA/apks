package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.blankj.utilcode.util.a0;

public class BannerIndicator extends BaseIndicator {

    private float f40339d;

    public BannerIndicator(Context context) {
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
            if (z10) {
                float fH = this.f40340a.h();
                float f10 = this.f40339d;
                canvas.drawRoundRect(fE, 0.0f, fE + iK, fH, f10, f10, this.f40341b);
            } else {
                float fH2 = this.f40340a.h() / 2;
                canvas.drawCircle(fE + fH2, fH2, fH2, this.f40341b);
            }
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
        int i12 = iD - 1;
        setMeasuredDimension((this.f40340a.e() * i12) + this.f40340a.k() + (this.f40340a.h() * i12), this.f40340a.h());
    }

    public BannerIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BannerIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40339d = a0.a(16.0f);
    }
}
