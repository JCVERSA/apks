package defpackage;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.core.view.ViewCompat;

public final class e8 {
    public final TextView a;
    public View.OnAttachStateChangeListener b;
    public ViewTreeObserver.OnPreDrawListener c;
    public a d;
    public boolean e;

    public static final class a {
        public final int a;
        public final int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public final int a() {
            return this.a;
        }

        public final int b() {
            return this.a + this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b);
        }

        public String toString() {
            return "Params(maxLines=" + this.a + ", minHiddenLines=" + this.b + ')';
        }
    }

    public static final class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            y45.j(view, "v");
            e8.this.h();
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            y45.j(view, "v");
            e8.this.k();
        }
    }

    public static final class c implements ViewTreeObserver.OnPreDrawListener {
        public c() {
        }

        @Override
        public boolean onPreDraw() {
            a aVar = e8.this.d;
            if (aVar == null || TextUtils.isEmpty(e8.this.a.getText())) {
                return true;
            }
            if (e8.this.e) {
                e8.this.k();
                e8.this.e = false;
                return true;
            }
            Integer num = e8.this.a.getLineCount() > aVar.b() ? null : Integer.MAX_VALUE;
            int iIntValue = num != null ? num.intValue() : aVar.a();
            if (iIntValue == e8.this.a.getMaxLines()) {
                e8.this.k();
                return true;
            }
            e8.this.a.setMaxLines(iIntValue);
            e8.this.e = true;
            return false;
        }
    }

    public e8(TextView textView) {
        y45.j(textView, "textView");
        this.a = textView;
    }

    public final void g() {
        if (this.b != null) {
            return;
        }
        b bVar = new b();
        this.a.addOnAttachStateChangeListener(bVar);
        this.b = bVar;
    }

    public final void h() {
        if (this.c != null) {
            return;
        }
        c cVar = new c();
        ViewTreeObserver viewTreeObserver = this.a.getViewTreeObserver();
        y45.i(viewTreeObserver, "textView.viewTreeObserver");
        viewTreeObserver.addOnPreDrawListener(cVar);
        this.c = cVar;
    }

    public final void i(a aVar) {
        y45.j(aVar, "params");
        if (y45.e(this.d, aVar)) {
            return;
        }
        this.d = aVar;
        if (ViewCompat.isAttachedToWindow(this.a)) {
            h();
        }
        g();
    }

    public final void j() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.b;
        if (onAttachStateChangeListener != null) {
            this.a.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        this.b = null;
    }

    public final void k() {
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.c;
        if (onPreDrawListener != null) {
            ViewTreeObserver viewTreeObserver = this.a.getViewTreeObserver();
            y45.i(viewTreeObserver, "textView.viewTreeObserver");
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
        }
        this.c = null;
    }

    public final void l() {
        j();
        k();
    }
}
