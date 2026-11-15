package rd;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;
import kd.d;

public final class c {

    private final md.c f70972a = new md.c(md.a.f66380o);

    private int a(byte[] bArr, int i10, int i11, int i12, int i13) throws ChecksumException {
        int i14 = i11 + i12;
        int i15 = i13 == 0 ? 1 : 2;
        int[] iArr = new int[i14 / i15];
        for (int i16 = 0; i16 < i14; i16++) {
            if (i13 == 0 || i16 % 2 == i13 - 1) {
                iArr[i16 / i15] = bArr[i16 + i10] & 255;
            }
        }
        try {
            int iA = this.f70972a.a(iArr, i12 / i15);
            for (int i17 = 0; i17 < i11; i17++) {
                if (i13 == 0 || i17 % 2 == i13 - 1) {
                    bArr[i17 + i10] = (byte) iArr[i17 / i15];
                }
            }
            return iA;
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public d b(kd.b bVar, Map map) throws ChecksumException, FormatException {
        int iA;
        byte[] bArr;
        byte[] bArrA = new a(bVar).a();
        int iA2 = a(bArrA, 0, 10, 10, 0);
        int i10 = bArrA[0] & 15;
        if (i10 == 2 || i10 == 3 || i10 == 4) {
            iA = iA2 + a(bArrA, 20, 84, 40, 1) + a(bArrA, 20, 84, 40, 2);
            bArr = new byte[94];
        } else {
            if (i10 != 5) {
                throw FormatException.getFormatInstance();
            }
            iA = iA2 + a(bArrA, 20, 68, 56, 1) + a(bArrA, 20, 68, 56, 2);
            bArr = new byte[78];
        }
        System.arraycopy(bArrA, 0, bArr, 0, 10);
        System.arraycopy(bArrA, 20, bArr, 10, bArr.length - 10);
        d dVarA = b.a(bArr, i10);
        dVarA.n(Integer.valueOf(iA));
        return dVarA;
    }
}
