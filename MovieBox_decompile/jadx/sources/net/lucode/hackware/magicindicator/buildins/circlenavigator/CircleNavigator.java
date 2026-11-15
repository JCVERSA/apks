package net.lucode.hackware.magicindicator.buildins.circlenavigator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;
import wy.b;

public class CircleNavigator extends View implements vy.a {

    private int f67166a;

    private int f67167b;

    private int f67168c;

    private int f67169d;

    private int f67170e;

    private int f67171f;

    private Interpolator f67172g;

    private Paint f67173h;

    private List f67174i;

    private float f67175j;

    private boolean f67176k;

    private float f67177l;

    private float f67178m;

    private int f67179n;

    private boolean f67180o;

    public interface a {
    }

    public CircleNavigator(Context context) {
        super(context);
        this.f67172g = new LinearInterpolator();
        this.f67173h = new Paint(1);
        this.f67174i = new ArrayList();
        this.f67180o = true;
        c(context);
    }

    private void a(Canvas canvas) {
        this.f67173h.setStyle(Paint.Style.STROKE);
        this.f67173h.setStrokeWidth(this.f67168c);
        int size = this.f67174i.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointF pointF = (PointF) this.f67174i.get(i10);
            canvas.drawCircle(pointF.x, pointF.y, this.f67166a, this.f67173h);
        }
    }

    private void b(Canvas canvas) {
        this.f67173h.setStyle(Paint.Style.FILL);
        if (this.f67174i.size() > 0) {
            canvas.drawCircle(this.f67175j, (int) ((getHeight() / 2.0f) + 0.5f), this.f67166a, this.f67173h);
        }
    }

    private void c(Context context) {
        this.f67179n = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f67166a = b.a(context, 3.0d);
        this.f67169d = b.a(context, 8.0d);
        this.f67168c = b.a(context, 1.0d);
    }

    private int d(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            return (this.f67166a * 2) + (this.f67168c * 2) + getPaddingTop() + getPaddingBottom();
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private int e(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i11 = this.f67171f;
            return (this.f67168c * 2) + (this.f67166a * i11 * 2) + ((i11 - 1) * this.f67169d) + getPaddingLeft() + getPaddingRight();
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private void f() {
        this.f67174i.clear();
        if (this.f67171f > 0) {
            int height = (int) ((getHeight() / 2.0f) + 0.5f);
            int i10 = this.f67166a;
            int i11 = (i10 * 2) + this.f67169d;
            int paddingLeft = i10 + ((int) ((this.f67168c / 2.0f) + 0.5f)) + getPaddingLeft();
            for (int i12 = 0; i12 < this.f67171f; i12++) {
                this.f67174i.add(new PointF(paddingLeft, height));
                paddingLeft += i11;
            }
            this.f67175j = ((PointF) this.f67174i.get(this.f67170e)).x;
        }
    }

    public a getCircleClickListener() {
        return null;
    }

    public int getCircleColor() {
        return this.f67167b;
    }

    public int getCircleCount() {
        return this.f67171f;
    }

    public int getCircleSpacing() {
        return this.f67169d;
    }

    public int getRadius() {
        return this.f67166a;
    }

    public Interpolator getStartInterpolator() {
        return this.f67172g;
    }

    public int getStrokeWidth() {
        return this.f67168c;
    }

    public boolean isFollowTouch() {
        return this.f67180o;
    }

    public boolean isTouchable() {
        return this.f67176k;
    }

    @Override
    public void notifyDataSetChanged() {
        f();
        invalidate();
    }

    @Override
    public void onAttachToMagicIndicator() {
    }

    @Override
    public void onDetachFromMagicIndicator() {
    }

    @Override
    protected void onDraw(Canvas canvas) {
        this.f67173h.setColor(this.f67167b);
        a(canvas);
        b(canvas);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        f();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(e(i10), d(i11));
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        if (!this.f67180o || this.f67174i.isEmpty()) {
            return;
        }
        int iMin = Math.min(this.f67174i.size() - 1, i10);
        int iMin2 = Math.min(this.f67174i.size() - 1, i10 + 1);
        PointF pointF = (PointF) this.f67174i.get(iMin);
        PointF pointF2 = (PointF) this.f67174i.get(iMin2);
        float f11 = pointF.x;
        this.f67175j = f11 + ((pointF2.x - f11) * this.f67172g.getInterpolation(f10));
        invalidate();
    }

    @Override
    public void onPageSelected(int i10) {
        this.f67170e = i10;
        if (this.f67180o) {
            return;
        }
        this.f67175j = ((PointF) this.f67174i.get(i10)).x;
        invalidate();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (motionEvent.getAction() != 0 || !this.f67176k) {
            return super.onTouchEvent(motionEvent);
        }
        this.f67177l = x10;
        this.f67178m = y10;
        return true;
    }

    public void setCircleClickListener(a aVar) {
        if (this.f67176k) {
            return;
        }
        this.f67176k = true;
    }

    public void setCircleColor(int i10) {
        this.f67167b = i10;
        invalidate();
    }

    public void setCircleCount(int i10) {
        this.f67171f = i10;
    }

    public void setCircleSpacing(int i10) {
        this.f67169d = i10;
        f();
        invalidate();
    }

    public void setFollowTouch(boolean z10) {
        this.f67180o = z10;
    }

    public void setRadius(int i10) {
        this.f67166a = i10;
        f();
        invalidate();
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f67172g = interpolator;
        if (interpolator == null) {
            this.f67172g = new LinearInterpolator();
        }
    }

    public void setStrokeWidth(int i10) {
        this.f67168c = i10;
        invalidate();
    }

    public void setTouchable(boolean z10) {
        this.f67176k = z10;
    }
}
