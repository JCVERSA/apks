package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;

public final class y extends w {

    private static final int[] f72045j = {1, 1, 1, 1, 1, 1};

    static final int[][] f72046k = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};

    private final int[] f72047i = new int[4];

    public static String s(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb2 = new StringBuilder(12);
        sb2.append(str.charAt(0));
        char c10 = cArr[5];
        switch (c10) {
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
            case '2':
                sb2.append(cArr, 0, 2);
                sb2.append(c10);
                sb2.append("0000");
                sb2.append(cArr, 2, 3);
                break;
            case AD_REWARD_USER_VALUE:
                sb2.append(cArr, 0, 3);
                sb2.append("00000");
                sb2.append(cArr, 3, 2);
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                sb2.append(cArr, 0, 4);
                sb2.append("00000");
                sb2.append(cArr[4]);
                break;
            default:
                sb2.append(cArr, 0, 5);
                sb2.append("0000");
                sb2.append(c10);
                break;
        }
        if (str.length() >= 8) {
            sb2.append(str.charAt(7));
        }
        return sb2.toString();
    }

    private static void t(StringBuilder sb2, int i10) throws NotFoundException {
        for (int i11 = 0; i11 <= 1; i11++) {
            for (int i12 = 0; i12 < 10; i12++) {
                if (i10 == f72046k[i11][i12]) {
                    sb2.insert(0, (char) (i11 + 48));
                    sb2.append((char) (i12 + 48));
                    return;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override
    protected boolean h(String str) {
        return super.h(s(str));
    }

    @Override
    protected int[] k(kd.a aVar, int i10) {
        return w.n(aVar, i10, true, f72045j);
    }

    @Override
    protected int l(kd.a aVar, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.f72047i;
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
        t(sb2, i11);
        return i10;
    }

    @Override
    BarcodeFormat q() {
        return BarcodeFormat.UPC_E;
    }
}
