package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.w1;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class Rgb extends c {

    public static final a f4013t = new a(null);

    private static final j f4014u = new j() {
        @Override
        public final double a(double d10) {
            return Rgb.t(d10);
        }
    };

    private final y f4015e;

    private final float f4016f;

    private final float f4017g;

    private final x f4018h;

    private final float[] f4019i;

    private final float[] f4020j;

    private final float[] f4021k;

    private final j f4022l;

    private final Function1 f4023m;

    private final j f4024n;

    private final j f4025o;

    private final Function1 f4026p;

    private final j f4027q;

    private final boolean f4028r;

    private final boolean f4029s;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final float e(float[] fArr) {
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = fArr[3];
            float f14 = fArr[4];
            float f15 = fArr[5];
            float f16 = ((((((f10 * f13) + (f11 * f14)) + (f12 * f15)) - (f13 * f14)) - (f11 * f12)) - (f10 * f15)) * 0.5f;
            return f16 < 0.0f ? -f16 : f16;
        }

        private final boolean f(double d10, j jVar, j jVar2) {
            return Math.abs(jVar.a(d10) - jVar2.a(d10)) <= 0.001d;
        }

        public final float[] g(float[] fArr, y yVar) {
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = fArr[3];
            float f14 = fArr[4];
            float f15 = fArr[5];
            float fA = yVar.a();
            float fB = yVar.b();
            float f16 = 1;
            float f17 = (f16 - f10) / f11;
            float f18 = (f16 - f12) / f13;
            float f19 = (f16 - f14) / f15;
            float f20 = (f16 - fA) / fB;
            float f21 = f10 / f11;
            float f22 = (f12 / f13) - f21;
            float f23 = (fA / fB) - f21;
            float f24 = f18 - f17;
            float f25 = (f14 / f15) - f21;
            float f26 = (((f20 - f17) * f22) - (f23 * f24)) / (((f19 - f17) * f22) - (f24 * f25));
            float f27 = (f23 - (f25 * f26)) / f22;
            float f28 = (1.0f - f27) - f26;
            float f29 = f28 / f11;
            float f30 = f27 / f13;
            float f31 = f26 / f15;
            return new float[]{f29 * f10, f28, f29 * ((1.0f - f10) - f11), f30 * f12, f27, f30 * ((1.0f - f12) - f13), f31 * f14, f26, f31 * ((1.0f - f14) - f15)};
        }

        private final boolean h(float[] fArr, float[] fArr2) {
            float f10 = fArr[0];
            float f11 = fArr2[0];
            float f12 = fArr[1];
            float f13 = fArr2[1];
            float f14 = fArr[2] - fArr2[2];
            float f15 = fArr[3] - fArr2[3];
            float f16 = fArr[4];
            float f17 = fArr2[4];
            float f18 = fArr[5];
            float f19 = fArr2[5];
            float[] fArr3 = {f10 - f11, f12 - f13, f14, f15, f16 - f17, f18 - f19};
            return i(fArr3[0], fArr3[1], f11 - f17, f13 - f19) >= 0.0f && i(fArr2[0] - fArr2[2], fArr2[1] - fArr2[3], fArr3[0], fArr3[1]) >= 0.0f && i(fArr3[2], fArr3[3], fArr2[2] - fArr2[0], fArr2[3] - fArr2[1]) >= 0.0f && i(fArr2[2] - fArr2[4], fArr2[3] - fArr2[5], fArr3[2], fArr3[3]) >= 0.0f && i(fArr3[4], fArr3[5], fArr2[4] - fArr2[2], fArr2[5] - fArr2[3]) >= 0.0f && i(fArr2[4] - fArr2[0], fArr2[5] - fArr2[1], fArr3[4], fArr3[5]) >= 0.0f;
        }

        private final float i(float f10, float f11, float f12, float f13) {
            return (f10 * f13) - (f11 * f12);
        }

        public final boolean j(float[] fArr, y yVar, j jVar, j jVar2, float f10, float f11, int i10) {
            if (i10 == 0) {
                return true;
            }
            g gVar = g.f4044a;
            if (!d.g(fArr, gVar.x()) || !d.f(yVar, k.f4079a.e()) || f10 != 0.0f || f11 != 1.0f) {
                return false;
            }
            Rgb rgbW = gVar.w();
            for (double d10 = 0.0d; d10 <= 1.0d; d10 += 0.00392156862745098d) {
                if (!f(d10, jVar, rgbW.J()) || !f(d10, jVar2, rgbW.F())) {
                    return false;
                }
            }
            return true;
        }

        public final boolean k(float[] fArr, float f10, float f11) {
            float fE = e(fArr);
            g gVar = g.f4044a;
            return (fE / e(gVar.s()) > 0.9f && h(fArr, gVar.x())) || (f10 < 0.0f && f11 > 1.0f);
        }

        public final float[] l(float[] fArr) {
            float[] fArr2 = new float[6];
            if (fArr.length == 9) {
                float f10 = fArr[0];
                float f11 = fArr[1];
                float f12 = f10 + f11 + fArr[2];
                fArr2[0] = f10 / f12;
                fArr2[1] = f11 / f12;
                float f13 = fArr[3];
                float f14 = fArr[4];
                float f15 = f13 + f14 + fArr[5];
                fArr2[2] = f13 / f15;
                fArr2[3] = f14 / f15;
                float f16 = fArr[6];
                float f17 = fArr[7];
                float f18 = f16 + f17 + fArr[8];
                fArr2[4] = f16 / f18;
                fArr2[5] = f17 / f18;
            } else {
                ArraysKt.n(fArr, fArr2, 0, 0, 6, 6, null);
            }
            return fArr2;
        }

        private a() {
        }
    }

    public Rgb(String str, float[] fArr, y yVar, float[] fArr2, j jVar, j jVar2, float f10, float f11, x xVar, int i10) {
        super(str, b.f4035a.b(), i10, null);
        this.f4015e = yVar;
        this.f4016f = f10;
        this.f4017g = f11;
        this.f4018h = xVar;
        this.f4022l = jVar;
        this.f4023m = new Function1<Double, Double>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).doubleValue());
            }

            public final Double invoke(double d10) {
                return Double.valueOf(RangesKt.j(this.this$0.J().a(d10), this.this$0.f4016f, this.this$0.f4017g));
            }
        };
        this.f4024n = new j() {
            @Override
            public final double a(double d10) {
                return Rgb.O(this.f4101a, d10);
            }
        };
        this.f4025o = jVar2;
        this.f4026p = new Function1<Double, Double>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).doubleValue());
            }

            public final Double invoke(double d10) {
                return Double.valueOf(this.this$0.F().a(RangesKt.j(d10, this.this$0.f4016f, this.this$0.f4017g)));
            }
        };
        this.f4027q = new j() {
            @Override
            public final double a(double d10) {
                return Rgb.C(this.f4102a, d10);
            }
        };
        if (fArr.length != 6 && fArr.length != 9) {
            throw new IllegalArgumentException("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
        }
        if (f10 >= f11) {
            throw new IllegalArgumentException("Invalid range: min=" + f10 + ", max=" + f11 + "; min must be strictly < max");
        }
        a aVar = f4013t;
        float[] fArrL = aVar.l(fArr);
        this.f4019i = fArrL;
        if (fArr2 == null) {
            this.f4020j = aVar.g(fArrL, yVar);
        } else {
            if (fArr2.length != 9) {
                throw new IllegalArgumentException("Transform must have 9 entries! Has " + fArr2.length);
            }
            this.f4020j = fArr2;
        }
        this.f4021k = d.k(this.f4020j);
        this.f4028r = aVar.k(fArrL, f10, f11);
        this.f4029s = aVar.j(fArrL, yVar, jVar, jVar2, f10, f11, i10);
    }

    public static final double C(Rgb rgb, double d10) {
        return rgb.f4025o.a(RangesKt.j(d10, rgb.f4016f, rgb.f4017g));
    }

    public static final double O(Rgb rgb, double d10) {
        return RangesKt.j(rgb.f4022l.a(d10), rgb.f4016f, rgb.f4017g);
    }

    public static final double u(double d10, double d11) {
        if (d11 < 0.0d) {
            d11 = 0.0d;
        }
        return Math.pow(d11, 1.0d / d10);
    }

    public static final double v(double d10, double d11) {
        if (d11 < 0.0d) {
            d11 = 0.0d;
        }
        return Math.pow(d11, d10);
    }

    public static final double w(x xVar, double d10) {
        return d.o(d10, xVar.a(), xVar.b(), xVar.c(), xVar.d(), xVar.g());
    }

    public static final double x(x xVar, double d10) {
        return d.p(d10, xVar.a(), xVar.b(), xVar.c(), xVar.d(), xVar.e(), xVar.f(), xVar.g());
    }

    public static final double y(x xVar, double d10) {
        return d.q(d10, xVar.a(), xVar.b(), xVar.c(), xVar.d(), xVar.g());
    }

    public static final double z(x xVar, double d10) {
        return d.r(d10, xVar.a(), xVar.b(), xVar.c(), xVar.d(), xVar.e(), xVar.f(), xVar.g());
    }

    public final Function1 D() {
        return this.f4026p;
    }

    public final j E() {
        return this.f4027q;
    }

    public final j F() {
        return this.f4025o;
    }

    public final float[] G() {
        return this.f4021k;
    }

    public final Function1 H() {
        return this.f4023m;
    }

    public final j I() {
        return this.f4024n;
    }

    public final j J() {
        return this.f4022l;
    }

    public final float[] K() {
        return this.f4019i;
    }

    public final x L() {
        return this.f4018h;
    }

    public final float[] M() {
        return this.f4020j;
    }

    public final y N() {
        return this.f4015e;
    }

    @Override
    public float c(int i10) {
        return this.f4017g;
    }

    @Override
    public float d(int i10) {
        return this.f4016f;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Rgb.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Rgb rgb = (Rgb) obj;
        if (Float.compare(rgb.f4016f, this.f4016f) != 0 || Float.compare(rgb.f4017g, this.f4017g) != 0 || !Intrinsics.c(this.f4015e, rgb.f4015e) || !Arrays.equals(this.f4019i, rgb.f4019i)) {
            return false;
        }
        x xVar = this.f4018h;
        if (xVar != null) {
            return Intrinsics.c(xVar, rgb.f4018h);
        }
        if (rgb.f4018h == null) {
            return true;
        }
        if (Intrinsics.c(this.f4022l, rgb.f4022l)) {
            return Intrinsics.c(this.f4025o, rgb.f4025o);
        }
        return false;
    }

    @Override
    public boolean g() {
        return this.f4029s;
    }

    @Override
    public long h(float f10, float f11, float f12) {
        float fA = (float) this.f4027q.a(f10);
        float fA2 = (float) this.f4027q.a(f11);
        float fA3 = (float) this.f4027q.a(f12);
        float[] fArr = this.f4020j;
        return (((long) Float.floatToRawIntBits(((fArr[0] * fA) + (fArr[3] * fA2)) + (fArr[6] * fA3))) << 32) | (((long) Float.floatToRawIntBits((fArr[1] * fA) + (fArr[4] * fA2) + (fArr[7] * fA3))) & 4294967295L);
    }

    @Override
    public int hashCode() {
        int iHashCode = ((((super.hashCode() * 31) + this.f4015e.hashCode()) * 31) + Arrays.hashCode(this.f4019i)) * 31;
        float f10 = this.f4016f;
        int iFloatToIntBits = (iHashCode + (f10 == 0.0f ? 0 : Float.floatToIntBits(f10))) * 31;
        float f11 = this.f4017g;
        int iFloatToIntBits2 = (iFloatToIntBits + (f11 == 0.0f ? 0 : Float.floatToIntBits(f11))) * 31;
        x xVar = this.f4018h;
        int iHashCode2 = iFloatToIntBits2 + (xVar != null ? xVar.hashCode() : 0);
        return this.f4018h == null ? (((iHashCode2 * 31) + this.f4022l.hashCode()) * 31) + this.f4025o.hashCode() : iHashCode2;
    }

    @Override
    public float i(float f10, float f11, float f12) {
        float fA = (float) this.f4027q.a(f10);
        float fA2 = (float) this.f4027q.a(f11);
        float fA3 = (float) this.f4027q.a(f12);
        float[] fArr = this.f4020j;
        return (fArr[2] * fA) + (fArr[5] * fA2) + (fArr[8] * fA3);
    }

    @Override
    public long j(float f10, float f11, float f12, float f13, c cVar) {
        float[] fArr = this.f4021k;
        return w1.a((float) this.f4024n.a((fArr[0] * f10) + (fArr[3] * f11) + (fArr[6] * f12)), (float) this.f4024n.a((fArr[1] * f10) + (fArr[4] * f11) + (fArr[7] * f12)), (float) this.f4024n.a((fArr[2] * f10) + (fArr[5] * f11) + (fArr[8] * f12)), f13, cVar);
    }

    public static final double t(double d10) {
        return d10;
    }

    public Rgb(String str, float[] fArr, y yVar, final x xVar, int i10) {
        this(str, fArr, yVar, null, (xVar.e() == 0.0d && xVar.f() == 0.0d) ? new j() {
            @Override
            public final double a(double d10) {
                return Rgb.w(xVar, d10);
            }
        } : new j() {
            @Override
            public final double a(double d10) {
                return Rgb.x(xVar, d10);
            }
        }, (xVar.e() == 0.0d && xVar.f() == 0.0d) ? new j() {
            @Override
            public final double a(double d10) {
                return Rgb.y(xVar, d10);
            }
        } : new j() {
            @Override
            public final double a(double d10) {
                return Rgb.z(xVar, d10);
            }
        }, 0.0f, 1.0f, xVar, i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, y yVar, final double d10, float f10, float f11, int i10) {
        j jVar;
        j jVar2;
        if (d10 == 1.0d) {
            jVar = f4014u;
        } else {
            jVar = new j() {
                @Override
                public final double a(double d11) {
                    return Rgb.u(d10, d11);
                }
            };
        }
        j jVar3 = jVar;
        if (d10 == 1.0d) {
            jVar2 = f4014u;
        } else {
            jVar2 = new j() {
                @Override
                public final double a(double d11) {
                    return Rgb.v(d10, d11);
                }
            };
        }
        this(str, fArr, yVar, null, jVar3, jVar2, f10, f11, new x(d10, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 96, null), i10);
    }

    public Rgb(Rgb rgb, float[] fArr, y yVar) {
        this(rgb.f(), rgb.f4019i, yVar, fArr, rgb.f4022l, rgb.f4025o, rgb.f4016f, rgb.f4017g, rgb.f4018h, -1);
    }
}
