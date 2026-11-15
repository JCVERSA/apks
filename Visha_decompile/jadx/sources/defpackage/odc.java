package defpackage;

import android.view.View;

public abstract class odc {
    public static final go8 a(Object obj, e74 e74Var) {
        return new pf(obj, e74Var);
    }

    public static go8 b(Object obj, e74 e74Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            e74Var = null;
        }
        return a(obj, e74Var);
    }

    public static final go8 c(Object obj, e74 e74Var) {
        return new dc2(obj, e74Var);
    }

    public static go8 d(Object obj, e74 e74Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            e74Var = null;
        }
        return c(obj, e74Var);
    }

    public static final boolean e(int i) {
        return View.MeasureSpec.getMode(i) == 1073741824;
    }

    public static final boolean f(int i) {
        return View.MeasureSpec.getMode(i) == 0;
    }

    public static final int g(int i) {
        return View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE);
    }

    public static final int h(int i) {
        return View.MeasureSpec.makeMeasureSpec(i, 1073741824);
    }

    public static final int i() {
        return View.MeasureSpec.makeMeasureSpec(0, 0);
    }
}
