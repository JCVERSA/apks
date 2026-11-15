package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.EnumMap;
import java.util.Map;

final class t {

    private final int[] f72029a = new int[4];

    private final StringBuilder f72030b = new StringBuilder();

    t() {
    }

    private int a(kd.a aVar, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.f72029a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int iL = iArr[1];
        int i10 = 0;
        for (int i11 = 0; i11 < 2 && iL < iM; i11++) {
            int iJ = w.j(aVar, iArr2, iL, w.f72041h);
            sb2.append((char) ((iJ % 10) + 48));
            for (int i12 : iArr2) {
                iL += i12;
            }
            if (iJ >= 10) {
                i10 |= 1 << (1 - i11);
            }
            if (i11 != 1) {
                iL = aVar.l(aVar.k(iL));
            }
        }
        if (sb2.length() != 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (Integer.parseInt(sb2.toString()) % 4 == i10) {
            return iL;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static Map c(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(ResultMetadataType.ISSUE_NUMBER, Integer.valueOf(str));
        return enumMap;
    }

    com.google.zxing.j b(int i10, kd.a aVar, int[] iArr) throws NotFoundException {
        StringBuilder sb2 = this.f72030b;
        sb2.setLength(0);
        int iA = a(aVar, iArr, sb2);
        String string = sb2.toString();
        Map mapC = c(string);
        float f10 = i10;
        com.google.zxing.j jVar = new com.google.zxing.j(string, null, new com.google.zxing.k[]{new com.google.zxing.k((iArr[0] + iArr[1]) / 2.0f, f10), new com.google.zxing.k(iA, f10)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (mapC != null) {
            jVar.g(mapC);
        }
        return jVar;
    }
}
