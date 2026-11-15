package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.w1;

public final class z extends c {
    public z(String str, int i10) {
        super(str, b.f4035a.c(), i10, null);
    }

    @Override
    public float c(int i10) {
        return 2.0f;
    }

    @Override
    public float d(int i10) {
        return -2.0f;
    }

    @Override
    public long h(float f10, float f11, float f12) {
        if (f10 < -2.0f) {
            f10 = -2.0f;
        }
        if (f10 > 2.0f) {
            f10 = 2.0f;
        }
        if (f11 < -2.0f) {
            f11 = -2.0f;
        }
        return (((long) Float.floatToRawIntBits(f10)) << 32) | (((long) Float.floatToRawIntBits(f11 <= 2.0f ? f11 : 2.0f)) & 4294967295L);
    }

    @Override
    public float i(float f10, float f11, float f12) {
        if (f12 < -2.0f) {
            f12 = -2.0f;
        }
        if (f12 > 2.0f) {
            return 2.0f;
        }
        return f12;
    }

    @Override
    public long j(float f10, float f11, float f12, float f13, c cVar) {
        if (f10 < -2.0f) {
            f10 = -2.0f;
        }
        if (f10 > 2.0f) {
            f10 = 2.0f;
        }
        if (f11 < -2.0f) {
            f11 = -2.0f;
        }
        if (f11 > 2.0f) {
            f11 = 2.0f;
        }
        if (f12 < -2.0f) {
            f12 = -2.0f;
        }
        return w1.a(f10, f11, f12 <= 2.0f ? f12 : 2.0f, f13, cVar);
    }
}
