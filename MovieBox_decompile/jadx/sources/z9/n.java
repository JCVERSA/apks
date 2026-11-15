package z9;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Locale;

public final class n {

    private final String[] f76725a;

    private final int[] f76726b;

    private final String[] f76727c;

    private final int f76728d;

    private n(String[] strArr, int[] iArr, String[] strArr2, int i10) {
        this.f76725a = strArr;
        this.f76726b = iArr;
        this.f76727c = strArr2;
        this.f76728d = i10;
    }

    public static n b(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new n(strArr, iArr, strArr2, c(str, strArr, iArr, strArr2));
    }

    private static int c(String str, String[] strArr, int[] iArr, String[] strArr2) {
        String strSubstring;
        strArr[0] = "";
        int length = 0;
        int i10 = 0;
        while (length < str.length()) {
            int iIndexOf = str.indexOf("$", length);
            if (iIndexOf == -1) {
                strArr[i10] = strArr[i10] + str.substring(length);
                length = str.length();
            } else if (iIndexOf != length) {
                strArr[i10] = strArr[i10] + str.substring(length, iIndexOf);
                length = iIndexOf;
            } else if (str.startsWith("$$", length)) {
                strArr[i10] = strArr[i10] + "$";
                length += 2;
            } else {
                int i11 = length + 1;
                int iIndexOf2 = str.indexOf("$", i11);
                String strSubstring2 = str.substring(i11, iIndexOf2);
                if (strSubstring2.equals("RepresentationID")) {
                    iArr[i10] = 1;
                } else {
                    int iIndexOf3 = strSubstring2.indexOf("%0");
                    if (iIndexOf3 != -1) {
                        strSubstring = strSubstring2.substring(iIndexOf3);
                        if (!strSubstring.endsWith(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D) && !strSubstring.endsWith("x") && !strSubstring.endsWith("X")) {
                            strSubstring = strSubstring + DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D;
                        }
                        strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                    } else {
                        strSubstring = "%01d";
                    }
                    strSubstring2.hashCode();
                    switch (strSubstring2) {
                        case "Number":
                            iArr[i10] = 2;
                            break;
                        case "Time":
                            iArr[i10] = 4;
                            break;
                        case "Bandwidth":
                            iArr[i10] = 3;
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid template: " + str);
                    }
                    strArr2[i10] = strSubstring;
                }
                i10++;
                strArr[i10] = "";
                length = iIndexOf2 + 1;
            }
        }
        return i10;
    }

    public String a(String str, long j10, int i10, long j11) {
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        while (true) {
            int i12 = this.f76728d;
            if (i11 >= i12) {
                sb2.append(this.f76725a[i12]);
                return sb2.toString();
            }
            sb2.append(this.f76725a[i11]);
            int i13 = this.f76726b[i11];
            if (i13 == 1) {
                sb2.append(str);
            } else if (i13 == 2) {
                sb2.append(String.format(Locale.US, this.f76727c[i11], Long.valueOf(j10)));
            } else if (i13 == 3) {
                sb2.append(String.format(Locale.US, this.f76727c[i11], Integer.valueOf(i10)));
            } else if (i13 == 4) {
                sb2.append(String.format(Locale.US, this.f76727c[i11], Long.valueOf(j11)));
            }
            i11++;
        }
    }
}
