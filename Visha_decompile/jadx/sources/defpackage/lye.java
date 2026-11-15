package defpackage;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class lye extends mye {
    public static final String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < str.length() && str.charAt(i2) == ',') {
            i2++;
        }
        while (length > 0) {
            int i3 = length - 1;
            if (str.charAt(i3) != ',') {
                break;
            }
            length = i3;
        }
        if (length < i2) {
            return null;
        }
        if (i2 != 0) {
            i = i2;
        } else if (length == str.length()) {
            return str;
        }
        return str.substring(i, length);
    }

    @Override
    public final String a(String str, String str2) {
        String strB = b(str);
        String strB2 = b(str2);
        if (TextUtils.isEmpty(strB)) {
            return strB2;
        }
        if (TextUtils.isEmpty(strB2)) {
            return strB;
        }
        return strB + StringUtils.COMMA + strB2;
    }
}
