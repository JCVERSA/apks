package androidx.transition;

import android.view.View;

abstract class h0 extends f0 {

    private static boolean f14708f = true;

    static class a {
        static void a(View view, int i10, int i11, int i12, int i13) {
            view.setLeftTopRightBottom(i10, i11, i12, i13);
        }
    }

    h0() {
    }

    @Override
    public void d(View view, int i10, int i11, int i12, int i13) {
        if (f14708f) {
            try {
                a.a(view, i10, i11, i12, i13);
            } catch (NoSuchMethodError unused) {
                f14708f = false;
            }
        }
    }
}
