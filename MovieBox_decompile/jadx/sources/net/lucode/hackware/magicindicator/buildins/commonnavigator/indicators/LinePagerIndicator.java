package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.Arrays;
import java.util.List;
import wy.a;
import wy.b;
import xy.c;

public class LinePagerIndicator extends View implements c {
    public static final int MODE_EXACTLY = 2;
    public static final int MODE_MATCH_EDGE = 0;
    public static final int MODE_WRAP_CONTENT = 1;

    private int f67213a;

    private Interpolator f67214b;

    private Interpolator f67215c;

    private float f67216d;

    private float f67217e;

    private float f67218f;

    private float f67219g;

    private float f67220h;

    private Paint f67221i;

    private List f67222j;

    private List f67223k;

    private RectF f67224l;

    public LinePagerIndicator(Context context) {
        super(context);
        this.f67214b = new LinearInterpolator();
        this.f67215c = new LinearInterpolator();
        this.f67224l = new RectF();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f67221i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f67217e = b.a(context, 3.0d);
        this.f67219g = b.a(context, 10.0d);
    }

    public List<Integer> getColors() {
        return this.f67223k;
    }

    public Interpolator getEndInterpolator() {
        return this.f67215c;
    }

    public float getLineHeight() {
        return this.f67217e;
    }

    public float getLineWidth() {
        return this.f67219g;
    }

    public int getMode() {
        return this.f67213a;
    }

    public Paint getPaint() {
        return this.f67221i;
    }

    public float getRoundRadius() {
        return this.f67220h;
    }

    public Interpolator getStartInterpolator() {
        return this.f67214b;
    }

    public float getXOffset() {
        return this.f67218f;
    }

    public float getYOffset() {
        return this.f67216d;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.f67224l;
        float f10 = this.f67220h;
        canvas.drawRoundRect(rectF, f10, f10, this.f67221i);
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        float fB;
        float fB2;
        float fB3;
        float f11;
        float f12;
        int i12;
        List list = this.f67222j;
        if (list == null || list.isEmpty()) {
            return;
        }
        List list2 = this.f67223k;
        if (list2 != null && list2.size() > 0) {
            this.f67221i.setColor(a.a(f10, ((Integer) this.f67223k.get(Math.abs(i10) % this.f67223k.size())).intValue(), ((Integer) this.f67223k.get(Math.abs(i10 + 1) % this.f67223k.size())).intValue()));
        }
        yy.a aVarF = uy.a.f(this.f67222j, i10);
        yy.a aVarF2 = uy.a.f(this.f67222j, i10 + 1);
        int i13 = this.f67213a;
        if (i13 != 0) {
            if (i13 == 1) {
                float f13 = aVarF.f76430e;
                f12 = this.f67218f;
                fB = f13 + f12;
                f11 = aVarF2.f76430e + f12;
                fB2 = aVarF.f76432g - f12;
                i12 = aVarF2.f76432g;
            } else {
                fB = aVarF.f76426a + ((aVarF.b() - this.f67219g) / 2.0f);
                float fB4 = aVarF2.f76426a + ((aVarF2.b() - this.f67219g) / 2.0f);
                fB2 = ((aVarF.b() + this.f67219g) / 2.0f) + aVarF.f76426a;
                fB3 = ((aVarF2.b() + this.f67219g) / 2.0f) + aVarF2.f76426a;
                f11 = fB4;
            }
            this.f67224l.left = fB + ((f11 - fB) * this.f67214b.getInterpolation(f10));
            this.f67224l.right = fB2 + ((fB3 - fB2) * this.f67215c.getInterpolation(f10));
            this.f67224l.top = (getHeight() - this.f67217e) - this.f67216d;
            this.f67224l.bottom = getHeight() - this.f67216d;
            invalidate();
        }
        float f14 = aVarF.f76426a;
        f12 = this.f67218f;
        fB = f14 + f12;
        f11 = aVarF2.f76426a + f12;
        fB2 = aVarF.f76428c - f12;
        i12 = aVarF2.f76428c;
        fB3 = i12 - f12;
        this.f67224l.left = fB + ((f11 - fB) * this.f67214b.getInterpolation(f10));
        this.f67224l.right = fB2 + ((fB3 - fB2) * this.f67215c.getInterpolation(f10));
        this.f67224l.top = (getHeight() - this.f67217e) - this.f67216d;
        this.f67224l.bottom = getHeight() - this.f67216d;
        invalidate();
    }

    @Override
    public void onPageSelected(int i10) {
    }

    @Override
    public void onPositionDataProvide(List<yy.a> list) {
        this.f67222j = list;
    }

    public void setColors(Integer... numArr) {
        this.f67223k = Arrays.asList(numArr);
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f67215c = interpolator;
        if (interpolator == null) {
            this.f67215c = new LinearInterpolator();
        }
    }

    public void setLineHeight(float f10) {
        this.f67217e = f10;
    }

    public void setLineWidth(float f10) {
        this.f67219g = f10;
    }

    public void setMode(int i10) {
        if (i10 == 2 || i10 == 0 || i10 == 1) {
            this.f67213a = i10;
            return;
        }
        throw new IllegalArgumentException("mode " + i10 + " not supported.");
    }

    public void setRoundRadius(float f10) {
        this.f67220h = f10;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f67214b = interpolator;
        if (interpolator == null) {
            this.f67214b = new LinearInterpolator();
        }
    }

    public void setXOffset(float f10) {
        this.f67218f = f10;
    }

    public void setYOffset(float f10) {
        this.f67216d = f10;
    }
}
