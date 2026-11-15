package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.w1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class m extends c {

    public static final a f4091e = new a(null);

    private static final float[] f4092f;

    private static final float[] f4093g;

    private static final float[] f4094h;

    private static final float[] f4095i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        float[] fArrB = androidx.compose.ui.graphics.colorspace.a.f4030b.a().b();
        k kVar = k.f4079a;
        float[] fArrL = d.l(new float[]{0.818933f, 0.032984544f, 0.0482003f, 0.36186674f, 0.9293119f, 0.26436627f, -0.12885971f, 0.03614564f, 0.6338517f}, d.e(fArrB, kVar.b().c(), kVar.e().c()));
        f4092f = fArrL;
        float[] fArr = {0.21045426f, 1.9779985f, 0.025904037f, 0.7936178f, -2.4285922f, 0.78277177f, -0.004072047f, 0.4505937f, -0.80867577f};
        f4093g = fArr;
        f4094h = d.k(fArrL);
        f4095i = d.k(fArr);
    }

    public m(String str, int i10) {
        super(str, b.f4035a.a(), i10, null);
    }

    @Override
    public float c(int i10) {
        return i10 == 0 ? 1.0f : 0.5f;
    }

    @Override
    public float d(int i10) {
        return i10 == 0 ? 0.0f : -0.5f;
    }

    @Override
    public long h(float f10, float f11, float f12) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        if (f11 < -0.5f) {
            f11 = -0.5f;
        }
        if (f11 > 0.5f) {
            f11 = 0.5f;
        }
        if (f12 < -0.5f) {
            f12 = -0.5f;
        }
        float f13 = f12 <= 0.5f ? f12 : 0.5f;
        float[] fArr = f4095i;
        float f14 = (fArr[0] * f10) + (fArr[3] * f11) + (fArr[6] * f13);
        float f15 = (fArr[1] * f10) + (fArr[4] * f11) + (fArr[7] * f13);
        float f16 = (fArr[2] * f10) + (fArr[5] * f11) + (fArr[8] * f13);
        float f17 = f14 * f14 * f14;
        float f18 = f15 * f15 * f15;
        float f19 = f16 * f16 * f16;
        float[] fArr2 = f4094h;
        return (((long) Float.floatToRawIntBits(((fArr2[0] * f17) + (fArr2[3] * f18)) + (fArr2[6] * f19))) << 32) | (((long) Float.floatToRawIntBits((fArr2[1] * f17) + (fArr2[4] * f18) + (fArr2[7] * f19))) & 4294967295L);
    }

    @Override
    public float i(float f10, float f11, float f12) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        if (f11 < -0.5f) {
            f11 = -0.5f;
        }
        if (f11 > 0.5f) {
            f11 = 0.5f;
        }
        if (f12 < -0.5f) {
            f12 = -0.5f;
        }
        float f13 = f12 <= 0.5f ? f12 : 0.5f;
        float[] fArr = f4095i;
        float f14 = (fArr[0] * f10) + (fArr[3] * f11) + (fArr[6] * f13);
        float f15 = (fArr[1] * f10) + (fArr[4] * f11) + (fArr[7] * f13);
        float f16 = (fArr[2] * f10) + (fArr[5] * f11) + (fArr[8] * f13);
        float f17 = f14 * f14 * f14;
        float f18 = f15 * f15 * f15;
        float[] fArr2 = f4094h;
        return (fArr2[2] * f17) + (fArr2[5] * f18) + (fArr2[8] * f16 * f16 * f16);
    }

    @Override
    public long j(float f10, float f11, float f12, float f13, c cVar) {
        float[] fArr = f4092f;
        float f14 = (fArr[0] * f10) + (fArr[3] * f11) + (fArr[6] * f12);
        float f15 = (fArr[1] * f10) + (fArr[4] * f11) + (fArr[7] * f12);
        float f16 = (fArr[2] * f10) + (fArr[5] * f11) + (fArr[8] * f12);
        float fA = q0.b.a(f14);
        float fA2 = q0.b.a(f15);
        float fA3 = q0.b.a(f16);
        float[] fArr2 = f4093g;
        return w1.a((fArr2[0] * fA) + (fArr2[3] * fA2) + (fArr2[6] * fA3), (fArr2[1] * fA) + (fArr2[4] * fA2) + (fArr2[7] * fA3), (fArr2[2] * fA) + (fArr2[5] * fA2) + (fArr2[8] * fA3), f13, cVar);
    }
}
