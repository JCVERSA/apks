package defpackage;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class tq1 implements t0 {
    public final f72 b;
    public int c = 0;

    public tq1(f72 f72Var) {
        this.b = f72Var;
    }

    public final InputStream a(boolean z) throws IOException {
        int iE = this.b.e();
        if (iE < 1) {
            throw new IllegalStateException("content octets cannot be empty");
        }
        int i = this.b.read();
        this.c = i;
        if (i > 0) {
            if (iE < 2) {
                throw new IllegalStateException("zero length data with non-zero pad bits");
            }
            if (i > 7) {
                throw new IllegalStateException("pad bits cannot be greater than 7 or less than 0");
            }
            if (z) {
                throw new IOException("expected octet-aligned bitstring, but found padBits: " + this.c);
            }
        }
        return this.b;
    }

    @Override
    public p1 b() {
        return s0.w(this.b.h());
    }

    @Override
    public InputStream c() {
        return a(false);
    }

    @Override
    public int i() {
        return this.c;
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
