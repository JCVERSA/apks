package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.List;
import wy.b;
import xy.c;
import yy.a;

public class TriangularPagerIndicator extends View implements c {

    private List f67231a;

    private Paint f67232b;

    private int f67233c;

    private int f67234d;

    private int f67235e;

    private int f67236f;

    private boolean f67237g;

    private float f67238h;

    private Path f67239i;

    private Interpolator f67240j;

    private float f67241k;

    public TriangularPagerIndicator(Context context) {
        super(context);
        this.f67239i = new Path();
        this.f67240j = new LinearInterpolator();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f67232b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f67233c = b.a(context, 3.0d);
        this.f67236f = b.a(context, 14.0d);
        this.f67235e = b.a(context, 8.0d);
    }

    public int getLineColor() {
        return this.f67234d;
    }

    public int getLineHeight() {
        return this.f67233c;
    }

    public Interpolator getStartInterpolator() {
        return this.f67240j;
    }

    public int getTriangleHeight() {
        return this.f67235e;
    }

    public int getTriangleWidth() {
        return this.f67236f;
    }

    public float getYOffset() {
        return this.f67238h;
    }

    public boolean isReverse() {
        return this.f67237g;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        this.f67232b.setColor(this.f67234d);
        if (this.f67237g) {
            canvas.drawRect(0.0f, (getHeight() - this.f67238h) - this.f67235e, getWidth(), ((getHeight() - this.f67238h) - this.f67235e) + this.f67233c, this.f67232b);
        } else {
            canvas.drawRect(0.0f, (getHeight() - this.f67233c) - this.f67238h, getWidth(), getHeight() - this.f67238h, this.f67232b);
        }
        this.f67239i.reset();
        if (this.f67237g) {
            this.f67239i.moveTo(this.f67241k - (this.f67236f / 2), (getHeight() - this.f67238h) - this.f67235e);
            this.f67239i.lineTo(this.f67241k, getHeight() - this.f67238h);
            this.f67239i.lineTo(this.f67241k + (this.f67236f / 2), (getHeight() - this.f67238h) - this.f67235e);
        } else {
            this.f67239i.moveTo(this.f67241k - (this.f67236f / 2), getHeight() - this.f67238h);
            this.f67239i.lineTo(this.f67241k, (getHeight() - this.f67235e) - this.f67238h);
            this.f67239i.lineTo(this.f67241k + (this.f67236f / 2), getHeight() - this.f67238h);
        }
        this.f67239i.close();
        canvas.drawPath(this.f67239i, this.f67232b);
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        List list = this.f67231a;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarF = uy.a.f(this.f67231a, i10);
        a aVarF2 = uy.a.f(this.f67231a, i10 + 1);
        int i12 = aVarF.f76426a;
        float f11 = i12 + ((aVarF.f76428c - i12) / 2);
        int i13 = aVarF2.f76426a;
        this.f67241k = f11 + (((i13 + ((aVarF2.f76428c - i13) / 2)) - f11) * this.f67240j.getInterpolation(f10));
        invalidate();
    }

    @Override
    public void onPageSelected(int i10) {
    }

    @Override
    public void onPositionDataProvide(List<a> list) {
        this.f67231a = list;
    }

    public void setLineColor(int i10) {
        this.f67234d = i10;
    }

    public void setLineHeight(int i10) {
        this.f67233c = i10;
    }

    public void setReverse(boolean z10) {
        this.f67237g = z10;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f67240j = interpolator;
        if (interpolator == null) {
            this.f67240j = new LinearInterpolator();
        }
    }

    public void setTriangleHeight(int i10) {
        this.f67235e = i10;
    }

    public void setTriangleWidth(int i10) {
        this.f67236f = i10;
    }

    public void setYOffset(float f10) {
        this.f67238h = f10;
    }
}
