package defpackage;

import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.a;

public abstract class t2 implements hu1, fd1 {
    @Override
    public Object A(a aVar, int i, k92 k92Var, Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(k92Var, "deserializer");
        return I(k92Var, obj);
    }

    @Override
    public Object B(k92 k92Var) {
        return hu1.a.a(this, k92Var);
    }

    @Override
    public final byte C(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return H();
    }

    @Override
    public final boolean D(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return z();
    }

    @Override
    public boolean E() {
        return true;
    }

    @Override
    public final short F(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return l();
    }

    @Override
    public final double G(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return m();
    }

    @Override
    public abstract byte H();

    public Object I(k92 k92Var, Object obj) {
        y45.j(k92Var, "deserializer");
        return B(k92Var);
    }

    public Object J() {
        throw new SerializationException(xq8.b(getClass()) + " can't retrieve untyped values");
    }

    @Override
    public fd1 b(a aVar) {
        y45.j(aVar, "descriptor");
        return this;
    }

    @Override
    public void c(a aVar) {
        y45.j(aVar, "descriptor");
    }

    @Override
    public final long e(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return h();
    }

    @Override
    public final int f(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return t();
    }

    @Override
    public Void g() {
        return null;
    }

    @Override
    public abstract long h();

    @Override
    public final String i(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return o();
    }

    @Override
    public boolean j() {
        return fd1.a.b(this);
    }

    @Override
    public hu1 k(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return w(aVar.d(i));
    }

    @Override
    public abstract short l();

    @Override
    public double m() {
        Object objJ = J();
        y45.h(objJ, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objJ).doubleValue();
    }

    @Override
    public char n() {
        Object objJ = J();
        y45.h(objJ, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objJ).charValue();
    }

    @Override
    public String o() {
        Object objJ = J();
        y45.h(objJ, "null cannot be cast to non-null type kotlin.String");
        return (String) objJ;
    }

    @Override
    public final char p(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return n();
    }

    @Override
    public int q(a aVar) {
        y45.j(aVar, "enumDescriptor");
        Object objJ = J();
        y45.h(objJ, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objJ).intValue();
    }

    @Override
    public final Object r(a aVar, int i, k92 k92Var, Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(k92Var, "deserializer");
        return (k92Var.getDescriptor().b() || E()) ? I(k92Var, obj) : g();
    }

    @Override
    public abstract int t();

    @Override
    public int u(a aVar) {
        return fd1.a.a(this, aVar);
    }

    @Override
    public hu1 w(a aVar) {
        y45.j(aVar, "descriptor");
        return this;
    }

    @Override
    public float x() {
        Object objJ = J();
        y45.h(objJ, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objJ).floatValue();
    }

    @Override
    public final float y(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return x();
    }

    @Override
    public boolean z() {
        Object objJ = J();
        y45.h(objJ, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objJ).booleanValue();
    }
}
