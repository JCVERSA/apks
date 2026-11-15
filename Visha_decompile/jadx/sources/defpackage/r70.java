package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.MarginPageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.zhpan.bannerview.transform.OverlapPageTransformer;
import com.zhpan.bannerview.transform.ScaleInTransformer;

public class r70 {
    public u70 a;
    public final kl b;
    public final CompositePageTransformer c;
    public MarginPageTransformer d;
    public ViewPager2.PageTransformer e;

    public r70() {
        u70 u70Var = new u70();
        this.a = u70Var;
        this.b = new kl(u70Var);
        this.c = new CompositePageTransformer();
    }

    public void a(ViewPager2.PageTransformer pageTransformer) {
        this.c.addTransformer(pageTransformer);
    }

    public void b() {
        g();
        MarginPageTransformer marginPageTransformer = new MarginPageTransformer(this.a.i());
        this.d = marginPageTransformer;
        this.c.addTransformer(marginPageTransformer);
    }

    public u70 c() {
        if (this.a == null) {
            this.a = new u70();
        }
        return this.a;
    }

    public CompositePageTransformer d() {
        return this.c;
    }

    public void e(Context context, AttributeSet attributeSet) {
        this.b.a(context, attributeSet);
    }

    public void f() {
        ViewPager2.PageTransformer pageTransformer = this.e;
        if (pageTransformer != null) {
            this.c.removeTransformer(pageTransformer);
        }
    }

    public void g() {
        MarginPageTransformer marginPageTransformer = this.d;
        if (marginPageTransformer != null) {
            this.c.removeTransformer(marginPageTransformer);
        }
    }

    public void h(ViewPager2.PageTransformer pageTransformer) {
        this.c.removeTransformer(pageTransformer);
    }

    public void i(boolean z, float f) {
        f();
        if (z) {
            this.e = new OverlapPageTransformer(this.a.h(), f, 0.0f, 1.0f, 0.0f);
        } else {
            this.e = new ScaleInTransformer(f);
        }
        this.c.addTransformer(this.e);
    }

    public void j(int i) {
        this.a.M(i);
    }
}
