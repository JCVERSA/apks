package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

public final class j extends x {
    @Override
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + w.r(str);
            } catch (FormatException e10) {
                throw new IllegalArgumentException(e10);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 7 or 8 digits long, but got " + length);
            }
            try {
                if (!w.i(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        q.c(str);
        boolean[] zArr = new boolean[67];
        int iB = q.b(zArr, 0, w.f72037d, true);
        for (int i10 = 0; i10 <= 3; i10++) {
            iB += q.b(zArr, iB, w.f72040g[Character.digit(str.charAt(i10), 10)], false);
        }
        int iB2 = iB + q.b(zArr, iB, w.f72038e, false);
        for (int i11 = 4; i11 <= 7; i11++) {
            iB2 += q.b(zArr, iB2, w.f72040g[Character.digit(str.charAt(i11), 10)], true);
        }
        q.b(zArr, iB2, w.f72037d, true);
        return zArr;
    }

    @Override
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.EAN_8);
    }
}
