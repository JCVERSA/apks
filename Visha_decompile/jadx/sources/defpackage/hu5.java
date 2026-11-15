package defpackage;

import android.view.Choreographer;

public class hu5 extends gb0 implements Choreographer.FrameCallback {
    public ur5 m;
    public float e = 1.0f;
    public boolean f = false;
    public long g = 0;
    public float h = 0.0f;
    public float i = 0.0f;
    public int j = 0;
    public float k = -2.14748365E9f;
    public float l = 2.14748365E9f;
    public boolean n = false;
    public boolean o = false;

    public void A(float f) {
        B(this.k, f);
    }

    public void B(float f, float f2) {
        if (f > f2) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f), Float.valueOf(f2)));
        }
        ur5 ur5Var = this.m;
        float fP = ur5Var == null ? -3.4028235E38f : ur5Var.p();
        ur5 ur5Var2 = this.m;
        float f3 = ur5Var2 == null ? Float.MAX_VALUE : ur5Var2.f();
        float fB = xp6.b(f, fP, f3);
        float fB2 = xp6.b(f2, fP, f3);
        if (fB == this.k && fB2 == this.l) {
            return;
        }
        this.k = fB;
        this.l = fB2;
        z((int) xp6.b(this.i, fB, fB2));
    }

    public void C(int i) {
        B(i, (int) this.l);
    }

    public void E(float f) {
        this.e = f;
    }

    public void F(boolean z) {
        this.o = z;
    }

    public final void G() {
        if (this.m == null) {
            return;
        }
        float f = this.i;
        if (f < this.k || f > this.l) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.k), Float.valueOf(this.l), Float.valueOf(this.i)));
        }
    }

    @Override
    public void a() {
        super.a();
        c(q());
    }

    @Override
    public void cancel() {
        a();
        u();
    }

    @Override
    public void doFrame(long j) {
        t();
        if (this.m == null || !isRunning()) {
            return;
        }
        if (yh5.h()) {
            yh5.b("LottieValueAnimator#doFrame");
        }
        long j2 = this.g;
        float fM = (j2 != 0 ? j - j2 : 0L) / m();
        float f = this.h;
        if (q()) {
            fM = -fM;
        }
        float f2 = f + fM;
        boolean zD = xp6.d(f2, o(), n());
        float f3 = this.h;
        float fB = xp6.b(f2, o(), n());
        this.h = fB;
        if (this.o) {
            fB = (float) Math.floor(fB);
        }
        this.i = fB;
        this.g = j;
        if (!this.o || this.h != f3) {
            h();
        }
        if (!zD) {
            if (getRepeatCount() == -1 || this.j < getRepeatCount()) {
                e();
                this.j++;
                if (getRepeatMode() == 2) {
                    this.f = !this.f;
                    x();
                } else {
                    float fN = q() ? n() : o();
                    this.h = fN;
                    this.i = fN;
                }
                this.g = j;
            } else {
                float fO = this.e < 0.0f ? o() : n();
                this.h = fO;
                this.i = fO;
                u();
                c(q());
            }
        }
        G();
        if (yh5.h()) {
            yh5.c("LottieValueAnimator#doFrame");
        }
    }

    @Override
    public float getAnimatedFraction() {
        float fO;
        float fN;
        float fO2;
        if (this.m == null) {
            return 0.0f;
        }
        if (q()) {
            fO = n() - this.i;
            fN = n();
            fO2 = o();
        } else {
            fO = this.i - o();
            fN = n();
            fO2 = o();
        }
        return fO / (fN - fO2);
    }

    @Override
    public Object getAnimatedValue() {
        return Float.valueOf(k());
    }

    @Override
    public long getDuration() {
        ur5 ur5Var = this.m;
        if (ur5Var == null) {
            return 0L;
        }
        return (long) ur5Var.d();
    }

    public void i() {
        this.m = null;
        this.k = -2.14748365E9f;
        this.l = 2.14748365E9f;
    }

    @Override
    public boolean isRunning() {
        return this.n;
    }

    public void j() {
        u();
        c(q());
    }

    public float k() {
        ur5 ur5Var = this.m;
        if (ur5Var == null) {
            return 0.0f;
        }
        return (this.i - ur5Var.p()) / (this.m.f() - this.m.p());
    }

    public float l() {
        return this.i;
    }

    public final float m() {
        ur5 ur5Var = this.m;
        if (ur5Var == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / ur5Var.i()) / Math.abs(this.e);
    }

    public float n() {
        ur5 ur5Var = this.m;
        if (ur5Var == null) {
            return 0.0f;
        }
        float f = this.l;
        return f == 2.14748365E9f ? ur5Var.f() : f;
    }

    public float o() {
        ur5 ur5Var = this.m;
        if (ur5Var == null) {
            return 0.0f;
        }
        float f = this.k;
        return f == -2.14748365E9f ? ur5Var.p() : f;
    }

    public float p() {
        return this.e;
    }

    public final boolean q() {
        return p() < 0.0f;
    }

    public void r() {
        u();
        d();
    }

    public void s() {
        this.n = true;
        g(q());
        z((int) (q() ? n() : o()));
        this.g = 0L;
        this.j = 0;
        t();
    }

    @Override
    public void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.f) {
            return;
        }
        this.f = false;
        x();
    }

    public void t() {
        if (isRunning()) {
            v(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    public void u() {
        v(true);
    }

    public void v(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.n = false;
        }
    }

    public void w() {
        this.n = true;
        t();
        this.g = 0L;
        if (q() && l() == o()) {
            z(n());
        } else if (!q() && l() == n()) {
            z(o());
        }
        f();
    }

    public void x() {
        E(-p());
    }

    public void y(ur5 ur5Var) {
        boolean z = this.m == null;
        this.m = ur5Var;
        if (z) {
            B(Math.max(this.k, ur5Var.p()), Math.min(this.l, ur5Var.f()));
        } else {
            B((int) ur5Var.p(), (int) ur5Var.f());
        }
        float f = this.i;
        this.i = 0.0f;
        this.h = 0.0f;
        z((int) f);
        h();
    }

    public void z(float f) {
        if (this.h == f) {
            return;
        }
        float fB = xp6.b(f, o(), n());
        this.h = fB;
        if (this.o) {
            fB = (float) Math.floor(fB);
        }
        this.i = fB;
        this.g = 0L;
        h();
    }
}
