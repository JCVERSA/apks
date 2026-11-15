package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

public final class z extends x {
    @Override
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + w.r(y.s(str));
            } catch (FormatException e10) {
                throw new IllegalArgumentException(e10);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 7 or 8 digits long, but got " + length);
            }
            try {
                if (!w.i(y.s(str))) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        q.c(str);
        int iDigit = Character.digit(str.charAt(0), 10);
        if (iDigit != 0 && iDigit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i10 = y.f72046k[iDigit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int iB = q.b(zArr, 0, w.f72037d, true);
        for (int i11 = 1; i11 <= 6; i11++) {
            int iDigit2 = Character.digit(str.charAt(i11), 10);
            if (((i10 >> (6 - i11)) & 1) == 1) {
                iDigit2 += 10;
            }
            iB += q.b(zArr, iB, w.f72041h[iDigit2], false);
        }
        q.b(zArr, iB, w.f72039f, false);
        return zArr;
    }

    @Override
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.UPC_E);
    }
}
