package defpackage;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public abstract class zsi {
    public static final Charset a;
    public static final byte[] b;
    public static final ByteBuffer c;

    static {
        Charset.forName(CharEncoding.US_ASCII);
        a = Charset.forName("UTF-8");
        Charset.forName(CharEncoding.ISO_8859_1);
        byte[] bArr = new byte[0];
        b = bArr;
        c = ByteBuffer.wrap(bArr);
        vri.f(bArr, 0, 0, false);
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int b(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static Object c(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }
}
