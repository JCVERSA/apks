package androidx.transition;

import android.graphics.Matrix;
import android.view.View;

abstract class f0 extends c0 {

    private static boolean f14705d = true;

    private static boolean f14706e = true;

    static class a {
        static void a(View view, Matrix matrix) {
            view.setAnimationMatrix(matrix);
        }

        static void b(View view, Matrix matrix) {
            view.transformMatrixToGlobal(matrix);
        }

        static void c(View view, Matrix matrix) {
            view.transformMatrixToLocal(matrix);
        }
    }

    f0() {
    }

    @Override
    public void g(View view, Matrix matrix) {
        if (f14705d) {
            try {
                a.b(view, matrix);
            } catch (NoSuchMethodError unused) {
                f14705d = false;
            }
        }
    }

    @Override
    public void h(View view, Matrix matrix) {
        if (f14706e) {
            try {
                a.c(view, matrix);
            } catch (NoSuchMethodError unused) {
                f14706e = false;
            }
        }
    }
}
