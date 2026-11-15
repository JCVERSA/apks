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
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import defpackage.bq5;
import defpackage.eb7;
import defpackage.olb;
import defpackage.s53;
import defpackage.uua;
import java.lang.ref.WeakReference;

public class TranOsSeekbar extends View {
    public static final String q0 = "TranOsSeekbar";
    public float A;
    public float B;
    public float C;
    public float D;
    public float E;
    public float F;
    public float G;
    public float H;
    public float I;
    public float J;
    public float K;
    public float L;
    public float M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public boolean a0;
    public float b;
    public boolean b0;
    public float c;
    public boolean c0;
    public float d;
    public boolean d0;
    public float e;
    public boolean e0;
    public float f;
    public final uua f0;
    public float g;
    public final uua g0;
    public float h;
    public ValueAnimator h0;
    public float i;
    public ValueAnimator i0;
    public float j;
    public ValueAnimator j0;
    public float k;
    public ValueAnimator k0;
    public float l;
    public i l0;
    public float m;
    public final Paint m0;
    public float n;
    public final Context n0;
    public float o;
    public final Paint o0;
    public float p;
    public h p0;
    public float q;
    public float r;
    public float s;
    public float t;
    public float u;
    public float v;
    public float w;
    public float x;
    public float y;
    public float z;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TranOsSeekbar.this.u = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            TranOsSeekbar.this.invalidate();
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TranOsSeekbar.this.v = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (TranOsSeekbar.this.x != 0.0f) {
                TranOsSeekbar tranOsSeekbar = TranOsSeekbar.this;
                tranOsSeekbar.w = ((tranOsSeekbar.v * (1.0f - TranOsSeekbar.this.G)) / TranOsSeekbar.this.x) + 1.0f;
            }
            TranOsSeekbar.this.invalidate();
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TranOsSeekbar.this.C = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f = (TranOsSeekbar.this.C - TranOsSeekbar.this.z) / (TranOsSeekbar.this.y - TranOsSeekbar.this.z);
            TranOsSeekbar tranOsSeekbar = TranOsSeekbar.this;
            tranOsSeekbar.F = tranOsSeekbar.E + ((TranOsSeekbar.this.D - TranOsSeekbar.this.E) * f);
            TranOsSeekbar tranOsSeekbar2 = TranOsSeekbar.this;
            tranOsSeekbar2.U = (int) (tranOsSeekbar2.V + ((TranOsSeekbar.this.W - TranOsSeekbar.this.V) * f));
            TranOsSeekbar.this.T &= 16777215;
            TranOsSeekbar.this.T |= TranOsSeekbar.this.U << 24;
            TranOsSeekbar.this.invalidate();
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            TranOsSeekbar tranOsSeekbar = TranOsSeekbar.this;
            tranOsSeekbar.h = tranOsSeekbar.H + ((TranOsSeekbar.this.I - TranOsSeekbar.this.H) * fFloatValue);
            TranOsSeekbar tranOsSeekbar2 = TranOsSeekbar.this;
            tranOsSeekbar2.d = tranOsSeekbar2.J(tranOsSeekbar2.h);
            if (TranOsSeekbar.this.l0 != null) {
                i iVar = TranOsSeekbar.this.l0;
                TranOsSeekbar tranOsSeekbar3 = TranOsSeekbar.this;
                iVar.a(tranOsSeekbar3, tranOsSeekbar3.getProgress(), TranOsSeekbar.this.getProgressFloat(), true);
            }
            if (fFloatValue <= 0.5f) {
                TranOsSeekbar tranOsSeekbar4 = TranOsSeekbar.this;
                tranOsSeekbar4.u = tranOsSeekbar4.J + (fFloatValue * 2.0f * (TranOsSeekbar.this.K - TranOsSeekbar.this.J));
            } else {
                TranOsSeekbar tranOsSeekbar5 = TranOsSeekbar.this;
                tranOsSeekbar5.u = tranOsSeekbar5.K + ((fFloatValue - 0.5f) * 2.0f * (TranOsSeekbar.this.L - TranOsSeekbar.this.K));
            }
            TranOsSeekbar.this.invalidate();
        }
    }

    public class e implements Animator.AnimatorListener {
        public e() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            TranOsSeekbar.this.c0 = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            TranOsSeekbar.this.c0 = false;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            TranOsSeekbar.this.c0 = true;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            TranOsSeekbar.this.c0 = true;
        }
    }

    public class f implements ValueAnimator.AnimatorUpdateListener {
        public f() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            TranOsSeekbar tranOsSeekbar = TranOsSeekbar.this;
            tranOsSeekbar.h = tranOsSeekbar.H + (fFloatValue * (TranOsSeekbar.this.I - TranOsSeekbar.this.H));
            TranOsSeekbar tranOsSeekbar2 = TranOsSeekbar.this;
            tranOsSeekbar2.d = tranOsSeekbar2.J(tranOsSeekbar2.h);
            if (TranOsSeekbar.this.l0 != null) {
                i iVar = TranOsSeekbar.this.l0;
                TranOsSeekbar tranOsSeekbar3 = TranOsSeekbar.this;
                iVar.a(tranOsSeekbar3, tranOsSeekbar3.getProgress(), TranOsSeekbar.this.getProgressFloat(), true);
            }
            TranOsSeekbar.this.invalidate();
        }
    }

    public class g implements Animator.AnimatorListener {
        public g() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            TranOsSeekbar.this.c0 = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            TranOsSeekbar.this.c0 = false;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            TranOsSeekbar.this.c0 = true;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            TranOsSeekbar.this.c0 = true;
        }
    }

    public static class h {
        public float a;
        public float b;
        public float c;
        public int d;
        public int e;
        public int f;
        public int g;
        public float h;
        public float i;
        public float j;
        public float k;
        public float l;
        public float m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public float w;
        public float x;
        public float y;
        public WeakReference z;

        public h(TranOsSeekbar tranOsSeekbar) {
            if (tranOsSeekbar != null) {
                this.z = new WeakReference(tranOsSeekbar);
                this.k = 0.0f;
                this.l = 100.0f;
                this.m = 0.0f;
                this.n = TranOsSeekbar.Q(3);
                this.o = TranOsSeekbar.Q(3);
                this.q = tranOsSeekbar.a0();
                this.r = tranOsSeekbar.j0();
                this.t = TranOsSeekbar.Q(8);
                this.u = TranOsSeekbar.Q(14);
                this.v = TranOsSeekbar.Q(20);
                this.w = 1.25f;
                this.x = 1.142857f;
                b(tranOsSeekbar);
                try {
                    this.p = ContextCompat.getColor(tranOsSeekbar.n0, R.color.os_gray_tertiary_color);
                    this.s = ContextCompat.getColor(tranOsSeekbar.n0, R.color.os_seekbar_thumbinside_color);
                } catch (Exception e) {
                    Log.e(TranOsSeekbar.q0, "OSSeekBarBuilder getColor failed: " + e.getMessage());
                }
            }
        }

        public void a() {
            if (this.z.get() != null) {
                ((TranOsSeekbar) this.z.get()).K(this);
            }
        }

        public final void b(TranOsSeekbar tranOsSeekbar) {
            this.y = tranOsSeekbar.getContext().getResources().getDimension(R.dimen.os_dimen_thumb_height_hios);
            float dimension = tranOsSeekbar.getContext().getResources().getDimension(R.dimen.os_shadow_radius_level2);
            this.i = dimension;
            this.a = dimension;
            this.h = tranOsSeekbar.getContext().getResources().getDimension(R.dimen.os_shadow_radius_level3);
            this.b = tranOsSeekbar.getContext().getResources().getDimension(R.dimen.os_shadow_dy_level2);
            this.c = tranOsSeekbar.getContext().getResources().getDimension(R.dimen.os_shadow_dy_level3);
            this.d = tranOsSeekbar.getContext().getResources().getColor(R.color.os_shadow_color_level2_hios);
            int color = tranOsSeekbar.getContext().getResources().getColor(R.color.os_seekbar_shadow_color_max);
            this.e = this.d >> 24;
            this.f = color >> 24;
            this.j = tranOsSeekbar.getContext().getResources().getDimension(R.dimen.os_dimen_thumb_half_width_hios);
            this.g = ContextCompat.getColor(tranOsSeekbar.n0, R.color.os_gray_solid_secondary_color);
            if (olb.c) {
                this.n = TranOsSeekbar.Q(4);
                this.o = TranOsSeekbar.Q(4);
                this.s = ContextCompat.getColor(tranOsSeekbar.n0, R.color.os_altitude_quaternary_color_solid);
            } else {
                this.n = TranOsSeekbar.Q(3);
                this.o = TranOsSeekbar.Q(3);
                this.s = ContextCompat.getColor(tranOsSeekbar.n0, R.color.os_altitude_secondary_color);
            }
        }
    }

    public interface i {
        void a(TranOsSeekbar tranOsSeekbar, int i, float f, boolean z);

        void b(TranOsSeekbar tranOsSeekbar);

        void c(TranOsSeekbar tranOsSeekbar);
    }

    public TranOsSeekbar(Context context) {
        this(context, null);
    }

    public static int Q(int i2) {
        return (int) TypedValue.applyDimension(1, i2, Resources.getSystem().getDisplayMetrics());
    }

    private int getContentHeight() {
        return (int) (olb.c ? this.t : Math.max((int) (((this.s * this.x) + (this.p * this.G)) * 2.0f), this.e));
    }

    private float getThumbHalfSizeOnTouchDown() {
        return olb.c ? this.A : (this.q * this.x) + (this.p * this.G);
    }

    public final float I(float f2) {
        float f3 = this.l;
        if (f2 <= f3) {
            return f3;
        }
        float f4 = this.m;
        return f2 >= f4 ? f4 : f2;
    }

    public final float J(float f2) {
        return (((f2 - this.l) * this.g) / this.j) + this.b;
    }

    public void K(h hVar) {
        this.b = hVar.k;
        this.c = hVar.l;
        this.d = hVar.m;
        this.N = hVar.p;
        this.O = hVar.q;
        this.e = hVar.n;
        this.Q = hVar.r;
        this.R = hVar.s;
        this.f = hVar.o;
        int i2 = hVar.u;
        int i3 = hVar.t;
        float f2 = (i2 - i3) * 0.5f;
        this.p = f2;
        if (f2 < 0.0f) {
            this.p = 0.0f;
        }
        float f3 = i3 * 0.5f;
        this.q = f3;
        if (hVar.v < i3) {
            hVar.v = i3;
        }
        this.r = hVar.v * 0.5f;
        this.s = f3;
        this.u = f3;
        float f4 = hVar.w;
        this.x = f4;
        float f5 = this.p;
        if (f5 != 0.0f) {
            this.G = ((i2 * hVar.x) - (i3 * f4)) / (f5 * 2.0f);
        }
        if (this.G < 1.0f) {
            this.G = 1.0f;
        }
        U();
        i iVar = this.l0;
        if (iVar != null) {
            iVar.a(this, getProgress(), getProgressFloat(), false);
        }
        this.t = hVar.y;
        this.C = hVar.a;
        this.z = hVar.i;
        this.y = hVar.h;
        this.D = hVar.c;
        float f6 = hVar.b;
        this.E = f6;
        this.F = f6;
        int i4 = hVar.d & 16777215;
        int i5 = hVar.e;
        this.T = i4 | (i5 << 24);
        this.A = hVar.j;
        this.W = hVar.f;
        this.U = i5;
        this.V = i5;
        this.P = hVar.g;
        this.p0 = null;
        requestLayout();
    }

    public final ValueAnimator L(float f2, float f3) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.25f, 0.0f, 0.0f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator M() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.5f, 1.0f);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.4f, 0.0f, 0.2f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new d());
        valueAnimatorOfFloat.addListener(new e());
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator N() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.5f, 1.0f);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.4f, 0.0f, 0.2f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new f());
        valueAnimatorOfFloat.addListener(new g());
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator O(float f2, float f3) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setInterpolator(new eb7());
        valueAnimatorOfFloat.addUpdateListener(new c());
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator P(float f2, float f3) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.4f, 0.0f, 0.2f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new a());
        return valueAnimatorOfFloat;
    }

    public final void R(Canvas canvas) {
        float f2 = this.l;
        float f3 = this.m;
        float f4 = this.i;
        if (!this.a0 && !this.c0) {
            this.h = ((this.j / this.g) * (this.d - this.b)) + f2;
        }
        this.m0.setColor(this.N);
        this.m0.setStrokeWidth(this.e);
        float f5 = this.B;
        float f6 = this.p;
        canvas.drawLine((f2 - f5) + f6, f4, (f3 + f5) - f6, f4, this.m0);
        float f7 = this.h;
        this.m0.setColor(this.O);
        this.m0.setStrokeWidth(this.f);
        canvas.drawLine((f2 - this.B) + this.p, f4, f7, f4, this.m0);
        this.o0.setStyle(Paint.Style.FILL);
        this.o0.setColor(this.R);
        float f8 = this.B;
        float f9 = f7 - f8;
        float f10 = f7 + f8;
        float f11 = this.i;
        float f12 = this.t;
        float f13 = f11 - (f12 / 2.0f);
        float f14 = (f12 / 2.0f) + f11;
        float fH = olb.h(this.n0, (int) (f12 / 2.0f));
        this.o0.setShadowLayer(this.C, 0.0f, this.F, this.T);
        if (!isEnabled()) {
            this.o0.setColor(this.P);
        }
        canvas.drawRoundRect(f9, f13, f10, f14, fH, fH, this.o0);
    }

    public final void S(Canvas canvas) {
        float f2;
        float f3;
        float f4 = this.l;
        float f5 = this.m;
        float f6 = this.i;
        if (!this.a0 && !this.c0) {
            this.h = ((this.j / this.g) * (this.d - this.b)) + f4;
        }
        this.m0.setColor(this.N);
        this.m0.setStrokeWidth(this.e);
        float f7 = this.B;
        float f8 = this.p;
        canvas.drawLine((f4 - f7) + f8, f6, (f5 + f7) - f8, f6, this.m0);
        float f9 = this.h;
        this.m0.setColor(this.O);
        this.m0.setStrokeWidth(this.f);
        canvas.drawLine((f4 - this.B) + this.p, f6, f9, f6, this.m0);
        this.o0.setColor(this.Q);
        Paint paint = this.o0;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        boolean zK0 = k0();
        float f10 = this.v;
        float f11 = this.u;
        float f12 = this.i;
        float f13 = this.s;
        float f14 = f12 - (f13 * f10);
        float f15 = f12 + (f13 * f10);
        int i2 = this.S;
        if (i2 == 0) {
            float f16 = this.q;
            float f17 = f9 - ((f11 + (f11 - f16)) * f10);
            f2 = f9 + (f16 * f10);
            f3 = f17;
        } else if (i2 == 1 || i2 != 2) {
            float f18 = f11 * f10;
            f3 = f9 - f18;
            f2 = f9 + f18;
        } else {
            float f19 = this.q;
            float f20 = f9 - (f19 * f10);
            f2 = f9 + ((f11 + (f11 - f19)) * f10);
            f3 = f20;
        }
        float f21 = this.p * this.w;
        float fMax = Math.max(f3, f21);
        float fMin = Math.min(f2, getWidth() - f21);
        float f22 = this.s * f10;
        float f23 = f22 + f21;
        canvas.drawRoundRect(Math.max(fMax - f21, 0.0f), f14 - f21, Math.min(fMin + f21, getWidth()), f15 + f21, f23, f23, this.o0);
        this.o0.setStyle(style);
        this.o0.setColor(this.R);
        canvas.drawRoundRect(fMax, f14, fMin, f15, f22, f22, this.o0);
        if (zK0) {
            invalidate();
        }
    }

    public final int T(int i2) {
        return Math.max(i2, olb.h(getContext(), olb.c ? 30 : 20));
    }

    public final void U() {
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
        this.g = f7 - f5;
        setProgress(this.d);
    }

    public final boolean V() {
        ValueAnimator valueAnimator = this.k0;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public final void W(MotionEvent motionEvent) {
        if (this.a0) {
            float fI = I(motionEvent.getX());
            float fAbs = Math.abs(fI - this.n);
            this.o = fAbs;
            if (fI == this.k || fAbs <= Q(1)) {
                return;
            }
            if (!this.e0 && !this.b0) {
                e0(this.h, fI, 250L);
            } else if (V()) {
                this.I = fI;
            } else {
                this.k = fI;
                this.h = fI;
                this.d = J(fI);
                i iVar = this.l0;
                if (iVar != null) {
                    iVar.a(this, getProgress(), getProgressFloat(), true);
                }
                invalidate();
            }
            this.e0 = true;
        }
    }

    public final void X(MotionEvent motionEvent) {
        if (!this.a0) {
            if (this.u != this.q) {
                float targValue = this.f0.getTargValue();
                float f2 = this.q;
                if (targValue != f2) {
                    i0(this.u, f2);
                    invalidate();
                    return;
                }
                return;
            }
            return;
        }
        if (!this.d0) {
            f0(1.0f, this.x);
            this.M = motionEvent.getX();
            this.k = this.h;
            return;
        }
        float fI = I(motionEvent.getX());
        this.o = Math.abs(fI - this.n);
        boolean z = false;
        if (Math.abs(fI - this.k) >= Q(1) && this.o > Q(1)) {
            if (this.e0 || this.b0) {
                float fAbs = Math.abs(fI - this.M);
                if (fAbs < Q(1)) {
                    fAbs = 0.0f;
                }
                this.S = 1;
                float f3 = this.q + (fAbs * 1.3f);
                float f4 = this.r;
                if (f3 > f4) {
                    f3 = f4;
                }
                if (V()) {
                    this.I = fI;
                    this.L = f3;
                } else {
                    if (!this.g0.e() && (!this.f0.e() || olb.c)) {
                        z = true;
                    }
                    i0(this.u, f3);
                    c0(this.h, fI);
                    if (z) {
                        invalidate();
                    }
                }
            } else {
                d0(this.h, fI, 250L);
            }
            this.k = fI;
            this.e0 = true;
        } else if (!V() && this.u != this.q) {
            boolean z2 = (this.g0.e() || this.f0.e()) ? false : true;
            i0(this.u, this.q);
            if (z2) {
                invalidate();
            }
        }
        this.M = fI;
    }

    public final void Y(MotionEvent motionEvent) {
        float fI = I(motionEvent.getX());
        g0(this.C, this.z);
        if (this.h != fI) {
            if (this.d0 && V() && Math.abs(this.k - fI) < Q(6)) {
                this.I = fI;
            } else {
                e0(this.h, fI, 250L);
            }
        }
    }

    public final void Z(MotionEvent motionEvent) {
        this.f0.d();
        this.g0.d();
        float fI = I(motionEvent.getX());
        if (this.d0 && !olb.c) {
            f0(this.v, 1.0f);
            boolean zV = V();
            if (zV) {
                this.L = this.q;
            }
            if (!zV) {
                float f2 = this.u;
                float f3 = this.q;
                if (f2 != f3) {
                    h0(f2, f3);
                }
            }
        }
        if (this.h != fI) {
            if (this.d0 && V() && Math.abs(this.k - fI) < Q(6)) {
                this.I = fI;
            } else {
                d0(this.h, fI, 250L);
            }
        }
        this.k = fI;
    }

    public final int a0() {
        TypedValue typedValue = new TypedValue();
        return ContextCompat.getColor(this.n0, this.n0.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? typedValue.resourceId : R.color.os_platform_basic_color_hios);
    }

    public final void b0() {
        if (olb.c) {
            this.B = this.A;
        } else {
            this.B = this.q + this.p;
        }
    }

    public final void c0(float f2, float f3) {
        if (!this.g0.e()) {
            this.g0.set(f2);
        }
        this.g0.setTargValue(f3);
    }

    public final void d0(float f2, float f3, long j) {
        this.c0 = true;
        ValueAnimator valueAnimator = this.k0;
        if (valueAnimator == null) {
            this.k0 = M();
        } else if (valueAnimator.isRunning()) {
            this.k0.cancel();
            this.k0 = M();
        }
        this.k0.setDuration(j);
        this.S = 1;
        float fAbs = Math.abs(f3 - f2);
        float f4 = this.q;
        if (fAbs > f4) {
            float f5 = ((fAbs - f4) * 0.18f) + f4;
            float f6 = this.r;
            if (f5 > f6) {
                f5 = f6;
            }
            this.J = this.u;
            this.K = f5;
            this.L = f4;
        } else {
            this.J = this.u;
            this.K = f4;
            this.L = f4;
        }
        this.H = f2;
        this.I = f3;
        this.k0.start();
    }

    public final void e0(float f2, float f3, long j) {
        this.c0 = true;
        ValueAnimator valueAnimator = this.k0;
        if (valueAnimator == null) {
            this.k0 = N();
        } else if (valueAnimator.isRunning()) {
            this.k0.cancel();
            this.k0 = N();
        }
        this.k0.setDuration(j);
        this.H = f2;
        this.I = f3;
        this.k0.start();
    }

    public final void f0(float f2, float f3) {
        ValueAnimator valueAnimator = this.i0;
        if (valueAnimator == null) {
            this.i0 = L(f2, f3);
        } else if (valueAnimator.isRunning()) {
            this.i0.cancel();
            this.i0 = L(f2, f3);
        } else {
            this.i0.setFloatValues(f2, f3);
        }
        this.i0.start();
    }

    public final void g0(float f2, float f3) {
        ValueAnimator valueAnimator = this.j0;
        if (valueAnimator == null) {
            this.j0 = O(f2, f3);
        } else if (valueAnimator.isRunning()) {
            this.j0.cancel();
            this.j0 = O(f2, f3);
        } else {
            this.j0.setFloatValues(f2, f3);
        }
        this.j0.start();
    }

    public h getConfigBuilder() {
        if (this.p0 == null) {
            this.p0 = new h(this);
        }
        return this.p0;
    }

    public float getMax() {
        return this.c;
    }

    public float getMin() {
        return this.b;
    }

    public i getOnProgressChangedListener() {
        return this.l0;
    }

    public int getProgress() {
        ValueAnimator valueAnimator = this.k0;
        return Math.round((valueAnimator == null || !valueAnimator.isRunning()) ? this.d : J(this.I));
    }

    public float getProgressFloat() {
        ValueAnimator valueAnimator = this.k0;
        return (valueAnimator == null || !valueAnimator.isRunning()) ? this.d : J(this.I);
    }

    public final void h0(float f2, float f3) {
        ValueAnimator valueAnimator = this.h0;
        if (valueAnimator == null) {
            this.h0 = P(f2, f3);
        } else if (valueAnimator.isRunning()) {
            this.h0.cancel();
            this.h0 = P(f2, f3);
        } else {
            this.h0.setFloatValues(f2, f3);
        }
        this.h0.start();
    }

    public final void i0(float f2, float f3) {
        if (!this.f0.e()) {
            this.f0.set(f2);
        }
        this.f0.setTargValue(f3);
    }

    public final int j0() {
        TypedValue typedValue = new TypedValue();
        return ContextCompat.getColor(this.n0, this.n0.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? typedValue.resourceId : R.color.os_platform_basic_color_hios);
    }

    public final boolean k0() {
        boolean zF = false;
        if (!V()) {
            if (this.f0.e()) {
                zF = this.f0.f(0.064f);
                this.u = this.f0.getAnimatedValue();
            }
            if (this.g0.e()) {
                zF |= this.g0.f(0.256f);
                float animatedValue = this.g0.getAnimatedValue();
                this.h = animatedValue;
                this.d = J(animatedValue);
                i iVar = this.l0;
                if (iVar != null) {
                    iVar.a(this, getProgress(), getProgressFloat(), true);
                }
            }
        }
        return zF;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (olb.c) {
            R(canvas);
        } else {
            S(canvas);
        }
    }

    @Override
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
    }

    @Override
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int iT = T(getContentHeight() + getPaddingTop() + getPaddingBottom());
        bq5.p(q0, "height = " + iT);
        setMeasuredDimension(View.resolveSize(Q(180), i2), iT);
        b0();
        this.l = ((float) getPaddingLeft()) + this.B + ((float) olb.h(getContext(), 8));
        float measuredWidth = ((getMeasuredWidth() - getPaddingRight()) - this.B) - olb.h(getContext(), 8);
        this.m = measuredWidth;
        this.j = measuredWidth - this.l;
        this.i = getMeasuredHeight() * 0.5f;
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
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        post(new Runnable() {
            @Override
            public void run() {
                TranOsSeekbar.this.requestLayout();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0027  */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    /* JADX WARN: Code duplicated, block: B:19:0x0036  */
    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    /* JADX WARN: Code duplicated, block: B:23:0x0043  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        i iVar;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zIsEnabled = isEnabled();
            this.a0 = zIsEnabled;
            if (zIsEnabled) {
                if (motionEvent.getX() < this.l - this.B || motionEvent.getX() > this.m + this.B) {
                    this.a0 = false;
                    return false;
                }
                this.n = Math.min(Math.max(this.l, motionEvent.getX()), this.m);
                i iVar2 = this.l0;
                if (iVar2 != null) {
                    iVar2.c(this);
                }
                boolean z = Math.abs(motionEvent.getX() - this.h) <= getThumbHalfSizeOnTouchDown();
                this.b0 = z;
                if (z && olb.c) {
                    g0(this.C, this.y);
                }
            }
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.a0) {
                if (olb.c) {
                    Y(motionEvent);
                } else {
                    Z(motionEvent);
                }
            }
            this.a0 = false;
            iVar = this.l0;
            if (iVar != null) {
                iVar.b(this);
            }
            this.d0 = false;
            this.e0 = false;
        } else if (actionMasked == 2) {
            this.a0 = isEnabled();
            if (olb.c) {
                W(motionEvent);
            } else {
                X(motionEvent);
            }
            this.d0 = true;
        } else if (actionMasked == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.a0) {
                if (olb.c) {
                    Y(motionEvent);
                } else {
                    Z(motionEvent);
                }
            }
            this.a0 = false;
            iVar = this.l0;
            if (iVar != null) {
                iVar.b(this);
            }
            this.d0 = false;
            this.e0 = false;
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
            this.O = a0();
            this.Q = j0();
            if (olb.c) {
                this.R = ContextCompat.getColor(this.n0, R.color.os_altitude_quaternary_color_solid);
            } else {
                this.R = ContextCompat.getColor(this.n0, R.color.os_seekbar_thumbinside_color);
            }
        } else {
            this.O = ContextCompat.getColor(this.n0, R.color.os_gray_secondary_color);
            this.Q = ContextCompat.getColor(this.n0, R.color.os_gray_solid_primary_color);
            this.R = ContextCompat.getColor(this.n0, R.color.os_altitude_secondary_color);
        }
        invalidate();
    }

    public void setOnProgressChangedListener(i iVar) {
        this.l0 = iVar;
    }

    public void setProgress(float f2) {
        this.d = f2;
        i iVar = this.l0;
        if (iVar != null) {
            iVar.a(this, getProgress(), getProgressFloat(), false);
        }
        postInvalidate();
    }

    public void setSecondTrackColor(int i2) {
        if (this.O != i2) {
            this.O = i2;
            invalidate();
        }
    }

    public void setThumbInsideColor(int i2) {
        if (this.R != i2) {
            this.R = i2;
            invalidate();
        }
    }

    public void setThumbInsideUnAbleColorHios(int i2) {
        if (this.P != i2) {
            this.P = i2;
            invalidate();
        }
    }

    public void setThumbOutColor(int i2) {
        if (this.Q != i2) {
            this.Q = i2;
            invalidate();
        }
    }

    public void setTrackColor(int i2) {
        if (this.N != i2) {
            this.N = i2;
            invalidate();
        }
    }

    public TranOsSeekbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TranOsSeekbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.v = 1.0f;
        this.w = 1.0f;
        this.S = 0;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
        this.e0 = false;
        this.f0 = new uua();
        uua uuaVar = new uua();
        this.g0 = uuaVar;
        this.n0 = context;
        getConfigBuilder().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSSeekbar, i2, 0);
        this.b = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarMin, 0.0f);
        this.c = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarMax, 100.0f);
        this.d = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarProgress, this.b);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSeekbar_android_enabled, isEnabled()));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.m0 = paint;
        paint.setAntiAlias(true);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        Paint paint2 = new Paint();
        this.o0 = paint2;
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        paint2.setStrokeCap(cap);
        paint2.setTextAlign(align);
        uuaVar.setMaxSpeedFractor(0.25f);
        uuaVar.setMinSpeedFractor(0.25f);
        U();
        if (olb.l0() && getRotation() == 0.0f) {
            setRotation(180.0f);
        }
    }
}
