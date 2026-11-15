package com.transsion.widgetslib.widget.seekbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import defpackage.olb;
import java.lang.ref.WeakReference;

public class OSWideSeekbar extends View {
    public float A;
    public ValueAnimator B;
    public ValueAnimator C;
    public float b;
    public float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public int i;
    public int j;
    public float k;
    public float l;
    public float m;
    public float n;
    public boolean o;
    public final int p;
    public float q;
    public float r;
    public float s;
    public final Paint t;
    public final Rect u;
    public final Context v;
    public c w;
    public long x;
    public long y;
    public float z;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            OSWideSeekbar oSWideSeekbar = OSWideSeekbar.this;
            oSWideSeekbar.g = oSWideSeekbar.h * ((Float) valueAnimator.getAnimatedValue()).floatValue();
            OSWideSeekbar oSWideSeekbar2 = OSWideSeekbar.this;
            oSWideSeekbar2.e = oSWideSeekbar2.f * ((Float) valueAnimator.getAnimatedValue()).floatValue();
            OSWideSeekbar.this.invalidate();
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            OSWideSeekbar oSWideSeekbar = OSWideSeekbar.this;
            oSWideSeekbar.g = oSWideSeekbar.h * ((Float) valueAnimator.getAnimatedValue()).floatValue();
            OSWideSeekbar oSWideSeekbar2 = OSWideSeekbar.this;
            oSWideSeekbar2.e = oSWideSeekbar2.f * ((Float) valueAnimator.getAnimatedValue()).floatValue();
            OSWideSeekbar.this.invalidate();
        }
    }

    public static class c {
        public float a;
        public float b;
        public float c;
        public int d;
        public int e;
        public int f;
        public int g;
        public WeakReference h;

        public c(OSWideSeekbar oSWideSeekbar) {
            if (oSWideSeekbar != null) {
                this.h = new WeakReference(oSWideSeekbar);
                this.a = 0.0f;
                this.b = 100.0f;
                this.c = 0.0f;
                this.d = OSWideSeekbar.l(10);
                this.e = OSWideSeekbar.l(10);
                this.f = ContextCompat.getColor(oSWideSeekbar.v, R.color.os_gray_tertiary_color);
                this.g = oSWideSeekbar.n();
            }
        }

        public void a() {
            if (this.h.get() != null) {
                ((OSWideSeekbar) this.h.get()).i(this);
            }
        }
    }

    public interface d {
    }

    public OSWideSeekbar(Context context) {
        this(context, null);
    }

    public static int l(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public final float g(float f) {
        float f2 = this.r;
        if (f <= f2) {
            return f2;
        }
        float f3 = this.s;
        return f >= f3 ? f3 : f;
    }

    public c getConfigBuilder() {
        if (this.w == null) {
            this.w = new c(this);
        }
        return this.w;
    }

    public float getMax() {
        return this.c;
    }

    public float getMin() {
        return this.b;
    }

    public d getOnProgressChangedListener() {
        return null;
    }

    public int getProgress() {
        return Math.round(this.d);
    }

    public float getProgressFloat() {
        return this.d;
    }

    public final float h() {
        return (((this.m - this.r) * this.l) / this.n) + this.b;
    }

    public void i(c cVar) {
        this.b = cVar.a;
        this.c = cVar.b;
        this.d = cVar.c;
        int i = cVar.d;
        this.e = i;
        int i2 = cVar.e;
        this.g = i2;
        this.i = cVar.f;
        this.j = cVar.g;
        this.f = i;
        this.h = i2;
        m();
        this.w = null;
        requestLayout();
    }

    public final ValueAnimator j() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.g / this.h, 1.6f);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.addUpdateListener(new a());
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator k() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.g / this.h, 1.0f);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    public final void m() {
        if (this.b == this.c) {
            this.b = 0.0f;
            this.c = 100.0f;
        }
        float f = this.b;
        float f2 = this.c;
        if (f > f2) {
            this.c = f;
            this.b = f2;
        }
        float f3 = this.d;
        float f4 = this.b;
        if (f3 < f4) {
            this.d = f4;
        }
        float f5 = this.d;
        float f6 = this.c;
        if (f5 > f6) {
            this.d = f6;
        }
        this.l = f6 - f4;
        setProgress(this.d);
    }

    public final int n() {
        TypedValue typedValue = new TypedValue();
        return this.v.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? ContextCompat.getColor(this.v, typedValue.resourceId) : ContextCompat.getColor(this.v, R.color.os_platform_basic_color_hios);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.r;
        float f2 = this.s;
        float paddingTop = getPaddingTop() + (this.h * 0.6f) + (this.p * 2);
        if (!this.o) {
            this.m = ((this.n / this.l) * (this.d - this.b)) + f;
        }
        this.t.setColor(this.i);
        this.t.setStrokeWidth(this.e);
        canvas.drawLine(f, paddingTop, f2, paddingTop, this.t);
        this.t.setColor(this.j);
        this.t.setStrokeWidth(this.g);
        canvas.drawLine(f, paddingTop, this.m, paddingTop, this.t);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(View.resolveSize(l(180), i), ((int) (((double) this.h) * 1.6d)) + getPaddingTop() + getPaddingBottom() + (this.p * 2));
        this.r = getPaddingLeft() + this.p + this.e;
        float measuredWidth = ((getMeasuredWidth() - getPaddingRight()) - this.p) - this.e;
        this.s = measuredWidth;
        this.n = measuredWidth - this.r;
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.d = bundle.getFloat("progress");
        super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
        setProgress(this.d);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", this.d);
        return bundle;
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Runnable() {
            @Override
            public void run() {
                OSWideSeekbar.this.requestLayout();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0052  */
    /* JADX WARN: Code duplicated, block: B:19:0x0063  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ValueAnimator valueAnimator;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zIsEnabled = isEnabled();
            this.o = zIsEnabled;
            if (zIsEnabled) {
                if (motionEvent.getX() < this.r || motionEvent.getX() > this.s) {
                    this.o = false;
                    return false;
                }
                this.z = motionEvent.getX();
                this.x = System.currentTimeMillis();
                ValueAnimator valueAnimator2 = this.C;
                if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                    this.C.cancel();
                }
                ValueAnimator valueAnimatorJ = j();
                this.B = valueAnimatorJ;
                valueAnimatorJ.start();
            }
        } else if (actionMasked == 1) {
            this.y = System.currentTimeMillis();
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.o) {
                float fG = g(motionEvent.getX());
                this.q = fG;
                this.m = fG;
                this.d = h();
            }
            valueAnimator = this.B;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.B.cancel();
            }
            ValueAnimator valueAnimatorK = k();
            this.C = valueAnimatorK;
            valueAnimatorK.start();
            this.o = false;
        } else if (actionMasked == 2) {
            this.o = isEnabled();
            this.y = System.currentTimeMillis();
            if (this.o) {
                float fG2 = g(motionEvent.getX());
                float fAbs = Math.abs(fG2 - this.z);
                this.A = fAbs;
                if (fG2 != this.q && fAbs > l(1)) {
                    this.q = fG2;
                    this.m = fG2;
                    this.d = h();
                    invalidate();
                }
            }
        } else if (actionMasked == 3) {
            this.y = System.currentTimeMillis();
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.o) {
                float fG3 = g(motionEvent.getX());
                this.q = fG3;
                this.m = fG3;
                this.d = h();
            }
            valueAnimator = this.B;
            if (valueAnimator != null) {
                this.B.cancel();
            }
            ValueAnimator valueAnimatorK2 = k();
            this.C = valueAnimatorK2;
            valueAnimatorK2.start();
            this.o = false;
        }
        return this.o || super.onTouchEvent(motionEvent);
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            this.j = n();
        } else {
            this.j = ContextCompat.getColor(this.v, R.color.os_gray_secondary_color);
        }
        invalidate();
    }

    public void setOnProgressChangedListener(d dVar) {
    }

    public void setProgress(float f) {
        this.d = f;
        postInvalidate();
    }

    public void setSecondTrackColor(int i) {
        if (this.j != i) {
            this.j = i;
            invalidate();
        }
    }

    public void setTrackColor(int i) {
        if (this.i != i) {
            this.i = i;
            invalidate();
        }
    }

    public OSWideSeekbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSWideSeekbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = l(2);
        this.x = 0L;
        this.y = 0L;
        this.v = context;
        getConfigBuilder().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSWideSeekbar, i, 0);
        this.b = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSWideSeekbar_osWideSeekbarMin, 0.0f);
        this.c = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSWideSeekbar_osWideSeekbarMax, 100.0f);
        this.d = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSWideSeekbar_osWideSeekbarProgress, this.b);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSWideSeekbar_android_enabled, isEnabled()));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.t = paint;
        paint.setAntiAlias(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setTextAlign(Paint.Align.CENTER);
        this.u = new Rect();
        this.p = l(2);
        m();
        if (olb.l0() && getRotation() == 0.0f) {
            setRotation(180.0f);
        }
    }
}
