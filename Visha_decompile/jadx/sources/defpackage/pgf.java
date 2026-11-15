package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

public abstract class pgf {
    public final WeakReference b;

    public pgf(View view) {
        this.b = new WeakReference(view);
    }

    public abstract void a(ViewTreeObserver viewTreeObserver);

    public abstract void b(ViewTreeObserver viewTreeObserver);

    public final ViewTreeObserver c() {
        ViewTreeObserver viewTreeObserver;
        View view = (View) this.b.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    public final void d() {
        ViewTreeObserver viewTreeObserverC = c();
        if (viewTreeObserverC != null) {
            a(viewTreeObserverC);
        }
    }

    public final void e() {
        ViewTreeObserver viewTreeObserverC = c();
        if (viewTreeObserverC != null) {
            b(viewTreeObserverC);
        }
    }
}
