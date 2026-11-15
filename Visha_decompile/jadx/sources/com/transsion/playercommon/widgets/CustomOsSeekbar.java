package com.transsion.playercommon.widgets;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import defpackage.olb;
import defpackage.s53;
import defpackage.yo1;
import java.lang.ref.WeakReference;

public class CustomOsSeekbar extends View {
    public float A;
    public float B;
    public float C;
    public float D;
    public float E;
    public float F;
    public float G;
    public float H;
    public int I;
    public boolean J;
    public boolean K;
    public ValueAnimator L;
    public ValueAnimator M;
    public float N;
    public float O;
    public float P;
    public float Q;
    public float R;
    public ValueAnimator S;
    public float T;
    public boolean U;
    public boolean V;
    public float W;
    public final yo1 a0;
    public float b;
    public final yo1 b0;
    public float c;
    public float d;
    public float e;
    public float f;
    public int g;
    public int h;
    public float i;
    public float j;
    public float k;
    public float l;
    public boolean m;
    public float n;
    public f o;
    public float p;
    public float q;
    public final Paint r;
    public final Context s;
    public e t;
    public float u;
    public float v;
    public final Paint w;
    public int x;
    public int y;
    public float z;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CustomOsSeekbar.this.D = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CustomOsSeekbar.this.invalidate();
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CustomOsSeekbar.this.E = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (CustomOsSeekbar.this.G != 0.0f) {
                CustomOsSeekbar customOsSeekbar = CustomOsSeekbar.this;
                customOsSeekbar.F = ((customOsSeekbar.E * (1.0f - CustomOsSeekbar.this.H)) / CustomOsSeekbar.this.G) + 1.0f;
            }
            CustomOsSeekbar.this.invalidate();
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CustomOsSeekbar customOsSeekbar = CustomOsSeekbar.this;
            customOsSeekbar.j = customOsSeekbar.N + ((CustomOsSeekbar.this.O - CustomOsSeekbar.this.N) * fFloatValue);
            CustomOsSeekbar customOsSeekbar2 = CustomOsSeekbar.this;
            customOsSeekbar2.d = customOsSeekbar2.v(customOsSeekbar2.j);
            if (CustomOsSeekbar.this.o != null) {
                f fVar = CustomOsSeekbar.this.o;
                CustomOsSeekbar customOsSeekbar3 = CustomOsSeekbar.this;
                fVar.onProgressChanged(customOsSeekbar3, customOsSeekbar3.getProgress(), CustomOsSeekbar.this.getProgressFloat(), true);
            }
            if (fFloatValue <= 0.5f) {
                CustomOsSeekbar customOsSeekbar4 = CustomOsSeekbar.this;
                customOsSeekbar4.D = customOsSeekbar4.P + (fFloatValue * 2.0f * (CustomOsSeekbar.this.Q - CustomOsSeekbar.this.P));
            } else {
                CustomOsSeekbar customOsSeekbar5 = CustomOsSeekbar.this;
                customOsSeekbar5.D = customOsSeekbar5.Q + ((fFloatValue - 0.5f) * 2.0f * (CustomOsSeekbar.this.R - CustomOsSeekbar.this.Q));
            }
            CustomOsSeekbar.this.invalidate();
        }
    }

    public class d implements Animator.AnimatorListener {
        public d() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            CustomOsSeekbar.this.K = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            CustomOsSeekbar.this.K = false;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            CustomOsSeekbar.this.K = true;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            CustomOsSeekbar.this.K = true;
        }
    }

    public static class e {
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
        public int k;
        public int l;
        public float m;
        public float n;
        public WeakReference o;

        public e(CustomOsSeekbar customOsSeekbar) {
            if (customOsSeekbar != null) {
                this.o = new WeakReference(customOsSeekbar);
                this.a = 0.0f;
                this.b = 100.0f;
                this.c = 0.0f;
                this.d = CustomOsSeekbar.A(3);
                this.e = CustomOsSeekbar.A(3);
                this.g = customOsSeekbar.D();
                this.h = customOsSeekbar.J();
                this.j = CustomOsSeekbar.A(8);
                this.k = CustomOsSeekbar.A(14);
                this.l = CustomOsSeekbar.A(20);
                this.m = 1.25f;
                this.n = 1.142857f;
                try {
                    this.f = ContextCompat.getColor(customOsSeekbar.s, R.color.os_gray_tertiary_color);
                    this.i = ContextCompat.getColor(customOsSeekbar.s, R.color.os_seekbar_thumbinside_color);
                } catch (Exception e) {
                    Log.e("CustomOsSeekbar", "OSSeekBarBuilder getColor failed: " + e.getMessage());
                }
            }
        }

        public void a() {
            if (this.o.get() != null) {
                ((CustomOsSeekbar) this.o.get()).w(this);
            }
        }
    }

    public interface f {
        void onProgressChanged(CustomOsSeekbar customOsSeekbar, int i, float f, boolean z);

        void onStartTrackingTouch(CustomOsSeekbar customOsSeekbar);

        void onStopTrackingTouch(CustomOsSeekbar customOsSeekbar);
    }

    public CustomOsSeekbar(Context context) {
        this(context, null);
    }

    public static int A(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public final void B() {
        if (this.b == this.c) {
            this.b = 0.0f;
            this.c = 100.0f;
        }
        float f2 = this.b;
        float f3 = this.c;
        if (f2 > f3) {
            this.c = f2;
            this.b = f3;
        }
        float f4 = this.d;
        float f5 = this.b;
        if (f4 < f5) {
            this.d = f5;
        }
        float f6 = this.d;
        float f7 = this.c;
        if (f6 > f7) {
            this.d = f7;
        }
        this.i = f7 - f5;
        setProgress(this.d);
    }

    public final boolean C() {
        ValueAnimator valueAnimator = this.S;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public final int D() {
        TypedValue typedValue = new TypedValue();
        return this.s.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? ContextCompat.getColor(this.s, typedValue.resourceId) : ContextCompat.getColor(this.s, R.color.os_platform_basic_color_hios);
    }

    public final void E(float f2, float f3) {
        if (!this.b0.f()) {
            this.b0.g(f2);
        }
        this.b0.j(f3);
    }

    public final void F(float f2, float f3, long j) {
        this.K = true;
        ValueAnimator valueAnimator = this.S;
        if (valueAnimator == null) {
            this.S = y();
        } else if (valueAnimator.isRunning()) {
            this.S.cancel();
            this.S = y();
        }
        this.S.setDuration(j);
        this.I = 1;
        float fAbs = Math.abs(f3 - f2);
        float f4 = this.A;
        if (fAbs > f4) {
            float f5 = ((fAbs - f4) * 0.18f) + f4;
            float f6 = this.B;
            if (f5 > f6) {
                f5 = f6;
            }
            this.P = this.D;
            this.Q = f5;
            this.R = f4;
        } else {
            this.P = this.D;
            this.Q = f4;
            this.R = f4;
        }
        this.N = f2;
        this.O = f3;
        this.S.start();
    }

    public final void G(float f2, float f3) {
        ValueAnimator valueAnimator = this.M;
        if (valueAnimator == null) {
            this.M = x(f2, f3);
        } else if (valueAnimator.isRunning()) {
            this.M.cancel();
            this.M = x(f2, f3);
        } else {
            this.M.setFloatValues(f2, f3);
        }
        this.M.start();
    }

    public final void H(float f2, float f3) {
        ValueAnimator valueAnimator = this.L;
        if (valueAnimator == null) {
            this.L = z(f2, f3);
        } else if (valueAnimator.isRunning()) {
            this.L.cancel();
            this.L = z(f2, f3);
        } else {
            this.L.setFloatValues(f2, f3);
        }
        this.L.start();
    }

    public final void I(float f2, float f3) {
        if (!this.a0.f()) {
            this.a0.g(f2);
        }
        this.a0.j(f3);
    }

    public final int J() {
        TypedValue typedValue = new TypedValue();
        return this.s.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? ContextCompat.getColor(this.s, typedValue.resourceId) : ContextCompat.getColor(this.s, R.color.os_platform_basic_color_hios);
    }

    public final boolean K() {
        boolean zK = false;
        if (!C()) {
            if (this.a0.f()) {
                zK = this.a0.k(0.064f);
                this.D = this.a0.e();
            }
            if (this.b0.f()) {
                zK |= this.b0.k(0.256f);
                float fE = this.b0.e();
                this.j = fE;
                this.d = v(fE);
                f fVar = this.o;
                if (fVar != null) {
                    fVar.onProgressChanged(this, getProgress(), getProgressFloat(), true);
                }
            }
        }
        return zK;
    }

    public e getConfigBuilder() {
        if (this.t == null) {
            this.t = new e(this);
        }
        return this.t;
    }

    public float getMax() {
        return this.c;
    }

    public float getMin() {
        return this.b;
    }

    public f getOnProgressChangedListener() {
        return this.o;
    }

    public int getProgress() {
        ValueAnimator valueAnimator = this.S;
        return (valueAnimator == null || !valueAnimator.isRunning()) ? Math.round(this.d) : Math.round(v(this.O));
    }

    public float getProgressFloat() {
        ValueAnimator valueAnimator = this.S;
        return (valueAnimator == null || !valueAnimator.isRunning()) ? this.d : v(this.O);
    }

    @Override
    public void onDraw(Canvas canvas) {
        float f2;
        float f3;
        super.onDraw(canvas);
        float f4 = this.p;
        float f5 = this.q;
        float f6 = this.k;
        if (!this.m && !this.K) {
            this.j = ((this.l / this.i) * (this.d - this.b)) + f4;
        }
        this.r.setColor(this.g);
        this.r.setStrokeWidth(this.e);
        float f7 = this.W;
        float f8 = this.z;
        canvas.drawLine((f4 - f7) + f8, f6, (f5 + f7) - f8, f6, this.r);
        float f9 = this.j;
        this.r.setColor(this.h);
        this.r.setStrokeWidth(this.f);
        canvas.drawLine((f4 - this.W) + this.z, f6, f9, f6, this.r);
        this.w.setColor(this.x);
        Paint paint = this.w;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        boolean zK = K();
        float f10 = this.E;
        float f11 = this.D;
        float f12 = this.k;
        float f13 = this.C;
        float f14 = f12 - (f13 * f10);
        float f15 = f12 + (f13 * f10);
        int i = this.I;
        if (i == 0) {
            float f16 = this.A;
            float f17 = f9 - ((f11 + (f11 - f16)) * f10);
            f2 = f9 + (f16 * f10);
            f3 = f17;
        } else if (i == 1 || i != 2) {
            float f18 = f11 * f10;
            f3 = f9 - f18;
            f2 = f9 + f18;
        } else {
            float f19 = this.A;
            float f20 = f9 - (f19 * f10);
            f2 = f9 + ((f11 + (f11 - f19)) * f10);
            f3 = f20;
        }
        float f21 = this.z * this.F;
        float fMax = Math.max(f3, f21);
        float fMin = Math.min(f2, getWidth() - f21);
        float f22 = this.C * f10;
        float f23 = f22 + f21;
        canvas.drawRoundRect(Math.max(fMax - f21, 0.0f), f14 - f21, Math.min(fMin + f21, getWidth()), f15 + f21, f23, f23, this.w);
        this.w.setStyle(style);
        this.w.setColor(this.y);
        canvas.drawRoundRect(fMax, f14, fMin, f15, f22, f22, this.w);
        if (zK) {
            invalidate();
        }
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int iMax = ((int) Math.max((int) (((this.C * this.G) + (this.z * this.H)) * 2.0f), this.e)) + getPaddingTop() + getPaddingBottom();
        if (iMax < A(20)) {
            iMax = A(20);
        }
        setMeasuredDimension(View.resolveSize(A(180), i), iMax);
        this.W = this.A + this.z;
        this.p = getPaddingLeft() + this.W;
        float measuredWidth = (getMeasuredWidth() - getPaddingRight()) - this.W;
        this.q = measuredWidth;
        this.l = measuredWidth - this.p;
        this.k = getMeasuredHeight() * 0.5f;
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
                CustomOsSeekbar.this.requestLayout();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:62:0x0115  */
    /* JADX WARN: Code duplicated, block: B:64:0x0120  */
    /* JADX WARN: Code duplicated, block: B:66:0x0126  */
    /* JADX WARN: Code duplicated, block: B:68:0x012e  */
    /* JADX WARN: Code duplicated, block: B:71:0x0137  */
    /* JADX WARN: Code duplicated, block: B:78:0x0155  */
    /* JADX WARN: Code duplicated, block: B:82:0x0162  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        f fVar;
        float fU;
        boolean zC;
        float f2;
        float f3;
        int actionMasked = motionEvent.getActionMasked();
        boolean z = false;
        if (actionMasked == 0) {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zIsEnabled = isEnabled();
            this.m = zIsEnabled;
            if (zIsEnabled) {
                if (motionEvent.getX() < 0.0f || motionEvent.getX() > getWidth()) {
                    this.m = false;
                    return false;
                }
                this.u = Math.min(Math.max(this.p, motionEvent.getX()), this.q);
                f fVar2 = this.o;
                if (fVar2 != null) {
                    fVar2.onStartTrackingTouch(this);
                }
                float f4 = (this.A * this.G) + (this.z * this.H);
                if (motionEvent.getX() > this.j + f4 || motionEvent.getX() < this.j - f4) {
                    this.J = false;
                } else {
                    this.J = true;
                }
            }
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.m) {
                this.a0.d();
                this.b0.d();
                fU = u(motionEvent.getX());
                if (this.U) {
                    G(this.E, 1.0f);
                    zC = C();
                    if (zC) {
                        this.R = this.A;
                    }
                    if (!zC) {
                        f2 = this.D;
                        f3 = this.A;
                        if (f2 != f3) {
                            H(f2, f3);
                        }
                    }
                }
                if (this.j != fU) {
                    if (this.U || !C() || Math.abs(this.n - fU) >= A(6)) {
                        F(this.j, fU, 500L);
                    } else {
                        this.O = fU;
                    }
                }
                this.n = fU;
            }
            this.m = false;
            fVar = this.o;
            if (fVar != null) {
                fVar.onStopTrackingTouch(this);
            }
            this.U = false;
            this.V = false;
        } else if (actionMasked == 2) {
            boolean zIsEnabled2 = isEnabled();
            this.m = zIsEnabled2;
            if (zIsEnabled2) {
                if (this.U) {
                    float fU2 = u(motionEvent.getX());
                    this.v = Math.abs(fU2 - this.u);
                    if (Math.abs(fU2 - this.n) >= A(1) && this.v > A(1)) {
                        if (this.V || this.J) {
                            float fAbs = Math.abs(fU2 - this.T);
                            float f5 = fAbs >= ((float) A(1)) ? fAbs : 0.0f;
                            this.I = 1;
                            float f6 = this.A + (f5 * 1.3f);
                            float f7 = this.B;
                            if (f6 > f7) {
                                f6 = f7;
                            }
                            if (C()) {
                                this.O = fU2;
                                this.R = f6;
                            } else {
                                if (!this.b0.f() && !this.a0.f()) {
                                    z = true;
                                }
                                I(this.D, f6);
                                E(this.j, fU2);
                                if (z) {
                                    invalidate();
                                }
                            }
                        } else {
                            F(this.j, fU2, 500L);
                        }
                        this.n = fU2;
                        this.V = true;
                    } else if (!C() && this.D != this.A) {
                        if (!this.b0.f() && !this.a0.f()) {
                            z = true;
                        }
                        I(this.D, this.A);
                        if (z) {
                            invalidate();
                        }
                    }
                    this.T = fU2;
                } else {
                    G(1.0f, this.G);
                    this.T = motionEvent.getX();
                    this.n = this.j;
                }
            }
            this.U = true;
        } else if (actionMasked == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.m) {
                this.a0.d();
                this.b0.d();
                fU = u(motionEvent.getX());
                if (this.U) {
                    G(this.E, 1.0f);
                    zC = C();
                    if (zC) {
                        this.R = this.A;
                    }
                    if (!zC) {
                        f2 = this.D;
                        f3 = this.A;
                        if (f2 != f3) {
                            H(f2, f3);
                        }
                    }
                }
                if (this.j != fU) {
                    if (this.U) {
                        F(this.j, fU, 500L);
                    } else {
                        F(this.j, fU, 500L);
                    }
                }
                this.n = fU;
            }
            this.m = false;
            fVar = this.o;
            if (fVar != null) {
                fVar.onStopTrackingTouch(this);
            }
            this.U = false;
            this.V = false;
        }
        return true;
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            this.h = D();
            this.x = J();
            this.y = ContextCompat.getColor(this.s, R.color.os_seekbar_thumbinside_color);
        } else {
            this.h = ContextCompat.getColor(this.s, R.color.os_gray_secondary_color);
            this.x = ContextCompat.getColor(this.s, R.color.os_gray_solid_primary_color);
            this.y = ContextCompat.getColor(this.s, R.color.os_altitude_secondary_color);
        }
        invalidate();
    }

    public void setOnProgressChangedListener(f fVar) {
        this.o = fVar;
    }

    public void setProgress(float f2) {
        this.d = f2;
        f fVar = this.o;
        if (fVar != null) {
            fVar.onProgressChanged(this, getProgress(), getProgressFloat(), false);
        }
        postInvalidate();
    }

    public void setSecondTrackColor(int i) {
        if (this.h != i) {
            this.h = i;
            invalidate();
        }
    }

    public void setThumbInsideColor(int i) {
        if (this.y != i) {
            this.y = i;
            invalidate();
        }
    }

    public void setThumbOutColor(int i) {
        if (this.x != i) {
            this.x = i;
            invalidate();
        }
    }

    public void setTrackColor(int i) {
        if (this.g != i) {
            this.g = i;
            invalidate();
        }
    }

    public final float u(float f2) {
        float f3 = this.p;
        if (f2 <= f3) {
            return f3;
        }
        float f4 = this.q;
        return f2 >= f4 ? f4 : f2;
    }

    public final float v(float f2) {
        return (((f2 - this.p) * this.i) / this.l) + this.b;
    }

    public void w(e eVar) {
        this.b = eVar.a;
        this.c = eVar.b;
        this.d = eVar.c;
        this.g = eVar.f;
        this.h = eVar.g;
        this.e = eVar.d;
        this.x = eVar.h;
        this.y = eVar.i;
        this.f = eVar.e;
        int i = eVar.k;
        int i2 = eVar.j;
        float f2 = (i - i2) * 0.5f;
        this.z = f2;
        if (f2 < 0.0f) {
            this.z = 0.0f;
        }
        float f3 = i2 * 0.5f;
        this.A = f3;
        if (eVar.l < i2) {
            eVar.l = i2;
        }
        this.B = eVar.l * 0.5f;
        this.C = f3;
        this.D = f3;
        float f4 = eVar.m;
        this.G = f4;
        float f5 = this.z;
        if (f5 != 0.0f) {
            this.H = ((i * eVar.n) - (i2 * f4)) / (f5 * 2.0f);
        }
        if (this.H < 1.0f) {
            this.H = 1.0f;
        }
        B();
        f fVar = this.o;
        if (fVar != null) {
            fVar.onProgressChanged(this, getProgress(), getProgressFloat(), false);
        }
        this.t = null;
        requestLayout();
    }

    public final ValueAnimator x(float f2, float f3) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.25f, 0.0f, 0.0f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator y() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.5f, 1.0f);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.4f, 0.0f, 0.2f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new c());
        valueAnimatorOfFloat.addListener(new d());
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator z(float f2, float f3) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.4f, 0.0f, 0.2f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new a());
        return valueAnimatorOfFloat;
    }

    public CustomOsSeekbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CustomOsSeekbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.E = 1.0f;
        this.F = 1.0f;
        this.I = 0;
        this.J = false;
        this.K = false;
        this.U = false;
        this.V = false;
        this.a0 = new yo1();
        yo1 yo1Var = new yo1();
        this.b0 = yo1Var;
        this.s = context;
        getConfigBuilder().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSSeekbar, i, 0);
        this.b = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarMin, 0.0f);
        this.c = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarMax, 100.0f);
        this.d = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarProgress, this.b);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSeekbar_android_enabled, isEnabled()));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.r = paint;
        paint.setAntiAlias(true);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        Paint paint2 = new Paint();
        this.w = paint2;
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        paint2.setStrokeCap(cap);
        paint2.setTextAlign(align);
        yo1Var.h(0.25f);
        yo1Var.i(0.25f);
        B();
        if (olb.l0() && getRotation() == 0.0f) {
            setRotation(180.0f);
        }
    }
}
