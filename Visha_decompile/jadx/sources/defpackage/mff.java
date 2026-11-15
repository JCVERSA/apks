package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

public final class mff {
    public static final void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new nff(view, onGlobalLayoutListener).d();
    }

    public static final void b(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new off(view, onScrollChangedListener).d();
    }
}
