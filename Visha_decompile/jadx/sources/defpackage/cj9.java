package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.security.Signature;
import java.security.SignatureException;

public class cj9 extends OutputStream {
    public Signature b;

    public cj9(Signature signature) {
        this.b = signature;
    }

    @Override
    public void write(int i) throws IOException {
        try {
            this.b.update((byte) i);
        } catch (SignatureException e) {
            throw qe3.c(e.getMessage(), e);
        }
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        try {
            this.b.update(bArr);
        } catch (SignatureException e) {
            throw qe3.c(e.getMessage(), e);
        }
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.b.update(bArr, i, i2);
        } catch (SignatureException e) {
            throw qe3.c(e.getMessage(), e);
        }
    }
}
