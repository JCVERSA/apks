package defpackage;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class o40 implements x0, yy4 {
    public u1 b;

    public o40(u1 u1Var) {
        this.b = u1Var;
    }

    public static n40 a(u1 u1Var) {
        return new n40(u1Var.h());
    }

    @Override
    public p1 b() {
        return a(this.b);
    }

    @Override
    public p1 j() {
        try {
            return b();
        } catch (IOException e) {
            throw new ASN1ParsingException(e.getMessage(), e);
        }
    }
}
