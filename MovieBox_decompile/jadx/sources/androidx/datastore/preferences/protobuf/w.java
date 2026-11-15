package androidx.datastore.preferences.protobuf;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;

public abstract class w {

    static final Charset f8603a = Charset.forName(C.ASCII_NAME);

    static final Charset f8604b = Charset.forName("UTF-8");

    static final Charset f8605c = Charset.forName("ISO-8859-1");

    public static final byte[] f8606d;

    public static final ByteBuffer f8607e;

    public static final i f8608f;

    public interface a {
        int getNumber();
    }

    public interface b {
    }

    public interface c {
        boolean isInRange(int i10);
    }

    public interface d extends List, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        d mutableCopyWithCapacity(int i10);
    }

    static {
        byte[] bArr = new byte[0];
        f8606d = bArr;
        f8607e = ByteBuffer.wrap(bArr);
        f8608f = i.k(bArr);
    }

    static Object a(Object obj) {
        obj.getClass();
        return obj;
    }

    static Object b(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public static int c(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    static int e(byte[] bArr, int i10, int i11) {
        int iG = g(i11, bArr, i10, i11);
        if (iG == 0) {
            return 1;
        }
        return iG;
    }

    public static int f(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    static int g(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }
}
