package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;

public final class d extends b {
    private e A;
    private float B;
    private boolean C;

    public d(Object obj, c cVar) {
        super(obj, cVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
    }

    private void p() {
        e eVar = this.A;
        if (eVar == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double dA = eVar.a();
        if (dA > this.f8701g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (dA < this.f8702h) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
    }

    @Override
    public void i() {
        p();
        this.A.g(d());
        super.i();
    }

    @Override
    boolean k(long j10) {
        if (this.C) {
            float f10 = this.B;
            if (f10 != Float.MAX_VALUE) {
                this.A.e(f10);
                this.B = Float.MAX_VALUE;
            }
            this.f8696b = this.A.a();
            this.f8695a = 0.0f;
            this.C = false;
            return true;
        }
        if (this.B != Float.MAX_VALUE) {
            this.A.a();
            long j11 = j10 / 2;
            b.o oVarH = this.A.h(this.f8696b, this.f8695a, j11);
            this.A.e(this.B);
            this.B = Float.MAX_VALUE;
            b.o oVarH2 = this.A.h(oVarH.f8707a, oVarH.f8708b, j11);
            this.f8696b = oVarH2.f8707a;
            this.f8695a = oVarH2.f8708b;
        } else {
            b.o oVarH3 = this.A.h(this.f8696b, this.f8695a, j10);
            this.f8696b = oVarH3.f8707a;
            this.f8695a = oVarH3.f8708b;
        }
        float fMax = Math.max(this.f8696b, this.f8702h);
        this.f8696b = fMax;
        float fMin = Math.min(fMax, this.f8701g);
        this.f8696b = fMin;
        if (!o(fMin, this.f8695a)) {
            return false;
        }
        this.f8696b = this.A.a();
        this.f8695a = 0.0f;
        return true;
    }

    public void l(float f10) {
        if (e()) {
            this.B = f10;
            return;
        }
        if (this.A == null) {
            this.A = new e(f10);
        }
        this.A.e(f10);
        i();
    }

    public boolean m() {
        return this.A.f8711b > 0.0d;
    }

    public e n() {
        return this.A;
    }

    boolean o(float f10, float f11) {
        return this.A.c(f10, f11);
    }

    public d q(e eVar) {
        this.A = eVar;
        return this;
    }

    public void r() {
        if (!m()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f8700f) {
            this.C = true;
        }
    }

    public d(Object obj, c cVar, float f10) {
        super(obj, cVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
        this.A = new e(f10);
    }
}
