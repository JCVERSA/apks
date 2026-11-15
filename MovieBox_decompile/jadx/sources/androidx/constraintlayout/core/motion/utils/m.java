package androidx.constraintlayout.core.motion.utils;

public class m implements l {

    private float f6505a;

    private float f6506b;

    private float f6507c;

    private float f6508d;

    private float f6509e;

    private float f6510f;

    private float f6511g;

    private float f6512h;

    private float f6513i;

    private int f6514j;

    private String f6515k;

    private float f6517m;

    private float f6518n;

    private boolean f6516l = false;

    private boolean f6519o = false;

    private float b(float f10) {
        this.f6519o = false;
        float f11 = this.f6508d;
        if (f10 <= f11) {
            float f12 = this.f6505a;
            return (f12 * f10) + ((((this.f6506b - f12) * f10) * f10) / (f11 * 2.0f));
        }
        int i10 = this.f6514j;
        if (i10 == 1) {
            return this.f6511g;
        }
        float f13 = f10 - f11;
        float f14 = this.f6509e;
        if (f13 < f14) {
            float f15 = this.f6511g;
            float f16 = this.f6506b;
            return f15 + (f16 * f13) + ((((this.f6507c - f16) * f13) * f13) / (f14 * 2.0f));
        }
        if (i10 == 2) {
            return this.f6512h;
        }
        float f17 = f13 - f14;
        float f18 = this.f6510f;
        if (f17 > f18) {
            this.f6519o = true;
            return this.f6513i;
        }
        float f19 = this.f6512h;
        float f20 = this.f6507c;
        return (f19 + (f20 * f17)) - (((f20 * f17) * f17) / (f18 * 2.0f));
    }

    private void e(float f10, float f11, float f12, float f13, float f14) {
        this.f6519o = false;
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f6505a = f10;
        float f15 = f10 / f12;
        float f16 = (f15 * f10) / 2.0f;
        if (f10 < 0.0f) {
            float fSqrt = (float) Math.sqrt((f11 - ((((-f10) / f12) * f10) / 2.0f)) * f12);
            if (fSqrt < f13) {
                this.f6515k = "backward accelerate, decelerate";
                this.f6514j = 2;
                this.f6505a = f10;
                this.f6506b = fSqrt;
                this.f6507c = 0.0f;
                float f17 = (fSqrt - f10) / f12;
                this.f6508d = f17;
                this.f6509e = fSqrt / f12;
                this.f6511g = ((f10 + fSqrt) * f17) / 2.0f;
                this.f6512h = f11;
                this.f6513i = f11;
                return;
            }
            this.f6515k = "backward accelerate cruse decelerate";
            this.f6514j = 3;
            this.f6505a = f10;
            this.f6506b = f13;
            this.f6507c = f13;
            float f18 = (f13 - f10) / f12;
            this.f6508d = f18;
            float f19 = f13 / f12;
            this.f6510f = f19;
            float f20 = ((f10 + f13) * f18) / 2.0f;
            float f21 = (f19 * f13) / 2.0f;
            this.f6509e = ((f11 - f20) - f21) / f13;
            this.f6511g = f20;
            this.f6512h = f11 - f21;
            this.f6513i = f11;
            return;
        }
        if (f16 >= f11) {
            this.f6515k = "hard stop";
            this.f6514j = 1;
            this.f6505a = f10;
            this.f6506b = 0.0f;
            this.f6511g = f11;
            this.f6508d = (2.0f * f11) / f10;
            return;
        }
        float f22 = f11 - f16;
        float f23 = f22 / f10;
        if (f23 + f15 < f14) {
            this.f6515k = "cruse decelerate";
            this.f6514j = 2;
            this.f6505a = f10;
            this.f6506b = f10;
            this.f6507c = 0.0f;
            this.f6511g = f22;
            this.f6512h = f11;
            this.f6508d = f23;
            this.f6509e = f15;
            return;
        }
        float fSqrt2 = (float) Math.sqrt((f12 * f11) + ((f10 * f10) / 2.0f));
        float f24 = (fSqrt2 - f10) / f12;
        this.f6508d = f24;
        float f25 = fSqrt2 / f12;
        this.f6509e = f25;
        if (fSqrt2 < f13) {
            this.f6515k = "accelerate decelerate";
            this.f6514j = 2;
            this.f6505a = f10;
            this.f6506b = fSqrt2;
            this.f6507c = 0.0f;
            this.f6508d = f24;
            this.f6509e = f25;
            this.f6511g = ((f10 + fSqrt2) * f24) / 2.0f;
            this.f6512h = f11;
            return;
        }
        this.f6515k = "accelerate cruse decelerate";
        this.f6514j = 3;
        this.f6505a = f10;
        this.f6506b = f13;
        this.f6507c = f13;
        float f26 = (f13 - f10) / f12;
        this.f6508d = f26;
        float f27 = f13 / f12;
        this.f6510f = f27;
        float f28 = ((f10 + f13) * f26) / 2.0f;
        float f29 = (f27 * f13) / 2.0f;
        this.f6509e = ((f11 - f28) - f29) / f13;
        this.f6511g = f28;
        this.f6512h = f11 - f29;
        this.f6513i = f11;
    }

    @Override
    public float a() {
        return this.f6516l ? -d(this.f6518n) : d(this.f6518n);
    }

    public void c(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f6519o = false;
        this.f6517m = f10;
        boolean z10 = f10 > f11;
        this.f6516l = z10;
        if (z10) {
            e(-f12, f10 - f11, f14, f15, f13);
        } else {
            e(f12, f11 - f10, f14, f15, f13);
        }
    }

    public float d(float f10) {
        float f11 = this.f6508d;
        if (f10 <= f11) {
            float f12 = this.f6505a;
            return f12 + (((this.f6506b - f12) * f10) / f11);
        }
        int i10 = this.f6514j;
        if (i10 == 1) {
            return 0.0f;
        }
        float f13 = f10 - f11;
        float f14 = this.f6509e;
        if (f13 < f14) {
            float f15 = this.f6506b;
            return f15 + (((this.f6507c - f15) * f13) / f14);
        }
        if (i10 == 2) {
            return this.f6512h;
        }
        float f16 = f13 - f14;
        float f17 = this.f6510f;
        if (f16 >= f17) {
            return this.f6513i;
        }
        float f18 = this.f6507c;
        return f18 - ((f16 * f18) / f17);
    }

    @Override
    public float getInterpolation(float f10) {
        float fB = b(f10);
        this.f6518n = f10;
        return this.f6516l ? this.f6517m - fB : this.f6517m + fB;
    }

    @Override
    public boolean isStopped() {
        return a() < 1.0E-5f && Math.abs(this.f6513i - this.f6518n) < 1.0E-5f;
    }
}
