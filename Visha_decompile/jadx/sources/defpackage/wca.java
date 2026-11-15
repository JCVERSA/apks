package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.q1;

public class wca extends r17 {
    public View n;
    public jf7 o;
    public Context p;
    public String q;
    public boolean r;
    public boolean s;
    public boolean t;
    public Float u;

    public static class a extends r17.a {
        public a(wca wcaVar) {
            super(wcaVar);
        }

        @Override
        public jf7 f() {
            r17 r17Var = this.a;
            if (r17Var instanceof wca) {
                return ((wca) r17Var).o;
            }
            return null;
        }
    }

    public wca(Context context, String str) {
        super(str);
        this.r = false;
        this.s = false;
        this.t = false;
        this.p = context;
    }

    @Override
    public void b() {
        super.b();
        this.n = null;
    }

    public int r() {
        return 4;
    }

    public void setSkipListener(jf7 jf7Var) {
        this.o = jf7Var;
    }

    public void t() {
        if (this.r) {
            r6.s(this.p, this.q, this.s);
        }
        if (a()) {
            q1 q1Var = new q1(new ied.b().i(r()).e(this.b).s(this.c).m(this.d).k(this.e).c(this.j).j(this.m).p(this.g).w(this.h).b(this.i).g());
            q1Var.g(new a(this));
            q1Var.E();
        }
    }

    public wca u(String str, boolean z) {
        this.r = true;
        this.q = str;
        this.s = z;
        return this;
    }

    public void v(View view) {
        this.n = view;
    }

    public void w(Float f) {
        this.u = f;
    }

    public void x() {
        G g = this.a;
        if (g == null || !(g instanceof q1)) {
            return;
        }
        ied iedVarP = g.p();
        if (iedVarP != null && TextUtils.isEmpty(iedVarP.m())) {
            iedVarP.f(this.m);
        }
        try {
            ((q1) this.a).s0(this.t);
            ((q1) this.a).j0(this.u);
            ((q1) this.a).q0(this.n);
            this.l.add(this.a);
        } catch (Throwable th) {
            ikd.b().w("ssp", "TSplash show error: " + th.getMessage());
        }
        ((q1) this.a).p0(this.p);
    }
}
