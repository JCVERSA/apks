package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.Arrays;
import java.util.List;
import wy.a;
import wy.b;
import xy.c;

public class BezierPagerIndicator extends View implements c {

    private List f67200a;

    private float f67201b;

    private float f67202c;

    private float f67203d;

    private float f67204e;

    private float f67205f;

    private float f67206g;

    private float f67207h;

    private Paint f67208i;

    private Path f67209j;

    private List f67210k;

    private Interpolator f67211l;

    private Interpolator f67212m;

    public BezierPagerIndicator(Context context) {
        super(context);
        this.f67209j = new Path();
        this.f67211l = new AccelerateInterpolator();
        this.f67212m = new DecelerateInterpolator();
        b(context);
    }

    private void a(Canvas canvas) {
        this.f67209j.reset();
        float height = (getHeight() - this.f67205f) - this.f67206g;
        this.f67209j.moveTo(this.f67204e, height);
        this.f67209j.lineTo(this.f67204e, height - this.f67203d);
        Path path = this.f67209j;
        float f10 = this.f67204e;
        float f11 = this.f67202c;
        path.quadTo(f10 + ((f11 - f10) / 2.0f), height, f11, height - this.f67201b);
        this.f67209j.lineTo(this.f67202c, this.f67201b + height);
        Path path2 = this.f67209j;
        float f12 = this.f67204e;
        path2.quadTo(((this.f67202c - f12) / 2.0f) + f12, height, f12, this.f67203d + height);
        this.f67209j.close();
        canvas.drawPath(this.f67209j, this.f67208i);
    }

    private void b(Context context) {
        Paint paint = new Paint(1);
        this.f67208i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f67206g = b.a(context, 3.5d);
        this.f67207h = b.a(context, 2.0d);
        this.f67205f = b.a(context, 1.5d);
    }

    public float getMaxCircleRadius() {
        return this.f67206g;
    }

    public float getMinCircleRadius() {
        return this.f67207h;
    }

    public float getYOffset() {
        return this.f67205f;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(this.f67202c, (getHeight() - this.f67205f) - this.f67206g, this.f67201b, this.f67208i);
        canvas.drawCircle(this.f67204e, (getHeight() - this.f67205f) - this.f67206g, this.f67203d, this.f67208i);
        a(canvas);
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        List list = this.f67200a;
        if (list == null || list.isEmpty()) {
            return;
        }
        List list2 = this.f67210k;
        if (list2 != null && list2.size() > 0) {
            this.f67208i.setColor(a.a(f10, ((Integer) this.f67210k.get(Math.abs(i10) % this.f67210k.size())).intValue(), ((Integer) this.f67210k.get(Math.abs(i10 + 1) % this.f67210k.size())).intValue()));
        }
        yy.a aVarF = uy.a.f(this.f67200a, i10);
        yy.a aVarF2 = uy.a.f(this.f67200a, i10 + 1);
        int i12 = aVarF.f76426a;
        float f11 = i12 + ((aVarF.f76428c - i12) / 2);
        int i13 = aVarF2.f76426a;
        float f12 = (i13 + ((aVarF2.f76428c - i13) / 2)) - f11;
        this.f67202c = (this.f67211l.getInterpolation(f10) * f12) + f11;
        this.f67204e = f11 + (f12 * this.f67212m.getInterpolation(f10));
        float f13 = this.f67206g;
        this.f67201b = f13 + ((this.f67207h - f13) * this.f67212m.getInterpolation(f10));
        float f14 = this.f67207h;
        this.f67203d = f14 + ((this.f67206g - f14) * this.f67211l.getInterpolation(f10));
        invalidate();
    }

    @Override
    public void onPageSelected(int i10) {
    }

    @Override
    public void onPositionDataProvide(List<yy.a> list) {
        this.f67200a = list;
    }

    public void setColors(Integer... numArr) {
        this.f67210k = Arrays.asList(numArr);
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f67212m = interpolator;
        if (interpolator == null) {
            this.f67212m = new DecelerateInterpolator();
        }
    }

    public void setMaxCircleRadius(float f10) {
        this.f67206g = f10;
    }

    public void setMinCircleRadius(float f10) {
        this.f67207h = f10;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f67211l = interpolator;
        if (interpolator == null) {
            this.f67211l = new AccelerateInterpolator();
        }
    }

    public void setYOffset(float f10) {
        this.f67205f = f10;
    }
}
