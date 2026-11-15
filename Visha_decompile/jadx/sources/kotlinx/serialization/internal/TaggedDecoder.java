package kotlinx.serialization.internal;

import defpackage.c74;
import defpackage.fd1;
import defpackage.hu1;
import defpackage.i81;
import defpackage.k92;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import kotlinx.serialization.descriptors.a;

public abstract class TaggedDecoder implements hu1, fd1 {
    public final ArrayList a = new ArrayList();
    public boolean b;

    @Override
    public final Object A(a aVar, int i, final k92 k92Var, final Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(k92Var, "deserializer");
        return Y(V(aVar, i), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Object invoke() {
                return this.this$0.I(k92Var, obj);
            }
        });
    }

    @Override
    public abstract Object B(k92 k92Var);

    @Override
    public final byte C(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return K(V(aVar, i));
    }

    @Override
    public final boolean D(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return J(V(aVar, i));
    }

    @Override
    public abstract boolean E();

    @Override
    public final short F(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return S(V(aVar, i));
    }

    @Override
    public final double G(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return M(V(aVar, i));
    }

    @Override
    public final byte H() {
        return K(W());
    }

    public Object I(k92 k92Var, Object obj) {
        y45.j(k92Var, "deserializer");
        return B(k92Var);
    }

    public abstract boolean J(Object obj);

    public abstract byte K(Object obj);

    public abstract char L(Object obj);

    public abstract double M(Object obj);

    public abstract int N(Object obj, a aVar);

    public abstract float O(Object obj);

    public hu1 P(Object obj, a aVar) {
        y45.j(aVar, "inlineDescriptor");
        X(obj);
        return this;
    }

    public abstract int Q(Object obj);

    public abstract long R(Object obj);

    public abstract short S(Object obj);

    public abstract String T(Object obj);

    public final Object U() {
        return i81.C0(this.a);
    }

    public abstract Object V(a aVar, int i);

    public final Object W() {
        ArrayList arrayList = this.a;
        Object objRemove = arrayList.remove(y71.m(arrayList));
        this.b = true;
        return objRemove;
    }

    public final void X(Object obj) {
        this.a.add(obj);
    }

    public final Object Y(Object obj, c74 c74Var) {
        X(obj);
        Object objInvoke = c74Var.invoke();
        if (!this.b) {
            W();
        }
        this.b = false;
        return objInvoke;
    }

    @Override
    public final long e(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return R(V(aVar, i));
    }

    @Override
    public final int f(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return Q(V(aVar, i));
    }

    @Override
    public final Void g() {
        return null;
    }

    @Override
    public final long h() {
        return R(W());
    }

    @Override
    public final String i(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return T(V(aVar, i));
    }

    @Override
    public boolean j() {
        return fd1.a.b(this);
    }

    @Override
    public final hu1 k(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return P(V(aVar, i), aVar.d(i));
    }

    @Override
    public final short l() {
        return S(W());
    }

    @Override
    public final double m() {
        return M(W());
    }

    @Override
    public final char n() {
        return L(W());
    }

    @Override
    public final String o() {
        return T(W());
    }

    @Override
    public final char p(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return L(V(aVar, i));
    }

    @Override
    public final int q(a aVar) {
        y45.j(aVar, "enumDescriptor");
        return N(W(), aVar);
    }

    @Override
    public final Object r(a aVar, int i, final k92 k92Var, final Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(k92Var, "deserializer");
        return Y(V(aVar, i), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Object invoke() {
                return this.this$0.E() ? this.this$0.I(k92Var, obj) : this.this$0.g();
            }
        });
    }

    @Override
    public final int t() {
        return Q(W());
    }

    @Override
    public int u(a aVar) {
        return fd1.a.a(this, aVar);
    }

    @Override
    public hu1 w(a aVar) {
        y45.j(aVar, "descriptor");
        return P(W(), aVar);
    }

    @Override
    public final float x() {
        return O(W());
    }

    @Override
    public final float y(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return O(V(aVar, i));
    }

    @Override
    public final boolean z() {
        return J(W());
    }
}
