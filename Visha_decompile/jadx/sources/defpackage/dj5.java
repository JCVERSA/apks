package defpackage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import org.bouncycastle.asn1.ASN1ParsingException;

public class dj5 extends s1 {
    public byte[] d;

    public dj5(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'encoded' cannot be null");
        }
        this.d = bArr;
    }

    @Override
    public x0 A(int i) {
        H();
        return super.A(i);
    }

    @Override
    public Enumeration B() {
        byte[] bArrI = I();
        return bArrI != null ? new bj5(bArrI) : super.B();
    }

    @Override
    public s0 C() {
        return ((s1) v()).C();
    }

    @Override
    public a1 D() {
        return ((s1) v()).D();
    }

    @Override
    public m1 E() {
        return ((s1) v()).E();
    }

    @Override
    public t1 F() {
        return ((s1) v()).F();
    }

    public final synchronized void H() {
        if (this.d != null) {
            f1 f1Var = new f1(this.d, true);
            try {
                y0 y0VarG = f1Var.G();
                f1Var.close();
                this.b = y0VarG.g();
                this.d = null;
            } catch (IOException e) {
                throw new ASN1ParsingException("malformed ASN.1: " + e, e);
            }
        }
    }

    public final synchronized byte[] I() {
        return this.d;
    }

    @Override
    public int hashCode() {
        H();
        return super.hashCode();
    }

    @Override
    public Iterator iterator() {
        H();
        return super.iterator();
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        byte[] bArrI = I();
        if (bArrI != null) {
            o1Var.o(z, 48, bArrI);
        } else {
            super.v().n(o1Var, z);
        }
    }

    @Override
    public int q(boolean z) {
        byte[] bArrI = I();
        return bArrI != null ? o1.g(z, bArrI.length) : super.v().q(z);
    }

    @Override
    public int size() {
        H();
        return super.size();
    }

    @Override
    public p1 u() {
        H();
        return super.u();
    }

    @Override
    public p1 v() {
        H();
        return super.v();
    }
}
