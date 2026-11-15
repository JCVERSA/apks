package com.yalantis.ucrop.view.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.R;

public class HorizontalProgressWheelView extends View {
    public final Rect b;
    public a c;
    public float d;
    public Paint e;
    public Paint f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public float k;
    public int l;

    public interface a {
        void a(float f, float f2);

        void b();

        void c();
    }

    public HorizontalProgressWheelView(Context context) {
        this(context, null);
    }

    public final void a() {
        this.l = ContextCompat.getColor(getContext(), R.color.ucrop_color_widget_rotate_mid_line);
        this.g = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_width_horizontal_wheel_progress_line);
        this.h = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_height_horizontal_wheel_progress_line);
        this.i = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_margin_horizontal_wheel_progress_line);
        Paint paint = new Paint(1);
        this.e = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.e.setStrokeWidth(this.g);
        this.e.setColor(getResources().getColor(R.color.ucrop_color_progress_wheel_line));
        Paint paint2 = new Paint(this.e);
        this.f = paint2;
        paint2.setColor(this.l);
        this.f.setStrokeCap(Paint.Cap.ROUND);
        this.f.setStrokeWidth(getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_width_middle_wheel_progress_line));
    }

    public final void b(MotionEvent motionEvent, float f) {
        this.k -= f;
        postInvalidate();
        this.d = motionEvent.getX();
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(-f, this.k);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.b);
        int iWidth = this.b.width();
        int i = this.g;
        int i2 = this.i;
        int i3 = iWidth / (i + i2);
        float f = this.k % (i2 + i);
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i3 / 4;
            if (i4 < i5) {
                this.e.setAlpha((int) ((i4 / i5) * 255.0f));
            } else if (i4 > (i3 * 3) / 4) {
                this.e.setAlpha((int) (((i3 - i4) / i5) * 255.0f));
            } else {
                this.e.setAlpha(255);
            }
            float f2 = -f;
            Rect rect = this.b;
            float f3 = rect.left + f2 + ((this.g + this.i) * i4);
            float fCenterY = rect.centerY() - (this.h / 4.0f);
            Rect rect2 = this.b;
            canvas.drawLine(f3, fCenterY, f2 + rect2.left + ((this.g + this.i) * i4), rect2.centerY() + (this.h / 4.0f), this.e);
        }
        canvas.drawLine(this.b.centerX(), this.b.centerY() - (this.h / 2.0f), this.b.centerX(), (this.h / 2.0f) + this.b.centerY(), this.f);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.d = motionEvent.getX();
        } else if (action == 1) {
            a aVar = this.c;
            if (aVar != null) {
                this.j = false;
                aVar.b();
            }
        } else if (action == 2) {
            float x = motionEvent.getX() - this.d;
            if (x != 0.0f) {
                if (!this.j) {
                    this.j = true;
                    a aVar2 = this.c;
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                }
                b(motionEvent, x);
            }
        }
        return true;
    }

    public void setMiddleLineColor(@ColorInt int i) {
        this.l = i;
        this.f.setColor(i);
        invalidate();
    }

    public void setScrollingListener(a aVar) {
        this.c = aVar;
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Rect();
        a();
    }

    @TargetApi(21)
    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = new Rect();
    }
}
