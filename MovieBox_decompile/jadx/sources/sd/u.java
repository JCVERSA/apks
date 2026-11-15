package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.EnumMap;
import java.util.Map;

final class u {

    private static final int[] f72031c = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    private final int[] f72032a = new int[4];

    private final StringBuilder f72033b = new StringBuilder();

    u() {
    }

    private int a(kd.a aVar, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.f72032a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int iL = iArr[1];
        int i10 = 0;
        for (int i11 = 0; i11 < 5 && iL < iM; i11++) {
            int iJ = w.j(aVar, iArr2, iL, w.f72041h);
            sb2.append((char) ((iJ % 10) + 48));
            for (int i12 : iArr2) {
                iL += i12;
            }
            if (iJ >= 10) {
                i10 |= 1 << (4 - i11);
            }
            if (i11 != 4) {
                iL = aVar.l(aVar.k(iL));
            }
        }
        if (sb2.length() != 5) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (d(sb2.toString()) == c(i10)) {
            return iL;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int c(int i10) throws NotFoundException {
        for (int i11 = 0; i11 < 10; i11++) {
            if (i10 == f72031c[i11]) {
                return i11;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int d(CharSequence charSequence) {
        int length = charSequence.length();
        int iCharAt = 0;
        for (int i10 = length - 2; i10 >= 0; i10 -= 2) {
            iCharAt += charSequence.charAt(i10) - '0';
        }
        int iCharAt2 = iCharAt * 3;
        for (int i11 = length - 1; i11 >= 0; i11 -= 2) {
            iCharAt2 += charSequence.charAt(i11) - '0';
        }
        return (iCharAt2 * 3) % 10;
    }

    private static String e(String str) {
        String str2;
        byte b10 = 0;
        char cCharAt = str.charAt(0);
        if (cCharAt == '0') {
            str2 = "£";
        } else if (cCharAt != '5') {
            str2 = "";
            if (cCharAt == '9') {
                switch (str.hashCode()) {
                    case 54118329:
                        if (!str.equals("90000")) {
                            b10 = -1;
                        }
                        break;
                    case 54395376:
                        b10 = !str.equals("99990") ? (byte) -1 : (byte) 1;
                        break;
                    case 54395377:
                        b10 = !str.equals("99991") ? (byte) -1 : (byte) 2;
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                switch (b10) {
                    case 0:
                        return null;
                    case 1:
                        return "Used";
                    case 2:
                        return "0.00";
                }
            }
        } else {
            str2 = "$";
        }
        int i10 = Integer.parseInt(str.substring(1));
        String strValueOf = String.valueOf(i10 / 100);
        int i11 = i10 % 100;
        return str2 + strValueOf + '.' + (i11 < 10 ? "0" + i11 : String.valueOf(i11));
    }

    private static Map f(String str) {
        String strE;
        if (str.length() != 5 || (strE = e(str)) == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(ResultMetadataType.SUGGESTED_PRICE, strE);
        return enumMap;
    }

    com.google.zxing.j b(int i10, kd.a aVar, int[] iArr) throws NotFoundException {
        StringBuilder sb2 = this.f72033b;
        sb2.setLength(0);
        int iA = a(aVar, iArr, sb2);
        String string = sb2.toString();
        Map mapF = f(string);
        float f10 = i10;
        com.google.zxing.j jVar = new com.google.zxing.j(string, null, new com.google.zxing.k[]{new com.google.zxing.k((iArr[0] + iArr[1]) / 2.0f, f10), new com.google.zxing.k(iA, f10)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (mapF != null) {
            jVar.g(mapF);
        }
        return jVar;
    }
}
