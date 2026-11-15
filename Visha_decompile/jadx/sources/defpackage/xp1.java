package defpackage;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class xp1 implements n1 {
    public f72 b;

    public xp1(f72 f72Var) {
        this.b = f72Var;
    }

    @Override
    public p1 b() {
        return new wp1(this.b.h());
    }

    @Override
    public InputStream f() {
        return this.b;
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
