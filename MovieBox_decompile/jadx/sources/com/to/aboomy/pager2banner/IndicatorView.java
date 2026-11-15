package com.to.aboomy.pager2banner;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

public class IndicatorView extends View implements a {

    private final Interpolator f40729a;

    private Interpolator f40730b;

    private Path f40731c;

    private float f40732d;

    private int f40733e;

    private int f40734f;

    private int f40735g;

    private int f40736h;

    private final Paint f40737i;

    private final RectF f40738j;

    private RelativeLayout.LayoutParams f40739k;

    private int f40740l;

    private float f40741m;

    private float f40742n;

    private float f40743o;

    private float f40744p;

    private float f40745q;

    public IndicatorView(Context context) {
        this(context, null);
    }

    private int a(float f10) {
        return (int) (f10 * getContext().getResources().getDisplayMetrics().density);
    }

    private void b(Canvas canvas, float f10) {
        g(canvas, f10);
        if (this.f40731c == null) {
            this.f40731c = new Path();
        }
        if (this.f40730b == null) {
            this.f40730b = new AccelerateInterpolator();
        }
        float fH = h(this.f40733e);
        float fH2 = h((this.f40733e + 1) % this.f40734f) - fH;
        float interpolation = (this.f40730b.getInterpolation(this.f40732d) * fH2) + fH;
        float fI = fH + (fH2 * i());
        float ratioSelectedRadius = getRatioSelectedRadius();
        float f11 = this.f40743o * 0.57f;
        float f12 = this.f40744p * f11;
        float fI2 = ((f12 - ratioSelectedRadius) * i()) + ratioSelectedRadius;
        float interpolation2 = f12 + ((ratioSelectedRadius - f12) * this.f40730b.getInterpolation(this.f40732d));
        float fI3 = (this.f40743o - f11) * i();
        float interpolation3 = (this.f40743o - f11) * this.f40730b.getInterpolation(this.f40732d);
        this.f40737i.setColor(this.f40736h);
        float f13 = this.f40743o;
        this.f40738j.set(interpolation - fI2, (f10 - f13) + fI3, interpolation + fI2, (f13 + f10) - fI3);
        canvas.drawRoundRect(this.f40738j, fI2, fI2, this.f40737i);
        float f14 = (f10 - f11) - interpolation3;
        float f15 = f11 + f10 + interpolation3;
        this.f40738j.set(fI - interpolation2, f14, fI + interpolation2, f15);
        canvas.drawRoundRect(this.f40738j, interpolation2, interpolation2, this.f40737i);
        this.f40731c.reset();
        this.f40731c.moveTo(fI, f10);
        this.f40731c.lineTo(fI, f14);
        float f16 = ((interpolation - fI) / 2.0f) + fI;
        this.f40731c.quadTo(f16, f10, interpolation, (f10 - this.f40743o) + fI3);
        this.f40731c.lineTo(interpolation, (this.f40743o + f10) - fI3);
        this.f40731c.quadTo(f16, f10, fI, f15);
        this.f40731c.close();
        canvas.drawPath(this.f40731c, this.f40737i);
    }

    private void c(Canvas canvas, float f10) {
        g(canvas, f10);
        float fI = i();
        float fH = h(this.f40733e);
        float fH2 = h((this.f40733e + 1) % this.f40734f);
        float ratioRadius = getRatioRadius();
        float f11 = this.f40743o;
        float f12 = this.f40744p * f11;
        float f13 = (f12 - ratioRadius) * fI;
        float f14 = f12 - f13;
        float f15 = ratioRadius + f13;
        float f16 = (f11 - this.f40741m) * fI;
        this.f40737i.setColor(this.f40736h);
        if (fI < 0.99f) {
            RectF rectF = this.f40738j;
            rectF.set(fH - f14, (f10 - f11) + f16, fH + f14, (f11 + f10) - f16);
            canvas.drawRoundRect(this.f40738j, f14, f14, this.f40737i);
        }
        if (fI > 0.1f) {
            float f17 = this.f40741m;
            float f18 = f10 + f17 + f16;
            RectF rectF2 = this.f40738j;
            rectF2.set(fH2 - f15, (f10 - f17) - f16, fH2 + f15, f18);
            canvas.drawRoundRect(this.f40738j, f15, f15, this.f40737i);
        }
    }

    private void d(Canvas canvas, float f10) {
        g(canvas, f10);
        float fH = h(this.f40733e);
        float fH2 = h((this.f40733e + 1) % this.f40734f);
        float ratioSelectedRadius = getRatioSelectedRadius();
        float f11 = fH - ratioSelectedRadius;
        float f12 = fH + ratioSelectedRadius;
        float f13 = fH2 - ratioSelectedRadius;
        float fI = f11 + ((f13 - f11) * i());
        float fI2 = f12 + (((fH2 + ratioSelectedRadius) - f12) * i());
        RectF rectF = this.f40738j;
        float f14 = this.f40743o;
        rectF.set(fI, f10 - f14, fI2, f10 + f14);
        this.f40737i.setColor(this.f40736h);
        RectF rectF2 = this.f40738j;
        float f15 = this.f40743o;
        canvas.drawRoundRect(rectF2, f15, f15, this.f40737i);
    }

    private void e(Canvas canvas, float f10) {
        float fMax;
        float fMin;
        g(canvas, f10);
        float fH = h(this.f40733e);
        float ratioSelectedRadius = getRatioSelectedRadius();
        float f11 = fH - ratioSelectedRadius;
        float f12 = fH + ratioSelectedRadius;
        float fI = i();
        float fMax2 = this.f40745q + (Math.max(getRatioRadius(), ratioSelectedRadius) * 2.0f);
        int i10 = this.f40733e;
        if ((i10 + 1) % this.f40734f == 0) {
            float f13 = fMax2 * (-i10);
            fMax = f11 + Math.max(f13 * fI * 2.0f, f13);
            fMin = Math.min(f13 * (fI - 0.5f) * 2.0f, 0.0f);
        } else {
            fMax = f11 + Math.max((fI - 0.5f) * fMax2 * 2.0f, 0.0f);
            fMin = Math.min(fI * fMax2 * 2.0f, fMax2);
        }
        float f14 = f12 + fMin;
        RectF rectF = this.f40738j;
        float f15 = this.f40743o;
        rectF.set(fMax, f10 - f15, f14, f10 + f15);
        this.f40737i.setColor(this.f40736h);
        RectF rectF2 = this.f40738j;
        float f16 = this.f40743o;
        canvas.drawRoundRect(rectF2, f16, f16, this.f40737i);
    }

    private void f(Canvas canvas, float f10) {
        float fI = i();
        float ratioSelectedRadius = getRatioSelectedRadius();
        float ratioRadius = getRatioRadius();
        float f11 = ratioSelectedRadius - ratioRadius;
        float f12 = f11 * fI;
        int i10 = (this.f40733e + 1) % this.f40734f;
        boolean z10 = i10 == 0;
        this.f40737i.setColor(this.f40735g);
        for (int i11 = 0; i11 < this.f40734f; i11++) {
            float fH = h(i11);
            if (z10) {
                fH += f12;
            }
            float f13 = fH - ratioRadius;
            float f14 = this.f40741m;
            float f15 = f10 - f14;
            float f16 = fH + ratioRadius;
            float f17 = f10 + f14;
            if (this.f40733e + 1 <= i11) {
                this.f40738j.set(f13 + f11, f15, f16 + f11, f17);
            } else {
                this.f40738j.set(f13, f15, f16, f17);
            }
            RectF rectF = this.f40738j;
            float f18 = this.f40741m;
            canvas.drawRoundRect(rectF, f18, f18, this.f40737i);
        }
        this.f40737i.setColor(this.f40736h);
        if (fI < 0.99f) {
            float fH2 = h(this.f40733e) - ratioSelectedRadius;
            if (z10) {
                fH2 += f12;
            }
            RectF rectF2 = this.f40738j;
            float f19 = this.f40743o;
            rectF2.set(fH2, f10 - f19, (((ratioSelectedRadius * 2.0f) + fH2) + f11) - f12, f10 + f19);
            RectF rectF3 = this.f40738j;
            float f20 = this.f40743o;
            canvas.drawRoundRect(rectF3, f20, f20, this.f40737i);
        }
        if (fI > 0.1f) {
            float fH3 = h(i10) + ratioSelectedRadius;
            if (z10) {
                f11 = f12;
            }
            float f21 = fH3 + f11;
            RectF rectF4 = this.f40738j;
            float f22 = this.f40743o;
            rectF4.set((f21 - (ratioSelectedRadius * 2.0f)) - f12, f10 - f22, f21, f10 + f22);
            RectF rectF5 = this.f40738j;
            float f23 = this.f40743o;
            canvas.drawRoundRect(rectF5, f23, f23, this.f40737i);
        }
    }

    private void g(Canvas canvas, float f10) {
        this.f40737i.setColor(this.f40735g);
        for (int i10 = 0; i10 < this.f40734f; i10++) {
            float fH = h(i10);
            float ratioRadius = getRatioRadius();
            float f11 = this.f40741m;
            this.f40738j.set(fH - ratioRadius, f10 - f11, fH + ratioRadius, f11 + f10);
            RectF rectF = this.f40738j;
            float f12 = this.f40741m;
            canvas.drawRoundRect(rectF, f12, f12, this.f40737i);
        }
    }

    private float getRatioRadius() {
        return this.f40741m * this.f40742n;
    }

    private float getRatioSelectedRadius() {
        return this.f40743o * this.f40744p;
    }

    private float h(int i10) {
        float ratioRadius = getRatioRadius();
        float fMax = Math.max(ratioRadius, getRatioSelectedRadius());
        return getPaddingLeft() + fMax + (((fMax * 2.0f) + this.f40745q) * i10) + (this.f40740l == 3 ? 0.0f : (fMax - ratioRadius) / 2.0f);
    }

    private float i() {
        return this.f40729a.getInterpolation(this.f40732d);
    }

    private int j(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            return (int) ((Math.max(getRatioSelectedRadius(), getRatioRadius()) * 2.0f) + getPaddingTop() + getPaddingBottom());
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private int k(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE && mode != 0) {
            if (mode != 1073741824) {
                return 0;
            }
            return size;
        }
        float ratioSelectedRadius = getRatioSelectedRadius();
        float ratioRadius = getRatioRadius();
        float fMax = Math.max(ratioSelectedRadius, ratioRadius) * 2.0f;
        int i11 = this.f40734f;
        return (int) ((fMax * i11) + ((i11 - 1) * this.f40745q) + (ratioSelectedRadius - ratioRadius) + getPaddingLeft() + getPaddingRight());
    }

    @Override
    public RelativeLayout.LayoutParams getParams() {
        if (this.f40739k == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            this.f40739k = layoutParams;
            layoutParams.addRule(12);
            this.f40739k.addRule(14);
            this.f40739k.bottomMargin = a(10.0f);
        }
        return this.f40739k;
    }

    @Override
    public void initIndicatorCount(int i10, int i11) {
        this.f40734f = i10;
        setVisibility(i10 > 1 ? 0 : 8);
        requestLayout();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f40734f == 0) {
            return;
        }
        float height = (getHeight() / 2.0f) + 0.5f;
        int i10 = this.f40740l;
        if (i10 == 0) {
            d(canvas, height);
            return;
        }
        if (i10 == 1) {
            e(canvas, height);
            return;
        }
        if (i10 == 2) {
            b(canvas, height);
        } else if (i10 == 3) {
            f(canvas, height);
        } else if (i10 == 4) {
            c(canvas, height);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(k(i10), j(i11));
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        this.f40733e = i10;
        this.f40732d = f10;
        invalidate();
    }

    public IndicatorView setIndicatorColor(int i10) {
        this.f40735g = i10;
        return this;
    }

    public IndicatorView setIndicatorRadius(float f10) {
        int iA = a(f10);
        if (this.f40741m == this.f40743o) {
            this.f40743o = iA;
        }
        this.f40741m = iA;
        return this;
    }

    public IndicatorView setIndicatorRatio(float f10) {
        if (this.f40742n == this.f40744p) {
            this.f40744p = f10;
        }
        this.f40742n = f10;
        return this;
    }

    public IndicatorView setIndicatorSelectedRadius(float f10) {
        this.f40743o = a(f10);
        return this;
    }

    public IndicatorView setIndicatorSelectedRatio(float f10) {
        this.f40744p = f10;
        return this;
    }

    public IndicatorView setIndicatorSelectorColor(int i10) {
        this.f40736h = i10;
        return this;
    }

    public IndicatorView setIndicatorSpacing(float f10) {
        this.f40745q = a(f10);
        return this;
    }

    public IndicatorView setIndicatorStyle(int i10) {
        this.f40740l = i10;
        return this;
    }

    public IndicatorView setParams(RelativeLayout.LayoutParams layoutParams) {
        this.f40739k = layoutParams;
        return this;
    }

    public IndicatorView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IndicatorView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40729a = new DecelerateInterpolator();
        this.f40735g = -7829368;
        this.f40736h = -1;
        this.f40741m = a(3.5f);
        this.f40742n = 1.0f;
        this.f40743o = a(3.5f);
        this.f40744p = 1.0f;
        this.f40745q = a(10.0f);
        this.f40738j = new RectF();
        this.f40737i = new Paint(1);
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
    }

    @Override
    public void onPageSelected(int i10) {
    }
}
