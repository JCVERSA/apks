package defpackage;

import org.apache.commons.lang3.BooleanUtils;
import org.mozilla.javascript.ES6Iterator;

public abstract class zz9 {
    public static final String[] a;
    public static final byte[] b;

    static {
        String[] strArr = new String[93];
        for (int i = 0; i < 32; i++) {
            strArr[i] = "\\u" + e(i >> 12) + e(i >> 8) + e(i >> 4) + e(i);
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        a = strArr;
        byte[] bArr = new byte[93];
        for (int i2 = 0; i2 < 32; i2++) {
            bArr[i2] = 1;
        }
        bArr[34] = 34;
        bArr[92] = 92;
        bArr[9] = 116;
        bArr[8] = 98;
        bArr[10] = 110;
        bArr[13] = 114;
        bArr[12] = 102;
        b = bArr;
    }

    public static final byte[] a() {
        return b;
    }

    public static final String[] b() {
        return a;
    }

    public static final void c(StringBuilder sb, String str) {
        y45.j(sb, "<this>");
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        sb.append('\"');
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            String[] strArr = a;
            if (cCharAt < strArr.length && strArr[cCharAt] != null) {
                sb.append((CharSequence) str, i, i2);
                sb.append(strArr[cCharAt]);
                i = i2 + 1;
            }
        }
        if (i != 0) {
            sb.append((CharSequence) str, i, str.length());
        } else {
            sb.append(str);
        }
        sb.append('\"');
    }

    public static final Boolean d(String str) {
        y45.j(str, "<this>");
        if (g1a.E(str, BooleanUtils.TRUE, true)) {
            return Boolean.TRUE;
        }
        if (g1a.E(str, BooleanUtils.FALSE, true)) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static final char e(int i) {
        int i2 = i & 15;
        return (char) (i2 < 10 ? i2 + 48 : i2 + 87);
    }
}
