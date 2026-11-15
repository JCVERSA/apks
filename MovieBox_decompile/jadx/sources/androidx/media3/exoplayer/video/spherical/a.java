package androidx.media3.exoplayer.video.spherical;

import android.opengl.Matrix;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.o0;

final class a {

    private final float[] f12933a = new float[16];

    private final float[] f12934b = new float[16];

    private final o0 f12935c = new o0();

    private boolean f12936d;

    public static void a(float[] fArr, float[] fArr2) {
        GlUtil.k(fArr);
        float f10 = fArr2[10];
        float f11 = fArr2[8];
        float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        float f12 = fArr2[10];
        fArr[0] = f12 / fSqrt;
        float f13 = fArr2[8];
        fArr[2] = f13 / fSqrt;
        fArr[8] = (-f13) / fSqrt;
        fArr[10] = f12 / fSqrt;
    }

    private static void b(float[] fArr, float[] fArr2) {
        float f10 = fArr2[0];
        float f11 = -fArr2[1];
        float f12 = -fArr2[2];
        float length = Matrix.length(f10, f11, f12);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f10 / length, f11 / length, f12 / length);
        } else {
            GlUtil.k(fArr);
        }
    }

    public boolean c(float[] fArr, long j10) {
        float[] fArr2 = (float[]) this.f12935c.j(j10);
        if (fArr2 == null) {
            return false;
        }
        b(this.f12934b, fArr2);
        if (!this.f12936d) {
            a(this.f12933a, this.f12934b);
            this.f12936d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f12933a, 0, this.f12934b, 0);
        return true;
    }

    public void d() {
        this.f12935c.c();
        this.f12936d = false;
    }

    public void e(long j10, float[] fArr) {
        this.f12935c.a(j10, fArr);
    }
}
