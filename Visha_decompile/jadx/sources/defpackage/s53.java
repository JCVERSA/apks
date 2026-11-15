package defpackage;

import android.graphics.PointF;
import android.view.animation.Interpolator;

public class s53 implements Interpolator {
    public int a = 0;
    public final PointF b;
    public final PointF c;

    public s53(float f, float f2, float f3, float f4) {
        PointF pointF = new PointF();
        this.b = pointF;
        PointF pointF2 = new PointF();
        this.c = pointF2;
        pointF.x = f;
        pointF.y = f2;
        pointF2.x = f3;
        pointF2.y = f4;
    }

    public static double a(double d, double d2, double d3, double d4, double d5) {
        double d6 = 1.0d - d;
        double d7 = d * d;
        double d8 = d6 * d6;
        return (d8 * d6 * d2) + (d8 * 3.0d * d * d3) + (d6 * 3.0d * d7 * d4) + (d7 * d * d5);
    }

    @Override
    public float getInterpolation(float f) {
        float f2 = f;
        for (int i = this.a; i < 4096; i++) {
            f2 = (i * 1.0f) / 4096.0f;
            if (a(f2, 0.0d, this.b.x, this.c.x, 1.0d) >= f) {
                this.a = i;
                break;
            }
        }
        double dA = a(f2, 0.0d, this.b.y, this.c.y, 1.0d);
        if (dA > 0.999d) {
            this.a = 0;
            dA = 1.0d;
        }
        return (float) dA;
    }
}
