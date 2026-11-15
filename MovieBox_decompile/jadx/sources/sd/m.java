package sd;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

public final class m extends q {

    private static final int[] f72019b = {1, 1, 1, 1};

    private static final int[] f72020c = {3, 1, 1};

    private static final int[][] f72021d = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override
    public boolean[] d(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        q.c(str);
        boolean[] zArr = new boolean[(length * 9) + 9];
        int iB = q.b(zArr, 0, f72019b, true);
        for (int i10 = 0; i10 < length; i10 += 2) {
            int iDigit = Character.digit(str.charAt(i10), 10);
            int iDigit2 = Character.digit(str.charAt(i10 + 1), 10);
            int[] iArr = new int[10];
            for (int i11 = 0; i11 < 5; i11++) {
                int i12 = i11 * 2;
                int[][] iArr2 = f72021d;
                iArr[i12] = iArr2[iDigit][i11];
                iArr[i12 + 1] = iArr2[iDigit2][i11];
            }
            iB += q.b(zArr, iB, iArr, true);
        }
        q.b(zArr, iB, f72020c, true);
        return zArr;
    }

    @Override
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.ITF);
    }
}
