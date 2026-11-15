package kotlin.text;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

public class q extends p {
    /* JADX WARN: Code duplicated, block: B:102:0x010a  */
    /* JADX WARN: Code duplicated, block: B:41:0x007c  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b4  */
    private static final boolean r(String str) {
        boolean z10;
        int i10;
        boolean z11;
        String str2;
        int i11;
        boolean z12;
        int length = str.length() - 1;
        int i12 = 0;
        while (i12 <= length && str.charAt(i12) <= ' ') {
            i12++;
        }
        if (i12 > length) {
            return false;
        }
        while (length > i12 && str.charAt(length) <= ' ') {
            length--;
        }
        if (str.charAt(i12) == '+' || str.charAt(i12) == '-') {
            i12++;
        }
        if (i12 > length) {
            return false;
        }
        if (str.charAt(i12) != '0') {
            z10 = false;
        } else {
            int i13 = i12 + 1;
            if (i13 > length) {
                return true;
            }
            if ((str.charAt(i13) | ' ') == 120) {
                int i14 = i12 + 2;
                int i15 = i14;
                while (i15 <= length) {
                    char cCharAt = str.charAt(i15);
                    if (((cCharAt - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 10 && (((cCharAt | ' ') - 97) & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 6) {
                        break;
                    }
                    i15++;
                }
                boolean z13 = i14 != i15;
                if (i15 <= length) {
                    if (str.charAt(i15) == '.') {
                        int i16 = i15 + 1;
                        i11 = i16;
                        while (i11 <= length) {
                            char cCharAt2 = str.charAt(i11);
                            if (((cCharAt2 - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 10 && (((cCharAt2 | ' ') - 97) & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 6) {
                                break;
                            }
                            i11++;
                        }
                        if (i16 != i11) {
                            z12 = true;
                        }
                        if (!z13 || z12) {
                            i12 = i11;
                        } else {
                            i12 = -1;
                        }
                    } else {
                        i11 = i15;
                    }
                    z12 = false;
                    if (z13) {
                    }
                    i12 = i11;
                } else {
                    i12 = -1;
                }
                if (i12 == -1 || i12 > length) {
                    return false;
                }
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (!z10) {
            int i17 = i12;
            while (i17 <= length && ((str.charAt(i17) - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 10) {
                i17++;
            }
            boolean z14 = i12 != i17;
            if (i17 > length) {
                i12 = i17;
            } else {
                if (str.charAt(i17) == '.') {
                    int i18 = i17 + 1;
                    i10 = i18;
                    while (i10 <= length && ((str.charAt(i10) - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 10) {
                        i10++;
                    }
                    if (i18 != i10) {
                        z11 = true;
                    }
                    if (!z14 || z11) {
                        i12 = i10;
                    } else {
                        if (length == i10 + 2) {
                            str2 = "NaN";
                        } else {
                            str2 = length == i10 + 7 ? "Infinity" : null;
                        }
                        i12 = (str2 != null && StringsKt.k0(str, str2, i10, false) == i10) ? length + 1 : -1;
                    }
                } else {
                    i10 = i17;
                }
                z11 = false;
                if (z14) {
                    i12 = i10;
                } else {
                    i12 = i10;
                }
            }
            if (i12 == -1) {
                return false;
            }
            if (i12 > length) {
                return true;
            }
        }
        int i19 = i12 + 1;
        int iCharAt = str.charAt(i12) | ' ';
        if (iCharAt != (z10 ? 112 : 101)) {
            return !z10 && (iCharAt == 102 || iCharAt == 100) && i19 > length;
        }
        if (i19 > length) {
            return false;
        }
        if ((str.charAt(i19) == '+' || str.charAt(i19) == '-') && (i19 = i12 + 2) > length) {
            return false;
        }
        while (i19 <= length && ((str.charAt(i19) - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 10) {
            i19++;
        }
        if (i19 > length) {
            return true;
        }
        if (i19 != length) {
            return false;
        }
        int iCharAt2 = str.charAt(i19) | ' ';
        return iCharAt2 == 102 || iCharAt2 == 100;
    }

    public static Double s(String str) {
        Intrinsics.h(str, "<this>");
        try {
            if (r(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Float t(String str) {
        Intrinsics.h(str, "<this>");
        try {
            if (r(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
