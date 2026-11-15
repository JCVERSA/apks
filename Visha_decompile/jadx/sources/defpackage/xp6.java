package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

public abstract class xp6 {
    public static final PointF a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static int c(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public static boolean d(float f, float f2, float f3) {
        return f >= f2 && f <= f3;
    }

    public static int e(int i, int i2) {
        int i3 = i / i2;
        return (((i ^ i2) >= 0) || i % i2 == 0) ? i3 : i3 - 1;
    }

    public static int f(float f, float f2) {
        return g((int) f, (int) f2);
    }

    public static int g(int i, int i2) {
        return i - (i2 * e(i, i2));
    }

    public static void h(sf9 sf9Var, Path path) {
        path.reset();
        PointF pointFB = sf9Var.b();
        path.moveTo(pointFB.x, pointFB.y);
        a.set(pointFB.x, pointFB.y);
        for (int i = 0; i < sf9Var.a().size(); i++) {
            gm1 gm1Var = (gm1) sf9Var.a().get(i);
            PointF pointFA = gm1Var.a();
            PointF pointFB2 = gm1Var.b();
            PointF pointFC = gm1Var.c();
            PointF pointF = a;
            if (pointFA.equals(pointF) && pointFB2.equals(pointFC)) {
                path.lineTo(pointFC.x, pointFC.y);
            } else {
                path.cubicTo(pointFA.x, pointFA.y, pointFB2.x, pointFB2.y, pointFC.x, pointFC.y);
            }
            pointF.set(pointFC.x, pointFC.y);
        }
        if (sf9Var.d()) {
            path.close();
        }
    }

    public static float i(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static int j(int i, int i2, float f) {
        return (int) (i + (f * (i2 - i)));
    }

    public static void k(tf5 tf5Var, int i, List list, tf5 tf5Var2, vf5 vf5Var) {
        if (tf5Var.c(vf5Var.getName(), i)) {
            list.add(tf5Var2.a(vf5Var.getName()).i(vf5Var));
        }
    }
}
