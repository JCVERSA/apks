package sd;

import com.google.zxing.BarcodeFormat;

public final class i extends w {

    private final int[] f72011i = new int[4];

    @Override
    protected int l(kd.a aVar, int[] iArr, StringBuilder sb2) {
        int[] iArr2 = this.f72011i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int i10 = iArr[1];
        for (int i11 = 0; i11 < 4 && i10 < iM; i11++) {
            sb2.append((char) (w.j(aVar, iArr2, i10, w.f72040g) + 48));
            for (int i12 : iArr2) {
                i10 += i12;
            }
        }
        int i13 = w.n(aVar, i10, true, w.f72038e)[1];
        for (int i14 = 0; i14 < 4 && i13 < iM; i14++) {
            sb2.append((char) (w.j(aVar, iArr2, i13, w.f72040g) + 48));
            for (int i15 : iArr2) {
                i13 += i15;
            }
        }
        return i13;
    }

    @Override
    BarcodeFormat q() {
        return BarcodeFormat.EAN_8;
    }
}
