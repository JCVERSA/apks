package com.transsion.widgetslib.widget.seekbar;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
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

public class OSMultiSeekBar extends View {
    public float A;
    public boolean B;
    public float b;
    public float c;
    public float d;
    public float e;
    public float f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public float l;
    public float m;
    public float n;
    public boolean o;
    public float p;
    public b q;
    public float r;
    public float s;
    public final Paint t;
    public final Context u;
    public a v;
    public final Paint w;
    public long x;
    public long y;
    public float z;

    public static class a {
        public float a;
        public float b;
        public float c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public WeakReference k;

        public a(OSMultiSeekBar oSMultiSeekBar) {
            if (oSMultiSeekBar != null) {
                this.k = new WeakReference(oSMultiSeekBar);
                this.a = 0.0f;
                this.b = 100.0f;
                this.c = 0.0f;
                this.d = OSMultiSeekBar.g(3);
                this.e = OSMultiSeekBar.g(3);
                this.j = OSMultiSeekBar.g(8);
                this.f = olb.m(oSMultiSeekBar.u, R.attr.os_fill_weak, R.color.os_fill_weak_hios);
                this.g = oSMultiSeekBar.i();
                this.h = OSMultiSeekBar.g(8);
                this.i = oSMultiSeekBar.j();
            }
        }

        public void a() {
            if (this.k.get() != null) {
                ((OSMultiSeekBar) this.k.get()).f(this);
            }
        }

        public a b(int i) {
            this.g = i;
            return this;
        }

        public a c(int i) {
            this.e = OSMultiSeekBar.g(i);
            return this;
        }

        public a d(int i) {
            this.i = i;
            return this;
        }

        public a e(int i) {
            this.h = OSMultiSeekBar.g(i);
            return this;
        }

        public a f(int i) {
            this.f = i;
            return this;
        }

        public a g(int i) {
            this.d = OSMultiSeekBar.g(i);
            return this;
        }
    }

    public interface b {
        void a(OSMultiSeekBar oSMultiSeekBar, int i, float f, boolean z);

        void b(OSMultiSeekBar oSMultiSeekBar);

        void c(OSMultiSeekBar oSMultiSeekBar);
    }

    public OSMultiSeekBar(Context context) {
        this(context, null);
    }

    public static int g(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public final float d(float f) {
        float f2 = this.r;
        if (f <= f2) {
            return f2;
        }
        float f3 = this.s;
        return f >= f3 ? f3 : f;
    }

    public final float e() {
        return (((this.m - this.r) * this.l) / this.n) + this.b;
    }

    public void f(a aVar) {
        this.b = aVar.a;
        this.c = aVar.b;
        this.d = aVar.c;
        this.g = aVar.f;
        this.h = aVar.g;
        this.e = aVar.d;
        this.f = aVar.e;
        this.j = aVar.h;
        this.i = aVar.i;
        this.k = aVar.j;
        h();
        b bVar = this.q;
        if (bVar != null) {
            bVar.a(this, getProgress(), getProgressFloat(), false);
        }
        this.v = null;
        requestLayout();
    }

    public a getConfigBuilder() {
        if (this.v == null) {
            this.v = new a(this);
        }
        return this.v;
    }

    public float getMax() {
        return this.c;
    }

    public float getMin() {
        return this.b;
    }

    public b getOnProgressChangedListener() {
        return this.q;
    }

    public int getProgress() {
        return Math.round(this.d);
    }

    public float getProgressFloat() {
        return this.d;
    }

    public final void h() {
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
        float f7 = this.j;
        float f8 = this.f;
        if (f7 <= f8) {
            this.j = ((int) f8) + g(4);
        }
        this.l = this.c - this.b;
        setProgress(this.d);
    }

    public final int i() {
        TypedValue typedValue = new TypedValue();
        return this.u.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? ContextCompat.getColor(this.u, typedValue.resourceId) : ContextCompat.getColor(this.u, R.color.os_platform_basic_color_hios);
    }

    public final int j() {
        TypedValue typedValue = new TypedValue();
        return this.u.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? ContextCompat.getColor(this.u, typedValue.resourceId) : ContextCompat.getColor(this.u, R.color.os_platform_basic_color_hios);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.r;
        float f2 = this.s;
        float paddingTop = getPaddingTop() + this.k + (this.j * 0.5f);
        if (!this.o) {
            this.m = ((this.n / this.l) * (this.d - this.b)) + f;
        }
        this.t.setColor(this.g);
        this.t.setStrokeWidth(this.e);
        canvas.drawLine(this.m, paddingTop, f2, paddingTop, this.t);
        this.t.setColor(this.h);
        this.t.setStrokeWidth(this.f);
        canvas.drawLine(f, paddingTop, this.m, paddingTop, this.t);
        this.w.setStyle(Paint.Style.FILL);
        this.w.setColor(this.i);
        canvas.drawCircle(this.m, paddingTop, this.j * 0.5f, this.w);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(View.resolveSize(g(180), i), getPaddingTop() + this.j + (this.k * 2) + getPaddingBottom());
        this.r = getPaddingLeft() + (this.j * 0.5f);
        float measuredWidth = ((getMeasuredWidth() - getPaddingRight()) - this.e) - (this.j * 0.5f);
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
                OSMultiSeekBar.this.requestLayout();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0067  */
    /* JADX WARN: Code duplicated, block: B:23:0x0078  */
    /* JADX WARN: Code duplicated, block: B:25:0x008e  */
    /* JADX WARN: Code duplicated, block: B:28:0x009f  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar;
        b bVar2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zIsEnabled = isEnabled();
            this.o = zIsEnabled;
            this.B = false;
            if (zIsEnabled) {
                if (motionEvent.getX() < this.r || motionEvent.getX() > this.s) {
                    this.o = false;
                    return false;
                }
                this.z = motionEvent.getX();
                this.x = System.currentTimeMillis();
                b bVar3 = this.q;
                if (bVar3 != null) {
                    bVar3.b(this);
                }
            }
        } else if (actionMasked == 1) {
            this.y = System.currentTimeMillis();
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.o) {
                float fD = d(motionEvent.getX());
                this.p = fD;
                this.m = fD;
                this.d = e();
                bVar2 = this.q;
                if (bVar2 != null) {
                    bVar2.a(this, getProgress(), getProgressFloat(), true);
                }
            }
            this.o = false;
            bVar = this.q;
            if (bVar != null) {
                bVar.c(this);
            }
        } else if (actionMasked == 2) {
            this.o = isEnabled();
            this.y = System.currentTimeMillis();
            if (this.o) {
                float fD2 = d(motionEvent.getX());
                float fAbs = Math.abs(fD2 - this.z);
                this.A = fAbs;
                if (fD2 != this.p && (fAbs > g(1) || this.B)) {
                    this.p = fD2;
                    this.m = fD2;
                    this.B = true;
                    this.d = e();
                    invalidate();
                    b bVar4 = this.q;
                    if (bVar4 != null) {
                        bVar4.a(this, getProgress(), getProgressFloat(), true);
                    }
                }
            }
        } else if (actionMasked == 3) {
            this.y = System.currentTimeMillis();
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.o) {
                float fD3 = d(motionEvent.getX());
                this.p = fD3;
                this.m = fD3;
                this.d = e();
                bVar2 = this.q;
                if (bVar2 != null) {
                    bVar2.a(this, getProgress(), getProgressFloat(), true);
                }
            }
            this.o = false;
            bVar = this.q;
            if (bVar != null) {
                bVar.c(this);
            }
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
            this.h = i();
            this.i = j();
        } else {
            Context context = this.u;
            int i = R.attr.os_brand_disabled;
            int i2 = R.color.os_brand_disabled_hios;
            this.h = olb.m(context, i, i2);
            this.i = olb.m(this.u, i, i2);
        }
        invalidate();
    }

    public void setOnProgressChangedListener(b bVar) {
        this.q = bVar;
    }

    public void setProgress(float f) {
        this.d = f;
        b bVar = this.q;
        if (bVar != null) {
            bVar.a(this, getProgress(), getProgressFloat(), false);
        }
        postInvalidate();
    }

    public void setSecondTrackColor(int i) {
        if (this.h != i) {
            this.h = i;
            invalidate();
        }
    }

    public void setTrackColor(int i) {
        if (this.g != i) {
            this.g = i;
            invalidate();
        }
    }

    public OSMultiSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSMultiSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = 0L;
        this.y = 0L;
        this.u = context;
        getConfigBuilder().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSMultiSeekbar, i, 0);
        this.b = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSMultiSeekbar_osMultiSeekbarMin, 0.0f);
        this.c = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSMultiSeekbar_osMultiSeekbarMax, 100.0f);
        this.d = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSMultiSeekbar_osMultiSeekbarProgress, this.b);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSMultiSeekbar_android_enabled, isEnabled()));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.t = paint;
        paint.setAntiAlias(true);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        Paint paint2 = new Paint();
        this.w = paint2;
        paint2.setAntiAlias(true);
        paint2.setStrokeCap(cap);
        paint2.setTextAlign(align);
        h();
        if (olb.l0() && getRotation() == 0.0f) {
            setRotation(180.0f);
        }
    }
}
