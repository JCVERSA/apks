package cb;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.f0;

public abstract class j {
    static e a(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? b() : new f();
        }
        return new m();
    }

    static e b() {
        return new m();
    }

    static g c() {
        return new g();
    }

    public static void d(View view, float f10) {
        Drawable background = view.getBackground();
        if (background instanceof i) {
            ((i) background).c0(f10);
        }
    }

    public static void e(View view) {
        Drawable background = view.getBackground();
        if (background instanceof i) {
            f(view, (i) background);
        }
    }

    public static void f(View view, i iVar) {
        if (iVar.U()) {
            iVar.h0(f0.n(view));
        }
    }
}
