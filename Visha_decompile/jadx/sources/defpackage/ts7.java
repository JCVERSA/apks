package defpackage;

import androidx.media3.common.C;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

public abstract class ts7 {
    public static List a(byte[] bArr) {
        long jE = e(d(bArr));
        long jE2 = e(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(b(jE));
        arrayList.add(b(jE2));
        return arrayList;
    }

    public static byte[] b(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    public static int c(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static int d(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    public static long e(long j) {
        return (j * C.NANOS_PER_SECOND) / 48000;
    }
}
