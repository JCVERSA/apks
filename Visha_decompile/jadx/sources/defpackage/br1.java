package defpackage;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class br1 implements x0, yy4 {
    public u1 b;

    public br1(u1 u1Var) {
        this.b = u1Var;
    }

    @Override
    public p1 b() {
        return vq1.b(this.b.h());
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
