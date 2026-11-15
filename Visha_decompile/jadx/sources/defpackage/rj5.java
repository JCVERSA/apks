package defpackage;

import java.util.List;
import org.jsoup.nodes.b;
import org.jsoup.nodes.g;

public abstract class rj5 extends g {
    public Object e;

    @Override
    public String a(String str) {
        f0();
        return super.a(str);
    }

    public String d0() {
        return h(E());
    }

    @Override
    public rj5 t(g gVar) {
        rj5 rj5Var = (rj5) super.t(gVar);
        if (z()) {
            rj5Var.e = ((b) this.e).clone();
        }
        return rj5Var;
    }

    public final void f0() {
        if (z()) {
            return;
        }
        Object obj = this.e;
        b bVar = new b();
        this.e = bVar;
        if (obj != null) {
            bVar.B(E(), (String) obj);
        }
    }

    @Override
    public String h(String str) {
        dnb.i(str);
        if (z()) {
            return super.h(str);
        }
        return str.equals(E()) ? (String) this.e : "";
    }

    @Override
    public g i(String str, String str2) {
        if (z() || !str.equals(E())) {
            f0();
            super.i(str, str2);
        } else {
            this.e = str2;
        }
        return this;
    }

    @Override
    public final b j() {
        f0();
        return (b) this.e;
    }

    @Override
    public String l() {
        return A() ? L().l() : "";
    }

    @Override
    public int p() {
        return 0;
    }

    @Override
    public void u(String str) {
    }

    @Override
    public g v() {
        return this;
    }

    @Override
    public List w() {
        return g.d;
    }

    @Override
    public final boolean z() {
        return this.e instanceof b;
    }
}
