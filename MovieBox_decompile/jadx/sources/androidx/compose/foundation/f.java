package androidx.compose.foundation;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;

public abstract class f {

    private static final long f2315a = ViewConfiguration.getTapTimeout();

    public static final long a() {
        return f2315a;
    }

    public static final boolean b(KeyEvent keyEvent) {
        return d0.c.e(d0.d.b(keyEvent), d0.c.f58831a.b()) && d(keyEvent);
    }

    public static final boolean c(androidx.compose.ui.node.f fVar) {
        return e(androidx.compose.ui.node.h.a(fVar));
    }

    private static final boolean d(KeyEvent keyEvent) {
        int iB = d0.f.b(d0.d.a(keyEvent));
        return iB == 23 || iB == 66 || iB == 160;
    }

    private static final boolean e(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = viewGroup.getParent();
        }
        return false;
    }

    public static final boolean f(KeyEvent keyEvent) {
        return d0.c.e(d0.d.b(keyEvent), d0.c.f58831a.a()) && d(keyEvent);
    }
}
