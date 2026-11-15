package defpackage;

import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public abstract class w2 implements ca3, id1 {
    @Override
    public final void B(a aVar, int i, float f) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            m(f);
        }
    }

    @Override
    public void C(nd9 nd9Var, Object obj) {
        ca3.a.d(this, nd9Var, obj);
    }

    @Override
    public abstract void D(char c);

    @Override
    public void E() {
        ca3.a.b(this);
    }

    @Override
    public final void F(a aVar, int i, double d) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            x(d);
        }
    }

    public boolean G(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return true;
    }

    public void H(nd9 nd9Var, Object obj) {
        ca3.a.c(this, nd9Var, obj);
    }

    @Override
    public id1 b(a aVar) {
        y45.j(aVar, "descriptor");
        return this;
    }

    @Override
    public void c(a aVar) {
        y45.j(aVar, "descriptor");
    }

    @Override
    public abstract void e(byte b);

    @Override
    public ca3 g(a aVar) {
        y45.j(aVar, "descriptor");
        return this;
    }

    @Override
    public void h(a aVar, int i, nd9 nd9Var, Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(nd9Var, "serializer");
        if (G(aVar, i)) {
            H(nd9Var, obj);
        }
    }

    @Override
    public final void i(a aVar, int i, char c) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            D(c);
        }
    }

    @Override
    public final void j(a aVar, int i, byte b) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            e(b);
        }
    }

    @Override
    public abstract void k(short s);

    @Override
    public abstract void l(boolean z);

    @Override
    public abstract void m(float f);

    @Override
    public final void n(a aVar, int i, int i2) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            s(i2);
        }
    }

    @Override
    public final void o(a aVar, int i, boolean z) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            l(z);
        }
    }

    @Override
    public final void p(a aVar, int i, String str) {
        y45.j(aVar, "descriptor");
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        if (G(aVar, i)) {
            v(str);
        }
    }

    @Override
    public void q(a aVar, int i, nd9 nd9Var, Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(nd9Var, "serializer");
        if (G(aVar, i)) {
            C(nd9Var, obj);
        }
    }

    @Override
    public boolean r(a aVar, int i) {
        return id1.a.a(this, aVar, i);
    }

    @Override
    public abstract void s(int i);

    @Override
    public final void t(a aVar, int i, short s) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            k(s);
        }
    }

    @Override
    public final void u(a aVar, int i, long j) {
        y45.j(aVar, "descriptor");
        if (G(aVar, i)) {
            z(j);
        }
    }

    @Override
    public abstract void v(String str);

    @Override
    public final ca3 w(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return G(aVar, i) ? g(aVar.d(i)) : c17.a;
    }

    @Override
    public abstract void x(double d);

    @Override
    public id1 y(a aVar, int i) {
        return ca3.a.a(this, aVar, i);
    }

    @Override
    public abstract void z(long j);
}
