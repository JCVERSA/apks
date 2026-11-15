package com.google.android.exoplayer2.video.spherical;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.k0;

final class a {

    private final float[] f27070a = new float[16];

    private final float[] f27071b = new float[16];

    private final k0 f27072c = new k0();

    private boolean f27073d;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
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
            Matrix.setIdentityM(fArr, 0);
        }
    }

    public boolean c(float[] fArr, long j10) {
        float[] fArr2 = (float[]) this.f27072c.j(j10);
        if (fArr2 == null) {
            return false;
        }
        b(this.f27071b, fArr2);
        if (!this.f27073d) {
            a(this.f27070a, this.f27071b);
            this.f27073d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f27070a, 0, this.f27071b, 0);
        return true;
    }

    public void d() {
        this.f27072c.c();
        this.f27073d = false;
    }

    public void e(long j10, float[] fArr) {
        this.f27072c.a(j10, fArr);
    }
}
