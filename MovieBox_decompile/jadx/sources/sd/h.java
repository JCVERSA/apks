package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

public final class h extends x {
    @Override
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + w.r(str);
            } catch (FormatException e10) {
                throw new IllegalArgumentException(e10);
            }
        } else {
            if (length != 13) {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got " + length);
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
        int i10 = g.f72009j[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int iB = q.b(zArr, 0, w.f72037d, true);
        for (int i11 = 1; i11 <= 6; i11++) {
            int iDigit = Character.digit(str.charAt(i11), 10);
            if (((i10 >> (6 - i11)) & 1) == 1) {
                iDigit += 10;
            }
            iB += q.b(zArr, iB, w.f72041h[iDigit], false);
        }
        int iB2 = iB + q.b(zArr, iB, w.f72038e, false);
        for (int i12 = 7; i12 <= 12; i12++) {
            iB2 += q.b(zArr, iB2, w.f72040g[Character.digit(str.charAt(i12), 10)], true);
        }
        q.b(zArr, iB2, w.f72037d, true);
        return zArr;
    }

    @Override
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.EAN_13);
    }
}
