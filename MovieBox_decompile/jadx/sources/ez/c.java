package ez;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;

public abstract class c {

    private static final byte[] f59863a = new byte[4096];

    public static int a(InputStream inputStream, byte[] bArr) {
        return b(inputStream, bArr, 0, bArr.length);
    }

    public static int b(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        if (i11 < 0 || i10 < 0 || i11 + i10 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i12 = 0;
        while (i12 != i11) {
            int i13 = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (i13 == -1) {
                break;
            }
            i12 += i13;
        }
        return i12;
    }

    public static long c(InputStream inputStream, long j10) throws IOException {
        int iB;
        long j11 = j10;
        while (j11 > 0) {
            long jSkip = inputStream.skip(j11);
            if (jSkip == 0) {
                break;
            }
            j11 -= jSkip;
        }
        while (j11 > 0 && (iB = b(inputStream, f59863a, 0, (int) Math.min(j11, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM))) >= 1) {
            j11 -= (long) iB;
        }
        return j10 - j11;
    }
}
