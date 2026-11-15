package androidx.compose.animation;

import kotlin.ranges.RangesKt;

public final class a {

    public static final a f2059a = new a();

    private static final float[] f2060b;

    private static final float[] f2061c;

    public static final int f2062d;

    public static final class C0020a {

        private final float f2063a;

        private final float f2064b;

        public C0020a(float f10, float f11) {
            this.f2063a = f10;
            this.f2064b = f11;
        }

        public final float a() {
            return this.f2063a;
        }

        public final float b() {
            return this.f2064b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0020a)) {
                return false;
            }
            C0020a c0020a = (C0020a) obj;
            return Float.compare(this.f2063a, c0020a.f2063a) == 0 && Float.compare(this.f2064b, c0020a.f2064b) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f2063a) * 31) + Float.floatToIntBits(this.f2064b);
        }

        public String toString() {
            return "FlingResult(distanceCoefficient=" + this.f2063a + ", velocityCoefficient=" + this.f2064b + ')';
        }
    }

    static {
        float[] fArr = new float[101];
        f2060b = fArr;
        float[] fArr2 = new float[101];
        f2061c = fArr2;
        f.b(fArr, fArr2, 100);
        f2062d = 8;
    }

    private a() {
    }

    public final double a(float f10, float f11) {
        return Math.log(((double) (Math.abs(f10) * 0.35f)) / ((double) f11));
    }

    public final C0020a b(float f10) {
        float f11 = 0.0f;
        float f12 = 1.0f;
        float fK = RangesKt.k(f10, 0.0f, 1.0f);
        float f13 = 100;
        int i10 = (int) (f13 * fK);
        if (i10 < 100) {
            float f14 = i10 / f13;
            int i11 = i10 + 1;
            float f15 = i11 / f13;
            float[] fArr = f2060b;
            float f16 = fArr[i10];
            float f17 = (fArr[i11] - f16) / (f15 - f14);
            float f18 = ((fK - f14) * f17) + f16;
            f11 = f17;
            f12 = f18;
        }
        return new C0020a(f12, f11);
    }
}
