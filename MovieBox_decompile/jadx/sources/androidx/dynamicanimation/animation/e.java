package androidx.dynamicanimation.animation;

public final class e {

    double f8710a;

    double f8711b;

    private boolean f8712c;

    private double f8713d;

    private double f8714e;

    private double f8715f;

    private double f8716g;

    private double f8717h;

    private double f8718i;

    private final b.o f8719j;

    public e() {
        this.f8710a = Math.sqrt(1500.0d);
        this.f8711b = 0.5d;
        this.f8712c = false;
        this.f8718i = Double.MAX_VALUE;
        this.f8719j = new b.o();
    }

    private void b() {
        if (this.f8712c) {
            return;
        }
        if (this.f8718i == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d10 = this.f8711b;
        if (d10 > 1.0d) {
            double d11 = this.f8710a;
            this.f8715f = ((-d10) * d11) + (d11 * Math.sqrt((d10 * d10) - 1.0d));
            double d12 = this.f8711b;
            double d13 = this.f8710a;
            this.f8716g = ((-d12) * d13) - (d13 * Math.sqrt((d12 * d12) - 1.0d));
        } else if (d10 >= 0.0d && d10 < 1.0d) {
            this.f8717h = this.f8710a * Math.sqrt(1.0d - (d10 * d10));
        }
        this.f8712c = true;
    }

    public float a() {
        return (float) this.f8718i;
    }

    public boolean c(float f10, float f11) {
        return ((double) Math.abs(f11)) < this.f8714e && ((double) Math.abs(f10 - a())) < this.f8713d;
    }

    public e d(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f8711b = f10;
        this.f8712c = false;
        return this;
    }

    public e e(float f10) {
        this.f8718i = f10;
        return this;
    }

    public e f(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f8710a = Math.sqrt(f10);
        this.f8712c = false;
        return this;
    }

    void g(double d10) {
        double dAbs = Math.abs(d10);
        this.f8713d = dAbs;
        this.f8714e = dAbs * 62.5d;
    }

    b.o h(double d10, double d11, long j10) {
        double dCos;
        double dPow;
        b();
        double d12 = j10 / 1000.0d;
        double d13 = d10 - this.f8718i;
        double d14 = this.f8711b;
        if (d14 > 1.0d) {
            double d15 = this.f8716g;
            double d16 = this.f8715f;
            double d17 = d13 - (((d15 * d13) - d11) / (d15 - d16));
            double d18 = ((d13 * d15) - d11) / (d15 - d16);
            dPow = (Math.pow(2.718281828459045d, d15 * d12) * d17) + (Math.pow(2.718281828459045d, this.f8715f * d12) * d18);
            double d19 = this.f8716g;
            double dPow2 = d17 * d19 * Math.pow(2.718281828459045d, d19 * d12);
            double d20 = this.f8715f;
            dCos = dPow2 + (d18 * d20 * Math.pow(2.718281828459045d, d20 * d12));
        } else if (d14 == 1.0d) {
            double d21 = this.f8710a;
            double d22 = d11 + (d21 * d13);
            double d23 = d13 + (d22 * d12);
            dPow = Math.pow(2.718281828459045d, (-d21) * d12) * d23;
            double dPow3 = d23 * Math.pow(2.718281828459045d, (-this.f8710a) * d12);
            double d24 = this.f8710a;
            dCos = (d22 * Math.pow(2.718281828459045d, (-d24) * d12)) + (dPow3 * (-d24));
        } else {
            double d25 = 1.0d / this.f8717h;
            double d26 = this.f8710a;
            double d27 = d25 * ((d14 * d26 * d13) + d11);
            double dPow4 = Math.pow(2.718281828459045d, (-d14) * d26 * d12) * ((Math.cos(this.f8717h * d12) * d13) + (Math.sin(this.f8717h * d12) * d27));
            double d28 = this.f8710a;
            double d29 = this.f8711b;
            double d30 = (-d28) * dPow4 * d29;
            double dPow5 = Math.pow(2.718281828459045d, (-d29) * d28 * d12);
            double d31 = this.f8717h;
            double dSin = (-d31) * d13 * Math.sin(d31 * d12);
            double d32 = this.f8717h;
            dCos = d30 + (dPow5 * (dSin + (d27 * d32 * Math.cos(d32 * d12))));
            dPow = dPow4;
        }
        b.o oVar = this.f8719j;
        oVar.f8707a = (float) (dPow + this.f8718i);
        oVar.f8708b = (float) dCos;
        return oVar;
    }

    public e(float f10) {
        this.f8710a = Math.sqrt(1500.0d);
        this.f8711b = 0.5d;
        this.f8712c = false;
        this.f8718i = Double.MAX_VALUE;
        this.f8719j = new b.o();
        this.f8718i = f10;
    }
}
