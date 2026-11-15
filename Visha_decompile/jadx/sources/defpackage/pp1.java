package defpackage;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Exception;
import org.bouncycastle.asn1.ASN1ParsingException;

public class pp1 implements x0, yy4 {
    public u1 b;

    public pp1(u1 u1Var) {
        this.b = u1Var;
    }

    public static uq1 a(u1 u1Var) throws ASN1Exception {
        try {
            return new uq1(new yq1(u1Var.h()));
        } catch (IllegalArgumentException e) {
            throw new ASN1Exception(e.getMessage(), e);
        }
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
            throw new ASN1ParsingException("unable to get DER object", e);
        } catch (IllegalArgumentException e2) {
            throw new ASN1ParsingException("unable to get DER object", e2);
        }
    }
}
