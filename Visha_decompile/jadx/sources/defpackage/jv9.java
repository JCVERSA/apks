package defpackage;

import android.os.SystemClock;

public final class jv9 extends f43 {
    public kv9 B;
    public float C;
    public boolean D;
    public long E;
    public long F;
    public float G;
    public float H;
    public float I;
    public long J;

    public jv9(fz3 fz3Var) {
        super(fz3Var);
        this.B = null;
        this.C = Float.MAX_VALUE;
        this.D = false;
        this.E = 0L;
        this.F = 0L;
        this.G = 0.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.J = 0L;
    }

    public void A() {
        if (!u()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (this.f) {
            this.D = true;
        }
    }

    @Override
    public void c() {
        super.c();
        if (Float.compare(this.C, Float.MAX_VALUE) != 0) {
            kv9 kv9Var = this.B;
            if (kv9Var == null) {
                this.B = new kv9(this.C);
            } else {
                kv9Var.h(this.C);
            }
            this.C = Float.MAX_VALUE;
        }
    }

    @Override
    public void o(float f) {
    }

    @Override
    public void p() {
        y();
        this.B.j(g());
        super.p();
    }

    @Override
    public boolean r(long j) {
        if (this.D) {
            if (Float.compare(this.C, Float.MAX_VALUE) != 0) {
                this.B.h(this.C);
                this.C = Float.MAX_VALUE;
            }
            this.b = this.B.b();
            this.a = 0.0f;
            this.D = false;
            return true;
        }
        x();
        if (Float.compare(this.C, Float.MAX_VALUE) != 0) {
            long j2 = j / 2;
            f43.p pVarM = this.B.m(this.b, this.a, j2);
            this.B.h(this.C);
            this.C = Float.MAX_VALUE;
            f43.p pVarM2 = this.B.m(pVarM.a, pVarM.b, j2);
            this.b = pVarM2.a;
            this.a = pVarM2.b;
        } else {
            f43.p pVarM3 = this.B.m(this.b, this.a, j);
            this.b = pVarM3.a;
            this.a = pVarM3.b;
        }
        float fMax = Math.max(this.b, this.h);
        this.b = fMax;
        float fMin = Math.min(fMax, this.g);
        this.b = fMin;
        if (!w(fMin, this.a)) {
            return false;
        }
        this.b = this.B.b();
        this.a = 0.0f;
        return true;
    }

    public void s(float f) {
        if (h()) {
            this.C = f;
            return;
        }
        if (this.B == null) {
            this.B = new kv9(f);
        }
        this.B.h(f);
        p();
    }

    public void t(float f, float f2, float f3) {
        kv9 kv9Var = this.B;
        if (kv9Var == null) {
            kv9 kv9Var2 = new kv9(f3);
            this.B = kv9Var2;
            kv9Var2.i(f);
            this.B.g(f2);
            return;
        }
        kv9Var.f(this.J);
        this.B.a(f, f2);
        if (h()) {
            s(f3);
        } else {
            this.B.h(f3);
        }
    }

    public boolean u() {
        return this.B.b > 0.0d;
    }

    public kv9 v() {
        return this.B;
    }

    public boolean w(float f, float f2) {
        return this.B.d(f, f2);
    }

    public final void x() {
        if ((this.F > 1 || this.E > 1) && SystemClock.elapsedRealtime() - this.F > this.E) {
            this.F = 0L;
            this.E = 0L;
            t(this.G, this.H, this.I);
        }
    }

    public final void y() {
        kv9 kv9Var = this.B;
        if (kv9Var == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double dB = kv9Var.b();
        if (dB > this.g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (dB < this.h) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
    }

    public jv9 z(kv9 kv9Var) {
        this.B = kv9Var;
        return this;
    }

    public jv9(Object obj, az3 az3Var) {
        super(obj, az3Var);
        this.B = null;
        this.C = Float.MAX_VALUE;
        this.D = false;
        this.E = 0L;
        this.F = 0L;
        this.G = 0.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.J = 0L;
    }

    public jv9(Object obj, az3 az3Var, float f) {
        super(obj, az3Var);
        this.B = null;
        this.C = Float.MAX_VALUE;
        this.D = false;
        this.E = 0L;
        this.F = 0L;
        this.G = 0.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.J = 0L;
        this.B = new kv9(f);
    }
}
