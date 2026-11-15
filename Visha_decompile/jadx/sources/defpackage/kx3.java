package defpackage;

import android.content.Context;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class kx3 {
    public static float D = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final float[] E = new float[101];
    public static final float[] F = new float[101];
    public final float A;
    public float B;
    public final az3 C;
    public final Interpolator a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public long m;
    public int n;
    public float o;
    public float p;
    public float q;
    public boolean r;
    public boolean s;
    public float t;
    public float u;
    public int v;
    public float w;
    public float x;
    public jv9 y;
    public float z;

    public class a extends az3 {
        public a(String str) {
            super(str);
        }

        @Override
        public float a(kx3 kx3Var) {
            return kx3Var.l;
        }

        @Override
        public void b(kx3 kx3Var, float f) {
            kx3.this.l = (int) f;
        }
    }

    public static class b implements Interpolator {
        public static final float a;
        public static final float b;

        static {
            float fA = 1.0f / a(1.0f);
            a = fA;
            b = 1.0f - (fA * a(1.0f));
        }

        public static float a(float f) {
            float f2 = f * 8.0f;
            return f2 < 1.0f ? f2 - (1.0f - ((float) Math.exp(-f2))) : 0.36787945f + ((1.0f - ((float) Math.exp(1.0f - f2))) * 0.63212055f);
        }

        @Override
        public float getInterpolation(float f) {
            float fA = a * a(f);
            return fA > 0.0f ? fA + b : fA;
        }
    }

    static {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11 = 0.0f;
        float f12 = 0.0f;
        for (int i = 0; i < 100; i++) {
            float f13 = i / 100.0f;
            float f14 = 1.0f;
            while (true) {
                f = 2.0f;
                f2 = ((f14 - f11) / 2.0f) + f11;
                f3 = 3.0f;
                f4 = 1.0f - f2;
                f5 = f2 * 3.0f * f4;
                f6 = f2 * f2 * f2;
                float f15 = (((f4 * 0.175f) + (f2 * 0.35000002f)) * f5) + f6;
                if (Math.abs(f15 - f13) < 1.0E-5d) {
                    break;
                } else if (f15 > f13) {
                    f14 = f2;
                } else {
                    f11 = f2;
                }
            }
            E[i] = (f5 * ((f4 * 0.5f) + f2)) + f6;
            float f16 = 1.0f;
            while (true) {
                f7 = ((f16 - f12) / f) + f12;
                f8 = 1.0f - f7;
                f9 = f7 * f3 * f8;
                f10 = f7 * f7 * f7;
                float f17 = (((f8 * 0.5f) + f7) * f9) + f10;
                if (Math.abs(f17 - f13) < 1.0E-5d) {
                    break;
                }
                if (f17 > f13) {
                    f16 = f7;
                } else {
                    f12 = f7;
                }
                f = 2.0f;
                f3 = 3.0f;
            }
            F[i] = (f9 * ((f8 * 0.175f) + (f7 * 0.35000002f))) + f10;
        }
        float[] fArr = E;
        F[100] = 1.0f;
        fArr[100] = 1.0f;
    }

    public kx3(Context context, Interpolator interpolator) {
        this(context, interpolator, context.getApplicationInfo().targetSdkVersion >= 11);
    }

    public void c() {
        this.k = this.e;
        this.l = this.f;
        this.r = true;
    }

    public final float d(float f) {
        return this.A * 386.0878f * f;
    }

    public boolean e() {
        float f;
        float f2;
        if (this.r) {
            return false;
        }
        int iCurrentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.m);
        int i = this.n;
        if (iCurrentAnimationTimeMillis < i) {
            int i2 = this.b;
            if (i2 == 0) {
                float interpolation = this.a.getInterpolation(iCurrentAnimationTimeMillis * this.o);
                this.k = this.c + Math.round(this.p * interpolation);
                this.l = this.d + Math.round(interpolation * this.q);
            } else if (i2 == 1) {
                float f3 = iCurrentAnimationTimeMillis / i;
                int i3 = (int) (f3 * 100.0f);
                if (i3 < 100) {
                    float f4 = i3 / 100.0f;
                    int i4 = i3 + 1;
                    float[] fArr = E;
                    float f5 = fArr[i3];
                    f2 = (fArr[i4] - f5) / ((i4 / 100.0f) - f4);
                    f = f5 + ((f3 - f4) * f2);
                } else {
                    f = 1.0f;
                    f2 = 0.0f;
                }
                this.u = ((f2 * this.v) / i) * 1000.0f;
                int i5 = this.c;
                int iRound = i5 + Math.round((this.e - i5) * f);
                this.k = iRound;
                int iMin = Math.min(iRound, this.h);
                this.k = iMin;
                this.k = Math.max(iMin, this.g);
                int i6 = this.d;
                int iRound2 = i6 + Math.round(f * (this.f - i6));
                this.l = iRound2;
                int iMin2 = Math.min(iRound2, this.j);
                this.l = iMin2;
                int iMax = Math.max(iMin2, this.i);
                this.l = iMax;
                if (this.k == this.e && iMax == this.f) {
                    this.r = true;
                }
            }
        } else {
            this.k = this.e;
            this.l = this.f;
            this.r = true;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0072  */
    /* JADX WARN: Code duplicated, block: B:16:0x0074  */
    /* JADX WARN: Code duplicated, block: B:19:0x0079  */
    /* JADX WARN: Code duplicated, block: B:22:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:23:0x00c8  */
    public void f(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        int i10;
        int i11;
        float fHypot;
        float f;
        float f2;
        double dI;
        if (this.s && !this.r) {
            float currVelocity = getCurrVelocity();
            float f3 = this.e - this.c;
            float f4 = this.f - this.d;
            float fHypot2 = (float) Math.hypot(f3, f4);
            float f5 = (f3 / fHypot2) * currVelocity;
            float f6 = (f4 / fHypot2) * currVelocity;
            i10 = i3;
            float f7 = i10;
            if (Math.signum(f7) == Math.signum(f5)) {
                i11 = i4;
                float f8 = i11;
                if (Math.signum(f8) == Math.signum(f6)) {
                    i10 = (int) (f7 + f5);
                    i11 = (int) (f8 + f6);
                }
            }
            this.b = 1;
            this.r = false;
            fHypot = (float) Math.hypot(i10, i11);
            this.t = fHypot;
            this.n = j(fHypot);
            this.m = AnimationUtils.currentAnimationTimeMillis();
            this.c = i;
            this.d = i2;
            if (fHypot == 0.0f) {
                f = 1.0f;
            } else {
                f = i10 / fHypot;
            }
            f2 = fHypot != 0.0f ? i11 / fHypot : 1.0f;
            dI = i(fHypot);
            this.v = (int) (((double) Math.signum(fHypot)) * dI);
            this.g = i5;
            this.h = i6;
            this.i = i7;
            this.j = i8;
            int iRound = i + ((int) Math.round(((double) f) * dI));
            this.e = iRound;
            int iMin = Math.min(iRound, this.h);
            this.e = iMin;
            this.e = Math.max(iMin, this.g);
            if (f2 < 0.0f) {
                this.f = Math.max(i2 - i9, i2 + ((int) Math.round(dI * ((double) f2))));
            } else {
                this.f = Math.min(i2 + i9, i2 + ((int) Math.round(dI * ((double) f2))));
            }
            int iMin2 = Math.min(this.f, this.j);
            this.f = iMin2;
            this.f = Math.max(iMin2, this.i);
            this.w = 0.0f;
        }
        i10 = i3;
        i11 = i4;
        this.b = 1;
        this.r = false;
        fHypot = (float) Math.hypot(i10, i11);
        this.t = fHypot;
        this.n = j(fHypot);
        this.m = AnimationUtils.currentAnimationTimeMillis();
        this.c = i;
        this.d = i2;
        if (fHypot == 0.0f) {
            f = 1.0f;
        } else {
            f = i10 / fHypot;
        }
        if (fHypot != 0.0f) {
        }
        dI = i(fHypot);
        this.v = (int) (((double) Math.signum(fHypot)) * dI);
        this.g = i5;
        this.h = i6;
        this.i = i7;
        this.j = i8;
        int iRound2 = i + ((int) Math.round(((double) f) * dI));
        this.e = iRound2;
        int iMin3 = Math.min(iRound2, this.h);
        this.e = iMin3;
        this.e = Math.max(iMin3, this.g);
        if (f2 < 0.0f) {
            this.f = Math.max(i2 - i9, i2 + ((int) Math.round(dI * ((double) f2))));
        } else {
            this.f = Math.min(i2 + i9, i2 + ((int) Math.round(dI * ((double) f2))));
        }
        int iMin4 = Math.min(this.f, this.j);
        this.f = iMin4;
        this.f = Math.max(iMin4, this.i);
        this.w = 0.0f;
    }

    public final void g(boolean z) {
        this.r = z;
    }

    public float getCurrVelocity() {
        return this.b == 1 ? this.u : this.t - ((this.z * n()) / 2000.0f);
    }

    public final int getCurrX() {
        return this.k;
    }

    public final int getCurrY() {
        return this.l;
    }

    public final int getDuration() {
        return this.n;
    }

    public final int getFinalX() {
        return this.e;
    }

    public final int getFinalY() {
        return this.f;
    }

    public float getFixedFlingValue() {
        if (this.b != 1) {
            return 0.0f;
        }
        int iCurrentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.m);
        int i = this.n;
        if (iCurrentAnimationTimeMillis >= i || i <= 0 || this.r) {
            return this.w;
        }
        float interpolation = iCurrentAnimationTimeMillis / i;
        Interpolator interpolator = this.a;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(interpolation);
        }
        return interpolation * this.w;
    }

    public final int getStartX() {
        return this.c;
    }

    public final int getStartY() {
        return this.d;
    }

    public final double h(float f) {
        return Math.log((Math.abs(f) * 0.35f) / (this.x * this.B));
    }

    public final double i(float f) {
        double dH = h(f);
        float f2 = D;
        return ((double) (this.x * this.B)) * Math.exp((((double) f2) / (((double) f2) - 1.0d)) * dH);
    }

    public final int j(float f) {
        return (int) (Math.exp(h(f) / (((double) D) - 1.0d)) * 1000.0d);
    }

    public final boolean k() {
        return this.r;
    }

    public void l(int i, int i2, int i3, int i4, int i5) {
        this.b = 0;
        this.r = false;
        this.n = i5;
        this.m = AnimationUtils.currentAnimationTimeMillis();
        this.c = i;
        this.d = i2;
        this.e = i + i3;
        this.f = i2 + i4;
        this.p = i3;
        this.q = i4;
        this.o = 1.0f / this.n;
        this.w = 0.0f;
    }

    public void m(float f, float f2, boolean z) {
        jv9 jv9Var = this.y;
        if (jv9Var != null && jv9Var.h()) {
            this.y.c();
        }
        this.y.z(new kv9(f2).i(50.0f).g(1.1f));
        if (!z) {
            this.y.n(Math.min(this.t, 4000.0f));
        }
        this.y.m(f);
        this.y.p();
    }

    public int n() {
        return (int) (AnimationUtils.currentAnimationTimeMillis() - this.m);
    }

    public void setFinalX(int i) {
        this.e = i;
        this.p = i - this.c;
        this.r = false;
    }

    public void setFinalY(int i) {
        this.f = i;
        this.q = i - this.d;
        this.r = false;
    }

    public void setFixedFlingValue(float f) {
        this.w = f;
    }

    public final void setFriction(float f) {
        this.z = d(f);
        this.x = f;
    }

    public kx3(Context context, Interpolator interpolator, boolean z) {
        this.x = ViewConfiguration.getScrollFriction();
        a aVar = new a("scrollerSpring");
        this.C = aVar;
        this.r = true;
        if (interpolator == null) {
            this.a = new b();
        } else {
            this.a = interpolator;
        }
        this.A = context.getResources().getDisplayMetrics().density * 160.0f;
        this.z = d(ViewConfiguration.getScrollFriction());
        this.s = z;
        this.B = d(0.25f);
        if (this.y == null) {
            this.y = new jv9(this, aVar);
        }
    }
}
