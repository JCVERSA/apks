package sd;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Map;
import org.apache.tools.zip.UnixStat;

public final class e extends p {

    private static final char[] f72004c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();

    static final int[] f72005d;

    static final int f72006e;

    private final StringBuilder f72007a = new StringBuilder(20);

    private final int[] f72008b = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, MiniAppConfigHelper.DEFAULT_MINIAPP_ALL_DATA_MAX_SIZE, 336, 274, 266, 424, UnixStat.DEFAULT_FILE_PERM, 418, TTAdConstant.DEEPLINK_FALLBACK_CODE, TTAdConstant.AD_ID_IS_NULL_CODE, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, TTAdConstant.LANDING_PAGE_TYPE_CODE, TTAdConstant.IMAGE_LIST_SIZE_CODE, 364, 358, Sdk$SDKError.Reason.AD_HTML_FAILED_TO_LOAD_VALUE, Sdk$SDKError.Reason.LINK_COMMAND_OPEN_FAILED_VALUE, Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        f72005d = iArr;
        f72006e = iArr[47];
    }

    private static void h(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        i(charSequence, length - 2, 20);
        i(charSequence, length - 1, 15);
    }

    private static void i(CharSequence charSequence, int i10, int i11) throws ChecksumException {
        int iIndexOf = 0;
        int i12 = 1;
        for (int i13 = i10 - 1; i13 >= 0; i13--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(charSequence.charAt(i13)) * i12;
            i12++;
            if (i12 > i11) {
                i12 = 1;
            }
        }
        if (charSequence.charAt(i10) != f72004c[iIndexOf % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x002c  */
    private static String j(CharSequence charSequence) throws FormatException {
        int i10;
        char c10;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        int i11 = 0;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt >= 'a' && cCharAt <= 'd') {
                if (i11 >= length - 1) {
                    throw FormatException.getFormatInstance();
                }
                i11++;
                char cCharAt2 = charSequence.charAt(i11);
                switch (cCharAt) {
                    case 'a':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        i10 = cCharAt2 - '@';
                        c10 = (char) i10;
                        sb2.append(c10);
                        break;
                    case 'b':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                            i10 = cCharAt2 - '&';
                        } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                            i10 = cCharAt2 - 11;
                        } else if (cCharAt2 < 'K' || cCharAt2 > 'O') {
                            if (cCharAt2 >= 'P' && cCharAt2 <= 'T') {
                                i10 = cCharAt2 + '+';
                            } else if (cCharAt2 == 'U') {
                                c10 = 0;
                            } else if (cCharAt2 == 'V') {
                                c10 = '@';
                            } else if (cCharAt2 == 'W') {
                                c10 = '`';
                            } else {
                                if (cCharAt2 < 'X' || cCharAt2 > 'Z') {
                                    throw FormatException.getFormatInstance();
                                }
                                c10 = 127;
                            }
                            sb2.append(c10);
                        } else {
                            i10 = cCharAt2 + 16;
                        }
                        c10 = (char) i10;
                        sb2.append(c10);
                        break;
                    case 'c':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                            i10 = cCharAt2 - ' ';
                            c10 = (char) i10;
                        } else {
                            if (cCharAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            c10 = ':';
                        }
                        sb2.append(c10);
                        break;
                    case 'd':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        i10 = cCharAt2 + ' ';
                        c10 = (char) i10;
                        sb2.append(c10);
                        break;
                    default:
                        c10 = 0;
                        sb2.append(c10);
                        break;
                }
            } else {
                sb2.append(cCharAt);
            }
            i11++;
        }
        return sb2.toString();
    }

    private int[] k(kd.a aVar) throws NotFoundException {
        int iM = aVar.m();
        int iK = aVar.k(0);
        Arrays.fill(this.f72008b, 0);
        int[] iArr = this.f72008b;
        int length = iArr.length;
        boolean z10 = false;
        int i10 = 0;
        int i11 = iK;
        while (iK < iM) {
            if (aVar.i(iK) != z10) {
                iArr[i10] = iArr[i10] + 1;
            } else {
                if (i10 != length - 1) {
                    i10++;
                } else {
                    if (m(iArr) == f72006e) {
                        return new int[]{i11, iK};
                    }
                    i11 += iArr[0] + iArr[1];
                    int i12 = i10 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i12);
                    iArr[i12] = 0;
                    iArr[i10] = 0;
                    i10--;
                }
                iArr[i10] = 1;
                z10 = !z10;
            }
            iK++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char l(int i10) throws NotFoundException {
        int i11 = 0;
        while (true) {
            int[] iArr = f72005d;
            if (i11 >= iArr.length) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i11] == i10) {
                return f72004c[i11];
            }
            i11++;
        }
    }

    private static int m(int[] iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        int length = iArr.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            int iRound = Math.round((iArr[i13] * 9.0f) / i10);
            if (iRound < 1 || iRound > 4) {
                return -1;
            }
            if ((i13 & 1) == 0) {
                for (int i14 = 0; i14 < iRound; i14++) {
                    i12 = (i12 << 1) | 1;
                }
            } else {
                i12 <<= iRound;
            }
        }
        return i12;
    }

    @Override
    public com.google.zxing.j c(int i10, kd.a aVar, Map map) throws NotFoundException, ChecksumException {
        int[] iArrK = k(aVar);
        int iK = aVar.k(iArrK[1]);
        int iM = aVar.m();
        int[] iArr = this.f72008b;
        Arrays.fill(iArr, 0);
        StringBuilder sb2 = this.f72007a;
        sb2.setLength(0);
        while (true) {
            p.f(aVar, iK, iArr);
            int iM2 = m(iArr);
            if (iM2 < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cL = l(iM2);
            sb2.append(cL);
            int i11 = iK;
            for (int i12 : iArr) {
                i11 += i12;
            }
            int iK2 = aVar.k(i11);
            if (cL == '*') {
                sb2.deleteCharAt(sb2.length() - 1);
                int i13 = 0;
                for (int i14 : iArr) {
                    i13 += i14;
                }
                if (iK2 == iM || !aVar.i(iK2)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb2.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                h(sb2);
                sb2.setLength(sb2.length() - 2);
                float f10 = i10;
                com.google.zxing.j jVar = new com.google.zxing.j(j(sb2), null, new com.google.zxing.k[]{new com.google.zxing.k((iArrK[1] + iArrK[0]) / 2.0f, f10), new com.google.zxing.k(iK + (i13 / 2.0f), f10)}, BarcodeFormat.CODE_93);
                jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]G0");
                return jVar;
            }
            iK = iK2;
        }
    }
}
