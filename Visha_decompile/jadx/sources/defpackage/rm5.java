package defpackage;

import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.TokenizingException;
import org.apache.commons.io.IOUtils;

public final class rm5 {
    public static final rm5 a = new rm5();
    public static final String[] b = {"'", "@{"};

    public static String e(rm5 rm5Var, String str, String[] strArr, int i, Object obj) {
        if ((i & 2) != 0) {
            strArr = b;
        }
        return rm5Var.d(str, strArr);
    }

    public final int a(String str, int i) {
        int i2 = i;
        while (i2 < str.length() && str.charAt(i2) == '\\') {
            i2++;
        }
        return i2 - i;
    }

    public final String b(String str, int i, String[] strArr) {
        if (i == str.length() || str.charAt(i) == ' ') {
            StringBuilder sb = new StringBuilder();
            sb.append("Alone backslash at ");
            sb.append(i - 1);
            throw new TokenizingException(sb.toString(), null, 2, null);
        }
        for (String str2 : strArr) {
            if (c(str2, str, i)) {
                return str2;
            }
        }
        throw new EvaluableException("Incorrect string escape", null, 2, null);
    }

    public final boolean c(String str, String str2, int i) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + i2;
            if (i3 >= str2.length() || str2.charAt(i3) != str.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    public final String d(String str, String[] strArr) {
        y45.j(str, "string");
        y45.j(strArr, "escapingLiterals");
        if (!j1a.W(str, IOUtils.DIR_SEPARATOR_WINDOWS, false, 2, null)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        int length = 0;
        while (length < str.length()) {
            if (str.charAt(length) != '\\') {
                sb.append(str.charAt(length));
                length++;
            } else {
                int iA = a(str, length);
                length += iA;
                int i = iA / 2;
                for (int i2 = 0; i2 < i; i2++) {
                    sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                }
                if (iA % 2 == 1) {
                    String strB = b(str, length, strArr);
                    sb.append(strB);
                    length += strB.length();
                }
            }
        }
        String string = sb.toString();
        y45.i(string, "literalBuilder.toString()");
        return string;
    }
}
