package defpackage;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.gms.common.ConnectionResult;

public class vt7 {
    public static final Interpolator e = new a();
    public int a;
    public final b b;
    public TimeInterpolator c;
    public final boolean d;

    public class a implements Interpolator {
        @Override
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    public static class b {
        public static float v = (float) (Math.log(0.78d) / Math.log(0.9d));
        public static final float[] w = new float[101];
        public static final float[] x = new float[101];
        public int a;
        public int b;
        public int c;
        public int d;
        public float e;
        public float f;
        public long g;
        public int h;
        public int i;
        public int j;
        public boolean k;
        public int l;
        public Context o;
        public jv9 p;
        public float r;
        public float s;
        public f43.r t;
        public final az3 u;
        public float m = ViewConfiguration.getScrollFriction();
        public int n = 0;
        public boolean q = true;

        public class a extends az3 {
            public a(String str) {
                super(str);
            }

            @Override
            public float a(b bVar) {
                return bVar.b;
            }

            @Override
            public void b(b bVar, float f) {
                bVar.q = false;
                bVar.b = (int) f;
                Log.d("OverScroller", "setValue: 卡顿过滤 SPRING_PROPERTY value = " + f);
            }
        }

        public class C0454b implements f43.r {
            public C0454b() {
            }

            @Override
            public void a(f43 f43Var, float f, float f2) {
                if (b.this.t != null) {
                    b.this.t.a(f43Var, f, f2);
                }
            }
        }

        public class c implements f43.q {
            public c() {
            }

            @Override
            public void a(f43 f43Var, boolean z, float f, float f2) {
                b.this.o();
                b.this.n = 0;
                b.this.b = (int) f;
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
                w[i] = (f5 * ((f4 * 0.5f) + f2)) + f6;
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
                x[i] = (f9 * ((f8 * 0.175f) + (f7 * 0.35000002f))) + f10;
            }
            float[] fArr = w;
            x[100] = 1.0f;
            fArr[100] = 1.0f;
        }

        public b(Context context) {
            this.s = 3.0f;
            a aVar = new a("splineOverScrollerSpring");
            this.u = aVar;
            this.o = context;
            this.k = true;
            this.s = context.getResources().getDisplayMetrics().density;
            this.r = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
            jv9 jv9Var = new jv9(this, aVar);
            this.p = jv9Var;
            jv9Var.b(new C0454b());
            this.p.a(new c());
        }

        public static float q(int i) {
            return i > 0 ? -2000.0f : 2000.0f;
        }

        public void A(int i, int i2, int i3, float f) {
            this.k = false;
            this.a = i;
            this.b = i;
            this.c = i + i2;
            this.g = AnimationUtils.currentAnimationTimeMillis();
            this.h = i3;
            this.f = 0.0f;
            this.d = 0;
        }

        public final void B(int i, int i2, int i3) {
            this.k = false;
            this.n = 3;
            this.a = i;
            this.b = i;
            this.c = i2;
            jv9 jv9Var = this.p;
            if (jv9Var != null && jv9Var.h()) {
                this.p.c();
            }
            this.p.z(new kv9(this.c).i(200.0f).g(1.0f));
            this.p.n(i3);
            this.p.p();
        }

        public boolean C() {
            float f;
            float f2;
            double d;
            if (this.n == 3) {
                return this.k;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.g;
            if (jCurrentAnimationTimeMillis == 0) {
                return this.h > 0;
            }
            int i = this.h;
            if (jCurrentAnimationTimeMillis > i) {
                return false;
            }
            int i2 = this.n;
            if (i2 == 0) {
                int i3 = this.i;
                float f3 = jCurrentAnimationTimeMillis / i3;
                int i4 = (int) (f3 * 100.0f);
                if (i4 < 100) {
                    float f4 = i4 / 100.0f;
                    int i5 = i4 + 1;
                    float[] fArr = w;
                    float f5 = fArr[i4];
                    f2 = (fArr[i5] - f5) / ((i5 / 100.0f) - f4);
                    f = f5 + ((f3 - f4) * f2);
                } else {
                    f = 1.0f;
                    f2 = 0.0f;
                }
                int i6 = this.j;
                this.e = ((f2 * i6) / i3) * 1000.0f;
                d = f * i6;
            } else if (i2 == 1) {
                float f6 = jCurrentAnimationTimeMillis / i;
                float f7 = f6 * f6;
                float fSignum = Math.signum(this.d);
                int i7 = this.l;
                this.e = fSignum * i7 * 6.0f * ((-f6) + f7);
                d = i7 * fSignum * ((3.0f * f7) - ((2.0f * f6) * f7));
            } else if (i2 != 2) {
                d = 0.0d;
            } else {
                float f8 = jCurrentAnimationTimeMillis / 1000.0f;
                int i8 = this.d;
                float f9 = this.f;
                this.e = i8 + (f9 * f8);
                d = (i8 * f8) + (((f9 * f8) * f8) / 2.0f);
            }
            this.b = this.a + ((int) Math.round(d));
            return true;
        }

        public void D(float f) {
            if (this.n == 3) {
                return;
            }
            int i = this.a;
            this.b = i + Math.round(f * (this.c - i));
        }

        public final void m(int i, int i2, int i3) {
            float fAbs = Math.abs((i3 - i) / (i2 - i));
            int i4 = (int) (fAbs * 100.0f);
            if (i4 < 100) {
                float f = i4 / 100.0f;
                int i5 = i4 + 1;
                float[] fArr = x;
                float f2 = fArr[i4];
                this.h = (int) (this.h * (f2 + (((fAbs - f) / ((i5 / 100.0f) - f)) * (fArr[i5] - f2))));
            }
        }

        public boolean n() {
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    return false;
                }
                if (i == 2) {
                    this.g += (long) this.h;
                    B(this.c, this.a, 0);
                }
            } else {
                if (this.h >= this.i) {
                    return false;
                }
                int i2 = this.c;
                this.a = i2;
                this.b = i2;
                int i3 = (int) this.e;
                this.d = i3;
                this.f = q(i3);
                this.g += (long) this.h;
                u();
            }
            C();
            return true;
        }

        public void o() {
            jv9 jv9Var = this.p;
            if (jv9Var != null && jv9Var.h()) {
                this.p.c();
            }
            this.b = this.c;
            this.k = true;
        }

        public void p(int i, int i2, int i3, int i4, int i5) {
            double dS;
            this.l = i5;
            this.k = false;
            if (Math.abs(i2) < this.s * 1500.0f) {
                i2 = i2 < 0 ? -1500 : ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            }
            this.d = i2;
            float f = i2;
            this.e = f;
            this.i = 0;
            this.h = 0;
            this.g = AnimationUtils.currentAnimationTimeMillis();
            this.a = i;
            this.b = i;
            if (i > i4 || i < i3) {
                if (i > i4) {
                    i3 = i4;
                }
                B(i, i3, 0);
                return;
            }
            this.n = 0;
            if (i2 != 0) {
                int iT = t(i2);
                this.i = iT;
                this.h = iT;
                dS = s(i2);
            } else {
                dS = 0.0d;
            }
            int iSignum = (int) (dS * ((double) Math.signum(f)));
            this.j = iSignum;
            int i6 = i + iSignum;
            this.c = i6;
            if (i6 < i3) {
                m(this.a, i6, i3);
                this.c = i3;
            }
            int i7 = this.c;
            if (i7 > i4) {
                m(this.a, i7, i4);
                this.c = i4;
            }
        }

        public final double r(int i) {
            return Math.log((Math.abs(i) * 0.35f) / (this.m * this.r));
        }

        public final double s(int i) {
            double dR = r(i);
            float f = v;
            return ((double) (this.m * this.r)) * Math.exp((((double) f) / (((double) f) - 1.0d)) * dR);
        }

        public void setSpringAnimationListener(f43.r rVar) {
            this.t = rVar;
        }

        public final int t(int i) {
            return (int) (Math.exp(r(i) / (((double) v) - 1.0d)) * 1000.0d);
        }

        public final void u() {
            this.n = 3;
            int i = this.a;
            B(i, i, (int) (this.d * 0.85f));
        }

        public void v(int i) {
            jv9 jv9Var;
            this.c = i;
            if (this.n == 3 && (jv9Var = this.p) != null) {
                jv9Var.s(i);
            }
            this.j = this.c - this.a;
            this.k = false;
        }

        public void w(float f) {
            this.m = f;
        }

        public void x() {
            jv9 jv9Var = this.p;
            if (jv9Var != null && jv9Var.h()) {
                this.p.c();
            }
            this.k = true;
        }

        public boolean y(int i, int i2, int i3) {
            this.c = i;
            this.a = i;
            this.b = i;
            this.d = 0;
            this.g = AnimationUtils.currentAnimationTimeMillis();
            this.h = 0;
            if (i < i2) {
                B(i, i2, 0);
            } else if (i > i3) {
                B(i, i3, 0);
            }
            return !this.k;
        }

        public void z(int i, int i2, int i3) {
            A(i, i2, i3, 0.0f);
        }
    }

    public vt7(Context context) {
        this(context, null);
    }

    public void a() {
        this.b.o();
    }

    public boolean b() {
        if (d()) {
            return false;
        }
        int i = this.a;
        if (i != 0) {
            if (i == 1 && !this.b.k && !this.b.C() && !this.b.n()) {
                this.b.o();
            }
        } else {
            if (e()) {
                return true;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.b.g;
            int i2 = this.b.h;
            if (jCurrentAnimationTimeMillis < i2) {
                this.b.D(this.c.getInterpolation(jCurrentAnimationTimeMillis / i2));
            } else {
                a();
            }
        }
        return true;
    }

    public void c(int i, int i2, int i3, int i4, int i5) {
        if (this.d && !d()) {
            float f = this.b.e;
            float f2 = i2;
            if (Math.signum(f2) == Math.signum(f)) {
                i2 = (int) (f2 + f);
            }
        }
        this.a = 1;
        this.b.p(i, i2, i3, i4, i5);
    }

    public final boolean d() {
        return this.b.k;
    }

    public boolean e() {
        return this.b.n == 3 && !d();
    }

    public void f() {
        this.b.x();
    }

    public boolean g(int i, int i2, int i3) {
        this.a = 1;
        return this.b.y(i, i2, i3);
    }

    public final int getCurrPos() {
        this.b.q = true;
        return this.b.b;
    }

    public float getCurrVelocity() {
        return this.b.e;
    }

    public final int getDuration() {
        return this.b.h;
    }

    public final int getFinalPos() {
        return this.b.c;
    }

    public b getScroller() {
        return this.b;
    }

    public final int getStartPos() {
        return this.b.a;
    }

    public void h(int i, int i2, int i3) {
        this.a = 0;
        this.b.z(i, i2, i3);
    }

    public void setFinalPos(int i) {
        this.b.v(i);
    }

    public final void setFriction(float f) {
        this.b.w(f);
    }

    public void setInterpolator(TimeInterpolator timeInterpolator) {
        if (timeInterpolator == null) {
            this.c = e;
        } else {
            this.c = timeInterpolator;
        }
    }

    public vt7(Context context, Interpolator interpolator) {
        this(context, interpolator, true);
    }

    public vt7(Context context, Interpolator interpolator, boolean z) {
        if (interpolator == null) {
            this.c = e;
        } else {
            this.c = interpolator;
        }
        this.d = z;
        this.b = new b(context);
    }
}
