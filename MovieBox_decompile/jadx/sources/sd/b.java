package sd;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

public final class b extends q {

    private static final char[] f71995b;

    private static final char[] f71996c = {'T', 'N', '*', 'E'};

    private static final char[] f71997d = {'/', ':', '+', '.'};

    private static final char f71998e;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        f71995b = cArr;
        f71998e = cArr[0];
    }

    @Override
    public boolean[] d(String str) {
        int i10;
        if (str.length() < 2) {
            StringBuilder sb2 = new StringBuilder();
            char c10 = f71998e;
            sb2.append(c10);
            sb2.append(str);
            sb2.append(c10);
            str = sb2.toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = f71995b;
            boolean zH = a.h(cArr, upperCase);
            boolean zH2 = a.h(cArr, upperCase2);
            char[] cArr2 = f71996c;
            boolean zH3 = a.h(cArr2, upperCase);
            boolean zH4 = a.h(cArr2, upperCase2);
            if (zH) {
                if (!zH2) {
                    throw new IllegalArgumentException("Invalid start/end guards: " + str);
                }
            } else if (!zH3) {
                if (zH2 || zH4) {
                    throw new IllegalArgumentException("Invalid start/end guards: " + str);
                }
                StringBuilder sb3 = new StringBuilder();
                char c11 = f71998e;
                sb3.append(c11);
                sb3.append(str);
                sb3.append(c11);
                str = sb3.toString();
            } else if (!zH4) {
                throw new IllegalArgumentException("Invalid start/end guards: " + str);
            }
        }
        int i11 = 20;
        for (int i12 = 1; i12 < str.length() - 1; i12++) {
            if (Character.isDigit(str.charAt(i12)) || str.charAt(i12) == '-' || str.charAt(i12) == '$') {
                i11 += 9;
            } else {
                if (!a.h(f71997d, str.charAt(i12))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i12) + '\'');
                }
                i11 += 10;
            }
        }
        boolean[] zArr = new boolean[i11 + (str.length() - 1)];
        int i13 = 0;
        for (int i14 = 0; i14 < str.length(); i14++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i14));
            if (i14 == 0 || i14 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i15 = 0;
            while (true) {
                char[] cArr3 = a.f71989d;
                if (i15 >= cArr3.length) {
                    i10 = 0;
                    break;
                }
                if (upperCase3 == cArr3[i15]) {
                    i10 = a.f71990e[i15];
                    break;
                }
                i15++;
            }
            int i16 = 0;
            int i17 = 0;
            boolean z10 = true;
            while (i16 < 7) {
                zArr[i13] = z10;
                i13++;
                if (((i10 >> (6 - i16)) & 1) == 0 || i17 == 1) {
                    z10 = !z10;
                    i16++;
                    i17 = 0;
                } else {
                    i17++;
                }
            }
            if (i14 < str.length() - 1) {
                zArr[i13] = false;
                i13++;
            }
        }
        return zArr;
    }

    @Override
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.CODABAR);
    }
}
