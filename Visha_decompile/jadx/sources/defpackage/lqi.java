package defpackage;

import com.google.android.gms.internal.play_billing.zzhb;
import java.nio.ByteBuffer;

public abstract class lqi {
    public static final byte[] a;

    static {
        byte[] bArr = new byte[0];
        a = bArr;
        ByteBuffer.wrap(bArr);
        int i = a2i.a;
        try {
            new f0i(bArr, 0, 0, false, null).c(0);
        } catch (zzhb e) {
            throw new IllegalArgumentException(e);
        }
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
}
