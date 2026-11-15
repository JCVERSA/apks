package defpackage;

import com.google.android.gms.internal.ads.zzfzh;
import java.io.IOException;

public abstract class d6i {
    public static final d6i a;

    static {
        new b6i("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
        new b6i("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new c6i("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new c6i("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
        a = new a6i("base16()", "0123456789ABCDEF");
    }

    public static d6i g() {
        return a;
    }

    public abstract int a(byte[] bArr, CharSequence charSequence);

    public abstract void b(Appendable appendable, byte[] bArr, int i, int i2);

    public abstract int c(int i);

    public abstract int d(int i);

    public abstract d6i e();

    public abstract CharSequence f(CharSequence charSequence);

    public final String h(byte[] bArr, int i, int i2) {
        v2i.k(0, i2, bArr.length);
        StringBuilder sb = new StringBuilder(d(i2));
        try {
            b(sb, bArr, 0, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final byte[] i(CharSequence charSequence) {
        try {
            CharSequence charSequenceF = f(charSequence);
            int iC = c(charSequenceF.length());
            byte[] bArr = new byte[iC];
            int iA = a(bArr, charSequenceF);
            if (iA == iC) {
                return bArr;
            }
            byte[] bArr2 = new byte[iA];
            System.arraycopy(bArr, 0, bArr2, 0, iA);
            return bArr2;
        } catch (zzfzh e) {
            throw new IllegalArgumentException(e);
        }
    }
}
