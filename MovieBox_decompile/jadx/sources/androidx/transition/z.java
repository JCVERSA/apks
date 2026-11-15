package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

abstract class z {

    private static final c0 f14788a;

    static final Property f14789b;

    static final Property f14790c;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(View view) {
            return Float.valueOf(z.b(view));
        }

        @Override
        public void set(View view, Float f10) {
            z.e(view, f10.floatValue());
        }
    }

    class b extends Property {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Rect get(View view) {
            return view.getClipBounds();
        }

        @Override
        public void set(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f14788a = new k0();
        } else {
            f14788a = new j0();
        }
        f14789b = new a(Float.class, "translationAlpha");
        f14790c = new b(Rect.class, "clipBounds");
    }

    static void a(View view) {
        f14788a.a(view);
    }

    static float b(View view) {
        return f14788a.b(view);
    }

    static void c(View view) {
        f14788a.c(view);
    }

    static void d(View view, int i10, int i11, int i12, int i13) {
        f14788a.d(view, i10, i11, i12, i13);
    }

    static void e(View view, float f10) {
        f14788a.e(view, f10);
    }

    static void f(View view, int i10) {
        f14788a.f(view, i10);
    }

    static void g(View view, Matrix matrix) {
        f14788a.g(view, matrix);
    }

    static void h(View view, Matrix matrix) {
        f14788a.h(view, matrix);
    }
}
