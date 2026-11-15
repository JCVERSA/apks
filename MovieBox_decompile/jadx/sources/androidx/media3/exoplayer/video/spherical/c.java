package androidx.media3.exoplayer.video.spherical;

final class c {

    public final a f12944a;

    public final a f12945b;

    public final int f12946c;

    public final boolean f12947d;

    public static final class a {

        private final b[] f12948a;

        public a(b... bVarArr) {
            this.f12948a = bVarArr;
        }

        public b a(int i10) {
            return this.f12948a[i10];
        }

        public int b() {
            return this.f12948a.length;
        }
    }

    public static final class b {

        public final int f12949a;

        public final int f12950b;

        public final float[] f12951c;

        public final float[] f12952d;

        public b(int i10, float[] fArr, float[] fArr2, int i11) {
            this.f12949a = i10;
            androidx.media3.common.util.a.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f12951c = fArr;
            this.f12952d = fArr2;
            this.f12950b = i11;
        }

        public int a() {
            return this.f12951c.length / 3;
        }
    }

    public c(a aVar, int i10) {
        this(aVar, aVar, i10);
    }

    public static c a(float f10, int i10, int i11, float f11, float f12, int i12) {
        float f13;
        float f14;
        int i13;
        int i14;
        float[] fArr;
        int i15 = i10;
        int i16 = 1;
        androidx.media3.common.util.a.a(f10 > 0.0f);
        androidx.media3.common.util.a.a(i15 >= 1);
        androidx.media3.common.util.a.a(i11 >= 1);
        androidx.media3.common.util.a.a(f11 > 0.0f && f11 <= 180.0f);
        androidx.media3.common.util.a.a(f12 > 0.0f && f12 <= 360.0f);
        float radians = (float) Math.toRadians(f11);
        float radians2 = (float) Math.toRadians(f12);
        float f15 = radians / i15;
        float f16 = radians2 / i11;
        int i17 = i11 + 1;
        int i18 = ((i17 * 2) + 2) * i15;
        float[] fArr2 = new float[i18 * 3];
        float[] fArr3 = new float[i18 * 2];
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (i19 < i15) {
            float f17 = radians / 2.0f;
            float f18 = (i19 * f15) - f17;
            int i22 = i19 + 1;
            float f19 = (i22 * f15) - f17;
            int i23 = 0;
            while (i23 < i17) {
                int i24 = i22;
                float f20 = f18;
                int i25 = i21;
                int i26 = 0;
                int i27 = 2;
                while (i26 < i27) {
                    if (i26 == 0) {
                        f13 = f20;
                        f14 = f19;
                    } else {
                        f13 = f19;
                        f14 = f13;
                    }
                    float f21 = i23 * f16;
                    float f22 = f16;
                    float f23 = radians;
                    double d10 = f10;
                    int i28 = i23;
                    float f24 = f15;
                    double d11 = (f21 + 3.1415927f) - (radians2 / 2.0f);
                    double d12 = f13;
                    int i29 = i17;
                    float[] fArr4 = fArr3;
                    fArr2[i20] = -((float) (Math.sin(d11) * d10 * Math.cos(d12)));
                    float f25 = radians2;
                    int i30 = i26;
                    fArr2[i20 + 1] = (float) (d10 * Math.sin(d12));
                    int i31 = i20 + 3;
                    fArr2[i20 + 2] = (float) (d10 * Math.cos(d11) * Math.cos(d12));
                    fArr4[i25] = f21 / f25;
                    int i32 = i25 + 2;
                    fArr4[i25 + 1] = ((i19 + i30) * f24) / f23;
                    if (i28 == 0 && i30 == 0) {
                        i14 = i30;
                        i13 = i28;
                    } else {
                        i13 = i28;
                        i14 = i30;
                        if (i13 != i11 || i14 != 1) {
                            fArr = fArr4;
                            i27 = 2;
                            i20 = i31;
                            i25 = i32;
                        }
                        i26 = i14 + 1;
                        fArr3 = fArr;
                        radians2 = f25;
                        f19 = f14;
                        f16 = f22;
                        f15 = f24;
                        i17 = i29;
                        i23 = i13;
                        radians = f23;
                    }
                    System.arraycopy(fArr2, i20, fArr2, i31, 3);
                    i20 += 6;
                    fArr = fArr4;
                    i27 = 2;
                    System.arraycopy(fArr, i25, fArr, i32, 2);
                    i25 += 4;
                    i26 = i14 + 1;
                    fArr3 = fArr;
                    radians2 = f25;
                    f19 = f14;
                    f16 = f22;
                    f15 = f24;
                    i17 = i29;
                    i23 = i13;
                    radians = f23;
                }
                i23++;
                i22 = i24;
                f18 = f20;
                i21 = i25;
                radians2 = radians2;
                f16 = f16;
                radians = radians;
                i17 = i17;
            }
            i15 = i10;
            i19 = i22;
            i16 = 1;
        }
        int i33 = i16;
        b[] bVarArr = new b[i33];
        bVarArr[0] = new b(0, fArr2, fArr3, i33);
        return new c(new a(bVarArr), i12);
    }

    public static c b(int i10) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i10);
    }

    public c(a aVar, a aVar2, int i10) {
        this.f12944a = aVar;
        this.f12945b = aVar2;
        this.f12946c = i10;
        this.f12947d = aVar == aVar2;
    }
}
