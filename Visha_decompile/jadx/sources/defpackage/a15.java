package defpackage;

import android.view.View;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a15 {
    public static final a e = new a(null);
    public static WeakReference f;
    public final mdc a;
    public Object b;
    public boolean c;
    public final b d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public final class b implements w08 {
        public boolean a;

        public b() {
        }

        @Override
        public void a() {
            a15.this.c = false;
            if (this.a) {
                return;
            }
            a15.this.b = null;
        }

        @Override
        public void b() {
            a15.this.c = true;
            this.a = false;
        }

        public final void c(boolean z) {
            this.a = z;
        }
    }

    public a15(Div2View div2View, mdc mdcVar) {
        y45.j(div2View, "div2View");
        y45.j(mdcVar, "viewVisibilityCalculator");
        this.a = mdcVar;
        b bVar = new b();
        this.d = bVar;
        div2View.addPersistentDivDataObserver$div_release(bVar);
    }

    public final void c(Object obj, DivInputView divInputView, boolean z) {
        y45.j(divInputView, "view");
        if (this.c) {
            return;
        }
        if (z) {
            this.b = obj;
            f = new WeakReference(divInputView);
            divInputView.setSelection(divInputView.length());
        } else {
            if (z) {
                return;
            }
            this.b = null;
            f = null;
        }
    }

    public final void d() {
        View view;
        WeakReference weakReference = f;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        view.clearFocus();
        eg2.a(view);
    }

    public final void e(View view) {
        y45.j(view, "view");
        if (view.getTag() != null && y45.e(view.getTag(), this.b) && this.c) {
            this.d.c(true);
            view.requestFocus();
        }
    }
}
