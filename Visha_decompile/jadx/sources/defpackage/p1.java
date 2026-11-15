package defpackage;

import java.io.IOException;
import java.io.OutputStream;

public abstract class p1 extends j1 {
    public static p1 t(byte[] bArr) throws IOException {
        f1 f1Var = new f1(bArr);
        try {
            p1 p1VarD = f1Var.D();
            if (f1Var.available() == 0) {
                return p1VarD;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x0) && m(((x0) obj).j());
    }

    @Override
    public abstract int hashCode();

    @Override
    public final p1 j() {
        return this;
    }

    @Override
    public void k(OutputStream outputStream, String str) {
        o1 o1VarB = o1.b(outputStream, str);
        o1VarB.w(this, true);
        o1VarB.c();
    }

    public abstract boolean m(p1 p1Var);

    public abstract void n(o1 o1Var, boolean z);

    public abstract boolean o();

    public void p(OutputStream outputStream) {
        o1 o1VarA = o1.a(outputStream);
        o1VarA.w(this, true);
        o1VarA.c();
    }

    public abstract int q(boolean z);

    public final boolean r(x0 x0Var) {
        return this == x0Var || (x0Var != null && m(x0Var.j()));
    }

    public final boolean s(p1 p1Var) {
        return this == p1Var || m(p1Var);
    }

    public p1 u() {
        return this;
    }

    public p1 v() {
        return this;
    }
}
