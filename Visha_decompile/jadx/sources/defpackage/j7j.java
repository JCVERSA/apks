package defpackage;

import com.google.android.gms.internal.measurement.zzko;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public abstract class j7j {
    public static final Charset a = Charset.forName(CharEncoding.US_ASCII);
    public static final Charset b = Charset.forName("UTF-8");
    public static final Charset c = Charset.forName(CharEncoding.ISO_8859_1);
    public static final byte[] d;
    public static final ByteBuffer e;
    public static final y4j f;

    static {
        byte[] bArr = new byte[0];
        d = bArr;
        e = ByteBuffer.wrap(bArr);
        int i = y4j.a;
        u4j u4jVar = new u4j(bArr, 0, 0, false, null);
        try {
            u4jVar.a(0);
            f = u4jVar;
        } catch (zzko e2) {
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
