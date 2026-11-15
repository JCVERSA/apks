package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.MarginPageTransformer;
import androidx.viewpager2.widget.ViewPager2;

public final class s70 {
    public t70 a;
    public final ll b;
    public final CompositePageTransformer c;
    public MarginPageTransformer d;
    public final ViewPager2.PageTransformer e;

    public s70() {
        t70 t70Var = new t70();
        this.a = t70Var;
        this.b = new ll(t70Var);
        this.c = new CompositePageTransformer();
    }

    public final void a(ViewPager2.PageTransformer pageTransformer) {
        y45.j(pageTransformer, "transformer");
        this.c.addTransformer(pageTransformer);
    }

    public final void b() {
        g();
        MarginPageTransformer marginPageTransformer = new MarginPageTransformer(this.a.e());
        this.d = marginPageTransformer;
        this.c.addTransformer(marginPageTransformer);
    }

    public final CompositePageTransformer c() {
        return this.c;
    }

    public final t70 d() {
        return this.a;
    }

    public final void e(Context context, AttributeSet attributeSet) {
        y45.j(context, "context");
        this.b.a(context, attributeSet);
    }

    public final void f() {
        ViewPager2.PageTransformer pageTransformer = this.e;
        if (pageTransformer != null) {
            this.c.removeTransformer(pageTransformer);
        }
    }

    public final void g() {
        MarginPageTransformer marginPageTransformer = this.d;
        if (marginPageTransformer != null) {
            this.c.removeTransformer(marginPageTransformer);
        }
    }

    public final void h(ViewPager2.PageTransformer pageTransformer) {
        y45.j(pageTransformer, "transformer");
        this.c.removeTransformer(pageTransformer);
    }

    public final void i(int i) {
        this.a.w(i);
    }
}
