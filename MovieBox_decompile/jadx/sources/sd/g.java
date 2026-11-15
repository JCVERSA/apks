package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;

public final class g extends w {

    static final int[] f72009j = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    private final int[] f72010i = new int[4];

    private static void s(StringBuilder sb2, int i10) throws NotFoundException {
        for (int i11 = 0; i11 < 10; i11++) {
            if (i10 == f72009j[i11]) {
                sb2.insert(0, (char) (i11 + 48));
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override
    protected int l(kd.a aVar, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.f72010i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int i10 = iArr[1];
        int i11 = 0;
        for (int i12 = 0; i12 < 6 && i10 < iM; i12++) {
            int iJ = w.j(aVar, iArr2, i10, w.f72041h);
            sb2.append((char) ((iJ % 10) + 48));
            for (int i13 : iArr2) {
                i10 += i13;
            }
            if (iJ >= 10) {
                i11 |= 1 << (5 - i12);
            }
        }
        s(sb2, i11);
        int i14 = w.n(aVar, i10, true, w.f72038e)[1];
        for (int i15 = 0; i15 < 6 && i14 < iM; i15++) {
            sb2.append((char) (w.j(aVar, iArr2, i14, w.f72040g) + 48));
            for (int i16 : iArr2) {
                i14 += i16;
            }
        }
        return i14;
    }

    @Override
    BarcodeFormat q() {
        return BarcodeFormat.EAN_13;
    }
}
