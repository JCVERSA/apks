package defpackage;

import android.util.Base64;

public abstract class y2d {
    public byte[] a(String str) {
        return Base64.decode(str, 2);
    }

    public byte[] b(String str) {
        return Base64.decode(str, 2);
    }

    public String c(byte[] bArr) {
        return new String(Base64.encode(bArr, 2));
    }
}
