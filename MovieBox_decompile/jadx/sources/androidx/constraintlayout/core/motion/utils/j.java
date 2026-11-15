package androidx.constraintlayout.core.motion.utils;

public class j implements l {

    private double f6495c;

    private double f6496d;

    private double f6497e;

    private float f6498f;

    private float f6499g;

    private float f6500h;

    private float f6501i;

    private float f6502j;

    double f6493a = 0.5d;

    private boolean f6494b = false;

    private int f6503k = 0;

    private void b(double d10) {
        double d11 = this.f6495c;
        double d12 = this.f6493a;
        int iSqrt = (int) ((9.0d / ((Math.sqrt(d11 / ((double) this.f6501i)) * d10) * 4.0d)) + 1.0d);
        double d13 = d10 / ((double) iSqrt);
        int i10 = 0;
        while (i10 < iSqrt) {
            float f10 = this.f6499g;
            double d14 = this.f6496d;
            float f11 = this.f6500h;
            double d15 = d11;
            double d16 = ((-d11) * (((double) f10) - d14)) - (((double) f11) * d12);
            float f12 = this.f6501i;
            double d17 = d12;
            double d18 = ((double) f11) + (((d16 / ((double) f12)) * d13) / 2.0d);
            double d19 = ((((-((((double) f10) + ((d13 * d18) / 2.0d)) - d14)) * d15) - (d18 * d17)) / ((double) f12)) * d13;
            float f13 = (float) (((double) f11) + d19);
            this.f6500h = f13;
            float f14 = (float) (((double) f10) + ((((double) f11) + (d19 / 2.0d)) * d13));
            this.f6499g = f14;
            int i11 = this.f6503k;
            if (i11 > 0) {
                if (f14 < 0.0f && (i11 & 1) == 1) {
                    this.f6499g = -f14;
                    this.f6500h = -f13;
                }
                float f15 = this.f6499g;
                if (f15 > 1.0f && (i11 & 2) == 2) {
                    this.f6499g = 2.0f - f15;
                    this.f6500h = -this.f6500h;
                }
            }
            i10++;
            d11 = d15;
            d12 = d17;
        }
    }

    @Override
    public float a() {
        return 0.0f;
    }

    public void c(float f10, float f11, float f12, float f13, float f14, float f15, float f16, int i10) {
        this.f6496d = f11;
        this.f6493a = f15;
        this.f6494b = false;
        this.f6499g = f10;
        this.f6497e = f12;
        this.f6495c = f14;
        this.f6501i = f13;
        this.f6502j = f16;
        this.f6503k = i10;
        this.f6498f = 0.0f;
    }

    @Override
    public float getInterpolation(float f10) {
        b(f10 - this.f6498f);
        this.f6498f = f10;
        return this.f6499g;
    }

    @Override
    public boolean isStopped() {
        double d10 = ((double) this.f6499g) - this.f6496d;
        double d11 = this.f6495c;
        double d12 = this.f6500h;
        return Math.sqrt((((d12 * d12) * ((double) this.f6501i)) + ((d11 * d10) * d10)) / d11) <= ((double) this.f6502j);
    }
}
