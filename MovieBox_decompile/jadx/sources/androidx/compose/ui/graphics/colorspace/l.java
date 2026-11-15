package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.w1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class l extends c {

    public static final a f4090e = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public l(String str, int i10) {
        super(str, b.f4035a.a(), i10, null);
    }

    @Override
    public float c(int i10) {
        return i10 == 0 ? 100.0f : 128.0f;
    }

    @Override
    public float d(int i10) {
        return i10 == 0 ? 0.0f : -128.0f;
    }

    @Override
    public long h(float f10, float f11, float f12) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 100.0f) {
            f10 = 100.0f;
        }
        if (f11 < -128.0f) {
            f11 = -128.0f;
        }
        if (f11 > 128.0f) {
            f11 = 128.0f;
        }
        float f13 = (f10 + 16.0f) / 116.0f;
        float f14 = (f11 * 0.002f) + f13;
        float f15 = f14 > 0.20689656f ? f14 * f14 * f14 : (f14 - 0.13793103f) * 0.12841855f;
        float f16 = f13 > 0.20689656f ? f13 * f13 * f13 : (f13 - 0.13793103f) * 0.12841855f;
        k kVar = k.f4079a;
        return (((long) Float.floatToRawIntBits(f16 * kVar.c()[1])) & 4294967295L) | (((long) Float.floatToRawIntBits(f15 * kVar.c()[0])) << 32);
    }

    @Override
    public float i(float f10, float f11, float f12) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 100.0f) {
            f10 = 100.0f;
        }
        if (f12 < -128.0f) {
            f12 = -128.0f;
        }
        if (f12 > 128.0f) {
            f12 = 128.0f;
        }
        float f13 = ((f10 + 16.0f) / 116.0f) - (f12 * 0.005f);
        return (f13 > 0.20689656f ? f13 * f13 * f13 : 0.12841855f * (f13 - 0.13793103f)) * k.f4079a.c()[2];
    }

    @Override
    public long j(float f10, float f11, float f12, float f13, c cVar) {
        k kVar = k.f4079a;
        float f14 = f10 / kVar.c()[0];
        float f15 = f11 / kVar.c()[1];
        float f16 = f12 / kVar.c()[2];
        float fCbrt = f14 > 0.008856452f ? (float) Math.cbrt(f14) : (f14 * 7.787037f) + 0.13793103f;
        float fCbrt2 = f15 > 0.008856452f ? (float) Math.cbrt(f15) : (f15 * 7.787037f) + 0.13793103f;
        float f17 = (116.0f * fCbrt2) - 16.0f;
        float f18 = (fCbrt - fCbrt2) * 500.0f;
        float fCbrt3 = (fCbrt2 - (f16 > 0.008856452f ? (float) Math.cbrt(f16) : (f16 * 7.787037f) + 0.13793103f)) * 200.0f;
        if (f17 < 0.0f) {
            f17 = 0.0f;
        }
        if (f17 > 100.0f) {
            f17 = 100.0f;
        }
        if (f18 < -128.0f) {
            f18 = -128.0f;
        }
        if (f18 > 128.0f) {
            f18 = 128.0f;
        }
        if (fCbrt3 < -128.0f) {
            fCbrt3 = -128.0f;
        }
        return w1.a(f17, f18, fCbrt3 <= 128.0f ? fCbrt3 : 128.0f, f13, cVar);
    }
}
