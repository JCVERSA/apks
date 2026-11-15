package defpackage;

import org.bouncycastle.crypto.CryptoServicePurpose;

public class h42 implements xl1 {
    public final String a;
    public final int b;
    public final Object c;
    public final CryptoServicePurpose d;

    public h42(String str, int i) {
        this(str, i, null, CryptoServicePurpose.ANY);
    }

    @Override
    public String a() {
        return this.a;
    }

    public h42(String str, int i, Object obj, CryptoServicePurpose cryptoServicePurpose) {
        this.a = str;
        this.b = i;
        this.c = obj;
        if (obj instanceof CryptoServicePurpose) {
            throw new IllegalArgumentException("params should not be CryptoServicePurpose");
        }
        this.d = cryptoServicePurpose;
    }
}
