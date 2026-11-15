package org.jsoup.nodes;

import java.util.Collections;
import java.util.List;

abstract class i extends j {

    private static final List f68599d = Collections.emptyList();

    Object f68600c;

    i() {
    }

    private void b0() {
        if (x()) {
            return;
        }
        Object obj = this.f68600c;
        b bVar = new b();
        this.f68600c = bVar;
        if (obj != null) {
            bVar.w(B(), (String) obj);
        }
    }

    @Override
    public String a(String str) {
        b0();
        return super.a(str);
    }

    String a0() {
        return g(B());
    }

    @Override
    public String g(String str) {
        org.jsoup.helper.d.j(str);
        if (x()) {
            return super.g(str);
        }
        return str.equals(B()) ? (String) this.f68600c : "";
    }

    @Override
    public j h(String str, String str2) {
        if (x() || !str.equals(B())) {
            b0();
            super.h(str, str2);
        } else {
            this.f68600c = str2;
        }
        return this;
    }

    @Override
    public final b i() {
        b0();
        return (b) this.f68600c;
    }

    @Override
    public String j() {
        return y() ? I().j() : "";
    }

    @Override
    public int n() {
        return 0;
    }

    @Override
    protected void s(String str) {
    }

    @Override
    protected List t() {
        return f68599d;
    }

    @Override
    public boolean w(String str) {
        b0();
        return super.w(str);
    }

    @Override
    protected final boolean x() {
        return this.f68600c instanceof b;
    }
}
