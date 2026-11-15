package defpackage;

import com.google.android.gms.internal.auth.zzfa;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public abstract class gkh {
    public static final Charset a = Charset.forName(CharEncoding.US_ASCII);
    public static final Charset b = Charset.forName("UTF-8");
    public static final Charset c = Charset.forName(CharEncoding.ISO_8859_1);
    public static final byte[] d;
    public static final ByteBuffer e;
    public static final s2h f;

    static {
        byte[] bArr = new byte[0];
        d = bArr;
        e = ByteBuffer.wrap(bArr);
        int i = s2h.a;
        v0h v0hVar = new v0h(bArr, 0, 0, false, null);
        try {
            v0hVar.a(0);
            f = v0hVar;
        } catch (zzfa e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int a(byte[] bArr) {
        int length = bArr.length;
        int iB = b(length, bArr, 0, length);
        if (iB == 0) {
            return 1;
        }
        return iB;
    }

    public static int b(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static Object c(Object obj) {
        obj.getClass();
        return obj;
    }
}
