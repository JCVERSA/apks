package defpackage;

public final class hi8 {
    public final a a;
    public final a b;
    public final int c;
    public final boolean d;

    public static final class a {
        public final b[] a;

        public a(b... bVarArr) {
            this.a = bVarArr;
        }

        public b a(int i) {
            return this.a[i];
        }

        public int b() {
            return this.a.length;
        }
    }

    public static final class b {
        public final int a;
        public final int b;
        public final float[] c;
        public final float[] d;

        public b(int i, float[] fArr, float[] fArr2, int i2) {
            this.a = i;
            zi.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.c = fArr;
            this.d = fArr2;
            this.b = i2;
        }

        public int a() {
            return this.c.length / 3;
        }
    }

    public hi8(a aVar, int i) {
        this(aVar, aVar, i);
    }

    public static hi8 a(float f, int i, int i2, float f2, float f3, int i3) {
        int i4;
        int i5;
        int i6;
        float[] fArr;
        int i7;
        int i8 = i;
        int i9 = i2;
        zi.a(f > 0.0f);
        zi.a(i8 >= 1);
        zi.a(i9 >= 1);
        zi.a(f2 > 0.0f && f2 <= 180.0f);
        zi.a(f3 > 0.0f && f3 <= 360.0f);
        float radians = (float) Math.toRadians(f2);
        float radians2 = (float) Math.toRadians(f3);
        float f4 = radians / i8;
        float f5 = radians2 / i9;
        int i10 = i9 + 1;
        int i11 = ((i10 * 2) + 2) * i8;
        float[] fArr2 = new float[i11 * 3];
        float[] fArr3 = new float[i11 * 2];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i8) {
            float f6 = radians / 2.0f;
            float f7 = (i12 * f4) - f6;
            int i15 = i12 + 1;
            float f8 = (i15 * f4) - f6;
            int i16 = 0;
            while (i16 < i10) {
                float f9 = f7;
                int i17 = i15;
                int i18 = 2;
                int i19 = 0;
                while (i19 < i18) {
                    float f10 = i16 * f5;
                    float f11 = f5;
                    int i20 = i16;
                    double d = f;
                    float f12 = f4;
                    double d2 = (f10 + 3.1415927f) - (radians2 / 2.0f);
                    int i21 = i19;
                    double d3 = i19 == 0 ? f9 : f8;
                    float[] fArr4 = fArr3;
                    float f13 = f8;
                    fArr2[i13] = -((float) (Math.sin(d2) * d * Math.cos(d3)));
                    float f14 = radians;
                    float f15 = radians2;
                    fArr2[i13 + 1] = (float) (d * Math.sin(d3));
                    int i22 = i13 + 3;
                    fArr2[i13 + 2] = (float) (d * Math.cos(d2) * Math.cos(d3));
                    fArr4[i14] = f10 / f15;
                    int i23 = i14 + 2;
                    fArr4[i14 + 1] = ((i12 + i21) * f12) / f14;
                    if (i20 == 0 && i21 == 0) {
                        i4 = i2;
                        i5 = i20;
                        i6 = i21;
                    } else {
                        i4 = i2;
                        i5 = i20;
                        i6 = i21;
                        if (i5 != i4 || i6 != 1) {
                            fArr = fArr4;
                            i7 = 2;
                            i14 = i23;
                            i13 = i22;
                        }
                        i19 = i6 + 1;
                        i9 = i4;
                        i16 = i5;
                        fArr3 = fArr;
                        radians = f14;
                        i10 = i10;
                        f5 = f11;
                        radians2 = f15;
                        f8 = f13;
                        i18 = i7;
                        f4 = f12;
                    }
                    System.arraycopy(fArr2, i13, fArr2, i22, 3);
                    i13 += 6;
                    fArr = fArr4;
                    i7 = 2;
                    System.arraycopy(fArr, i14, fArr, i23, 2);
                    i14 += 4;
                    i19 = i6 + 1;
                    i9 = i4;
                    i16 = i5;
                    fArr3 = fArr;
                    radians = f14;
                    i10 = i10;
                    f5 = f11;
                    radians2 = f15;
                    f8 = f13;
                    i18 = i7;
                    f4 = f12;
                }
                float f16 = radians2;
                int i24 = i16;
                int i25 = i9;
                int i26 = i24 + 1;
                i15 = i17;
                f4 = f4;
                radians2 = f16;
                f8 = f8;
                f7 = f9;
                i9 = i25;
                i16 = i26;
            }
            i8 = i;
            i12 = i15;
        }
        return new hi8(new a(new b(0, fArr2, fArr3, 1)), i3);
    }

    public static hi8 b(int i) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i);
    }

    public hi8(a aVar, a aVar2, int i) {
        this.a = aVar;
        this.b = aVar2;
        this.c = i;
        this.d = aVar == aVar2;
    }
}
