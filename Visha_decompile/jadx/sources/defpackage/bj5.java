package defpackage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class bj5 implements Enumeration {
    public f1 a;
    public Object b = a();

    public bj5(byte[] bArr) {
        this.a = new f1(bArr, true);
    }

    public final Object a() {
        try {
            return this.a.D();
        } catch (IOException e) {
            throw new ASN1ParsingException("malformed ASN.1: " + e, e);
        }
    }

    @Override
    public boolean hasMoreElements() {
        return this.b != null;
    }

    @Override
    public Object nextElement() {
        Object obj = this.b;
        if (obj == null) {
            throw new NoSuchElementException();
        }
        this.b = a();
        return obj;
    }
}
