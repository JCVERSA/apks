package defpackage;

import android.view.View;
import androidx.core.view.ViewCompat;

public abstract class pdc {
    public static final View b(View view) {
        View view2 = null;
        while (view != null) {
            if (!d(view) || view.isLayoutRequested()) {
                view2 = view;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return view2;
    }

    public static final s15 c(View view, int i, int i2) {
        y45.j(view, "<this>");
        int i3 = i2 + i;
        return f(view) ? wn8.m(i3 - 1, i) : wn8.q(i, i3);
    }

    public static final boolean d(View view) {
        y45.j(view, "<this>");
        return view.getWidth() > 0 || view.getHeight() > 0;
    }

    public static final boolean e(View view) {
        y45.j(view, "<this>");
        return b(view) == null;
    }

    public static final boolean f(View view) {
        y45.j(view, "<this>");
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static final void g(View view) {
        y45.j(view, "<this>");
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.setDefaultFocusHighlightEnabled(false);
    }
}
