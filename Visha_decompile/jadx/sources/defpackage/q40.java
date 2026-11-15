package defpackage;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class q40 implements x0, yy4 {
    public final int b;
    public final int c;
    public final u1 d;

    public q40(int i, int i2, u1 u1Var) {
        this.b = i;
        this.c = i2;
        this.d = u1Var;
    }

    public p1 b() {
        return this.d.c(this.b, this.c);
    }

    @Override
    public p1 j() {
        try {
            return b();
        } catch (IOException e) {
            throw new ASN1ParsingException(e.getMessage());
        }
    }
}
