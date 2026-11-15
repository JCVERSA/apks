package defpackage;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class h40 implements t0 {
    public u1 b;
    public xf1 c;

    public h40(u1 u1Var) {
        this.b = u1Var;
    }

    public static g40 a(u1 u1Var) {
        xf1 xf1Var = new xf1(u1Var, false);
        return new g40(fz9.c(xf1Var), xf1Var.d());
    }

    @Override
    public p1 b() {
        return a(this.b);
    }

    @Override
    public InputStream c() {
        xf1 xf1Var = new xf1(this.b, false);
        this.c = xf1Var;
        return xf1Var;
    }

    @Override
    public int i() {
        return this.c.d();
    }

    @Override
    public p1 j() {
        try {
            return b();
        } catch (IOException e) {
            throw new ASN1ParsingException("IOException converting stream to byte array: " + e.getMessage(), e);
        }
    }
}
