package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import java.lang.reflect.Field;

abstract class c0 {

    private static boolean f14683a = true;

    private static Field f14684b;

    private static boolean f14685c;

    static class a {
        static float a(View view) {
            return view.getTransitionAlpha();
        }

        static void b(View view, float f10) {
            view.setTransitionAlpha(f10);
        }
    }

    c0() {
    }

    public float b(View view) {
        if (f14683a) {
            try {
                return a.a(view);
            } catch (NoSuchMethodError unused) {
                f14683a = false;
            }
        }
        return view.getAlpha();
    }

    public abstract void d(View view, int i10, int i11, int i12, int i13);

    public void e(View view, float f10) {
        if (f14683a) {
            try {
                a.b(view, f10);
                return;
            } catch (NoSuchMethodError unused) {
                f14683a = false;
            }
        }
        view.setAlpha(f10);
    }

    public void f(View view, int i10) {
        if (!f14685c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f14684b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f14685c = true;
        }
        Field field = f14684b;
        if (field != null) {
            try {
                f14684b.setInt(view, i10 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public abstract void g(View view, Matrix matrix);

    public abstract void h(View view, Matrix matrix);

    public void a(View view) {
    }

    public void c(View view) {
    }
}
