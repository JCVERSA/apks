package com.facebook.ads.redexgen.core;

import android.text.TextUtils;

public final class C0787Au {
    public static String[] A03 = {"GZKwZyiqSgbNy", "gxvOhK22J", "oynjG2HHiKyR0HC9DXMPNe", "UmekGSeFiM4iZcgnO5Y48TDimsFOJTq7", "8UYnwVzHpKDA", "GisGgojzJHptZAsJjFOXzbz3QW0chtBW", "GrxOVvJk9dpZmR2CjxRPAk3xitjBYSO6", "LRtUD1UWQ"};
    public final String A00;
    public final boolean A01;
    public final boolean A02;

    public C0787Au(String str, boolean z, boolean z2) {
        this.A00 = str;
        this.A01 = z;
        this.A02 = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != C0787Au.class) {
            return false;
        }
        C0787Au c0787Au = (C0787Au) obj;
        String str = this.A00;
        String str2 = c0787Au.A00;
        String[] strArr = A03;
        if (strArr[1].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A03[0] = "8OzGK6f1ltbus";
        return TextUtils.equals(str, str2) && this.A01 == c0787Au.A01 && this.A02 == c0787Au.A02;
    }

    public final int hashCode() {
        int result = 1 * 31;
        int prime = this.A00.hashCode();
        int result2 = (result + prime) * 31;
        int prime2 = this.A01 ? 1231 : 1237;
        int result3 = (result2 + prime2) * 31;
        int result4 = this.A02 ? 1231 : 1237;
        return result3 + result4;
    }
}
