package defpackage;

import android.view.ViewTreeObserver;
import com.yandex.div.internal.widget.EllipsizedTextView;
import com.yandex.div.logging.Severity;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u20 {
    public static final a d = new a(null);
    public final EllipsizedTextView a;
    public boolean b;
    public ViewTreeObserver.OnPreDrawListener c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public u20(EllipsizedTextView ellipsizedTextView) {
        y45.j(ellipsizedTextView, "textView");
        this.a = ellipsizedTextView;
    }

    public static final boolean c(u20 u20Var) {
        y45.j(u20Var, "this$0");
        if (!u20Var.b) {
            return true;
        }
        EllipsizedTextView ellipsizedTextView = u20Var.a;
        int height = (ellipsizedTextView.getHeight() - ellipsizedTextView.getCompoundPaddingTop()) - ellipsizedTextView.getCompoundPaddingBottom();
        int iE = pha.e(ellipsizedTextView, height);
        int i = iE + 1;
        if (height >= pha.f(ellipsizedTextView, i)) {
            iE = i;
        }
        if (iE <= 0 || iE >= u20Var.a.getLineCount()) {
            u20Var.f();
            return true;
        }
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.DEBUG)) {
            ne5Var.b(3, "AutoEllipsizeHelper", "Trying to set new max lines " + iE + ". Current drawing pass is canceled. ");
        }
        u20Var.a.setMaxLines(iE);
        return false;
    }

    public final void b() {
        if (this.c != null) {
            return;
        }
        this.c = new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public final boolean onPreDraw() {
                return u20.c(this.b);
            }
        };
        this.a.getViewTreeObserver().addOnPreDrawListener(this.c);
    }

    public final void d() {
        if (this.b) {
            b();
        }
    }

    public final void e() {
        f();
    }

    public final void f() {
        if (this.c != null) {
            this.a.getViewTreeObserver().removeOnPreDrawListener(this.c);
            this.c = null;
        }
    }

    public final void g(boolean z) {
        this.b = z;
    }
}
