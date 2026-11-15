package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.List;
import wy.b;
import xy.c;
import yy.a;

public class WrapPagerIndicator extends View implements c {

    private int f67242a;

    private int f67243b;

    private int f67244c;

    private float f67245d;

    private Interpolator f67246e;

    private Interpolator f67247f;

    private List f67248g;

    private Paint f67249h;

    private RectF f67250i;

    private boolean f67251j;

    public WrapPagerIndicator(Context context) {
        super(context);
        this.f67246e = new LinearInterpolator();
        this.f67247f = new LinearInterpolator();
        this.f67250i = new RectF();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f67249h = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f67242a = b.a(context, 6.0d);
        this.f67243b = b.a(context, 10.0d);
    }

    public Interpolator getEndInterpolator() {
        return this.f67247f;
    }

    public int getFillColor() {
        return this.f67244c;
    }

    public int getHorizontalPadding() {
        return this.f67243b;
    }

    public Paint getPaint() {
        return this.f67249h;
    }

    public float getRoundRadius() {
        return this.f67245d;
    }

    public Interpolator getStartInterpolator() {
        return this.f67246e;
    }

    public int getVerticalPadding() {
        return this.f67242a;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        this.f67249h.setColor(this.f67244c);
        RectF rectF = this.f67250i;
        float f10 = this.f67245d;
        canvas.drawRoundRect(rectF, f10, f10, this.f67249h);
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        List list = this.f67248g;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarF = uy.a.f(this.f67248g, i10);
        a aVarF2 = uy.a.f(this.f67248g, i10 + 1);
        RectF rectF = this.f67250i;
        int i12 = aVarF.f76430e;
        rectF.left = (i12 - this.f67243b) + ((aVarF2.f76430e - i12) * this.f67247f.getInterpolation(f10));
        RectF rectF2 = this.f67250i;
        rectF2.top = aVarF.f76431f - this.f67242a;
        int i13 = aVarF.f76432g;
        rectF2.right = this.f67243b + i13 + ((aVarF2.f76432g - i13) * this.f67246e.getInterpolation(f10));
        RectF rectF3 = this.f67250i;
        rectF3.bottom = aVarF.f76433h + this.f67242a;
        if (!this.f67251j) {
            this.f67245d = rectF3.height() / 2.0f;
        }
        invalidate();
    }

    @Override
    public void onPageSelected(int i10) {
    }

    @Override
    public void onPositionDataProvide(List<a> list) {
        this.f67248g = list;
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f67247f = interpolator;
        if (interpolator == null) {
            this.f67247f = new LinearInterpolator();
        }
    }

    public void setFillColor(int i10) {
        this.f67244c = i10;
    }

    public void setHorizontalPadding(int i10) {
        this.f67243b = i10;
    }

    public void setRoundRadius(float f10) {
        this.f67245d = f10;
        this.f67251j = true;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f67246e = interpolator;
        if (interpolator == null) {
            this.f67246e = new LinearInterpolator();
        }
    }

    public void setVerticalPadding(int i10) {
        this.f67242a = i10;
    }
}
