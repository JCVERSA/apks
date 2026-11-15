package androidx.transition;

import android.os.Build;
import android.view.View;

class j0 extends h0 {

    private static boolean f14749g = true;

    static class a {
        static void a(View view, int i10) {
            view.setTransitionVisibility(i10);
        }
    }

    j0() {
    }

    @Override
    public void f(View view, int i10) {
        if (Build.VERSION.SDK_INT == 28) {
            super.f(view, i10);
        } else if (f14749g) {
            try {
                a.a(view, i10);
            } catch (NoSuchMethodError unused) {
                f14749g = false;
            }
        }
    }
}
