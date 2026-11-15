package defpackage;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class k40 implements n1 {
    public u1 b;

    public k40(u1 u1Var) {
        this.b = u1Var;
    }

    public static j40 a(u1 u1Var) {
        return new j40(fz9.c(new yf1(u1Var)));
    }

    @Override
    public p1 b() {
        return a(this.b);
    }

    @Override
    public InputStream f() {
        return new yf1(this.b);
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
