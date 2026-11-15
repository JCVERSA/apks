package defpackage;

import freemarker.core.BugException;
import freemarker.core.Environment;
import freemarker.core.ParseException;
import freemarker.template.Version;
import freemarker.template.utility.NullArgumentException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.CharUtils;

public abstract class n0a {
    public static final char[] a = q();

    public static boolean A(char[] cArr, int i, int i2) {
        while (i < i2) {
            if (cArr[i] > ' ') {
                return false;
            }
            i++;
        }
        return true;
    }

    public static boolean B(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (i == 0 && (cCharAt == '-' || cCharAt == '.' || Character.isDigit(cCharAt))) {
                return false;
            }
            if (!Character.isLetterOrDigit(cCharAt) && cCharAt != ':' && cCharAt != '_' && cCharAt != '-' && cCharAt != '.') {
                return false;
            }
        }
        return true;
    }

    public static String C(Object obj) {
        return D(obj != null ? obj.toString() : null);
    }

    public static String D(String str) {
        if (str == null) {
            return "null";
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 4);
        stringBuffer.append('\"');
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                stringBuffer.append("\\\"");
            } else if (cCharAt == '\\') {
                stringBuffer.append("\\\\");
            } else if (cCharAt >= ' ') {
                stringBuffer.append(cCharAt);
            } else if (cCharAt == '\n') {
                stringBuffer.append("\\n");
            } else if (cCharAt == '\r') {
                stringBuffer.append("\\r");
            } else if (cCharAt == '\f') {
                stringBuffer.append("\\f");
            } else if (cCharAt == '\b') {
                stringBuffer.append("\\b");
            } else if (cCharAt == '\t') {
                stringBuffer.append("\\t");
            } else {
                stringBuffer.append("\\u00");
                stringBuffer.append(X(cCharAt / 16));
                stringBuffer.append(X(cCharAt & 15));
            }
        }
        stringBuffer.append('\"');
        return stringBuffer.toString();
    }

    public static String E(Object obj) {
        return F(obj != null ? obj.toString() : null);
    }

    public static String F(String str) {
        if (str == null) {
            return "null";
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 4);
        stringBuffer.append('\"');
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                stringBuffer.append("\\\"");
            } else if (cCharAt == '\\') {
                stringBuffer.append("\\\\");
            } else if (cCharAt == '<') {
                stringBuffer.append("\\u003C");
            } else if (cCharAt >= ' ') {
                stringBuffer.append(cCharAt);
            } else if (cCharAt == '\n') {
                stringBuffer.append("\\n");
            } else if (cCharAt == '\r') {
                stringBuffer.append("\\r");
            } else if (cCharAt == '\f') {
                stringBuffer.append("\\f");
            } else if (cCharAt == '\b') {
                stringBuffer.append("\\b");
            } else if (cCharAt == '\t') {
                stringBuffer.append("\\t");
            } else {
                stringBuffer.append("\\u00");
                stringBuffer.append(X(cCharAt / 16));
                stringBuffer.append(X(cCharAt & 15));
            }
        }
        stringBuffer.append('\"');
        return stringBuffer.toString();
    }

    public static String G(String str) {
        return I(str, false);
    }

    public static String H(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' || cCharAt == '\\' || cCharAt < ' ') {
                StringBuffer stringBuffer = new StringBuffer(length + 4);
                stringBuffer.append(str.substring(0, i));
                while (true) {
                    if (cCharAt == '\"') {
                        stringBuffer.append("\\\"");
                    } else if (cCharAt == '\\') {
                        stringBuffer.append("\\\\");
                    } else if (cCharAt >= ' ') {
                        stringBuffer.append(cCharAt);
                    } else if (cCharAt == '\n') {
                        stringBuffer.append("\\n");
                    } else if (cCharAt == '\r') {
                        stringBuffer.append("\\r");
                    } else if (cCharAt == '\f') {
                        stringBuffer.append("\\f");
                    } else if (cCharAt == '\b') {
                        stringBuffer.append("\\b");
                    } else if (cCharAt == '\t') {
                        stringBuffer.append("\\t");
                    } else {
                        stringBuffer.append("\\u00");
                        int i2 = cCharAt / 16;
                        stringBuffer.append((char) (i2 < 10 ? i2 + 48 : i2 + 87));
                        int i3 = cCharAt & 15;
                        stringBuffer.append((char) (i3 < 10 ? i3 + 48 : i3 + 87));
                    }
                    i++;
                    if (i >= length) {
                        return stringBuffer.toString();
                    }
                    cCharAt = str.charAt(i);
                }
            } else {
                i++;
            }
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0057  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:89:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x0134  */
    public static String I(String str, boolean z) {
        char cCharAt;
        char cCharAt2;
        int i;
        NullArgumentException.check("s", str);
        int length = str.length();
        StringBuffer stringBuffer = null;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt3 = str.charAt(i2);
            if ((cCharAt3 <= '>' || cCharAt3 >= 127 || cCharAt3 == '\\') && cCharAt3 != ' ' && (cCharAt3 < 160 || cCharAt3 >= 8232)) {
                if (cCharAt3 <= 31) {
                    if (cCharAt3 == '\n') {
                        i = 110;
                    } else if (cCharAt3 == '\r') {
                        i = 114;
                    } else if (cCharAt3 == '\f') {
                        i = 102;
                    } else if (cCharAt3 == '\b') {
                        i = 98;
                    } else if (cCharAt3 == '\t') {
                        i = 116;
                    } else {
                        i = 1;
                    }
                } else if (cCharAt3 == '\"') {
                    i = 3;
                } else if (cCharAt3 != '\'') {
                    if (cCharAt3 != '\\' && (cCharAt3 != '/' || (i2 != 0 && str.charAt(i2 - 1) != '<'))) {
                        if (cCharAt3 == '>') {
                            if (i2 != 0 && (((cCharAt2 = str.charAt(i2 - 1)) != ']' && cCharAt2 != '-') || (i2 != 1 && str.charAt(i2 - 2) != cCharAt2))) {
                                i = 0;
                            } else if (z) {
                                i = 1;
                            }
                        } else if (cCharAt3 != '<' ? !((cCharAt3 >= 127 && cCharAt3 <= 159) || cCharAt3 == 8232 || cCharAt3 == 8233) : !(i2 == length - 1 || (cCharAt = str.charAt(i2 + 1)) == '!' || cCharAt == '?')) {
                            i = 0;
                        } else {
                            i = 1;
                        }
                    }
                    i = 3;
                } else if (z) {
                    i = 0;
                } else {
                    i = 3;
                }
                if (i != 0) {
                    if (stringBuffer == null) {
                        stringBuffer = new StringBuffer(length + 6);
                        stringBuffer.append(str.substring(0, i2));
                    }
                    stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    if (i > 32) {
                        stringBuffer.append((char) i);
                    } else if (i != 1) {
                        stringBuffer.append(cCharAt3);
                    } else if (z || cCharAt3 >= 256) {
                        stringBuffer.append('u');
                        stringBuffer.append(X((cCharAt3 >> '\f') & 15));
                        stringBuffer.append(X((cCharAt3 >> '\b') & 15));
                        stringBuffer.append(X((cCharAt3 >> 4) & 15));
                        stringBuffer.append(X(cCharAt3 & 15));
                    } else {
                        stringBuffer.append('x');
                        stringBuffer.append(X(cCharAt3 >> 4));
                        stringBuffer.append(X(cCharAt3 & 15));
                    }
                } else if (stringBuffer != null) {
                    stringBuffer.append(cCharAt3);
                }
            } else if (stringBuffer != null) {
                stringBuffer.append(cCharAt3);
            }
        }
        return stringBuffer == null ? str : stringBuffer.toString();
    }

    public static String J(String str) {
        return I(str, true);
    }

    public static String K(String str, int i) {
        return L(str, i, ' ');
    }

    public static String L(String str, int i, char c) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(i);
        int i2 = i - length;
        for (int i3 = 0; i3 < i2; i3++) {
            stringBuffer.append(c);
        }
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    public static String M(String str, int i, String str2) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(i);
        int i2 = i - length;
        int length2 = str2.length();
        if (length2 == 0) {
            throw new IllegalArgumentException("The \"filling\" argument can't be 0 length string.");
        }
        int i3 = i2 / length2;
        for (int i4 = 0; i4 < i3; i4++) {
            stringBuffer.append(str2);
        }
        int i5 = i2 % length2;
        for (int i6 = 0; i6 < i5; i6++) {
            stringBuffer.append(str2.charAt(i6));
        }
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    public static boolean N(String str, String str2, String str3, Environment environment) {
        String strF0 = environment.F0();
        if (strF0 != null && strF0.equals(str3)) {
            if (str.equals(str2)) {
                return true;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("D:");
            stringBuffer.append(str2);
            return str.equals(stringBuffer.toString());
        }
        if (!"".equals(str3)) {
            String strB1 = environment.b1(str3);
            if (strB1 == null) {
                return false;
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(strB1);
            stringBuffer2.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            stringBuffer2.append(str2);
            return str.equals(stringBuffer2.toString());
        }
        if (strF0 != null) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("N:");
            stringBuffer3.append(str2);
            return str.equals(stringBuffer3.toString());
        }
        if (str.equals(str2)) {
            return true;
        }
        StringBuffer stringBuffer4 = new StringBuffer();
        stringBuffer4.append("N:");
        stringBuffer4.append(str2);
        return str.equals(stringBuffer4.toString());
    }

    public static String O(String str, String str2, String str3) {
        return P(str, str2, str3, false, false);
    }

    public static String P(String str, String str2, String str3, boolean z, boolean z2) {
        int length = str2.length();
        int i = 0;
        if (length == 0) {
            int length2 = str3.length();
            if (length2 == 0) {
                return str;
            }
            if (z2) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str3);
                stringBuffer.append(str);
                return stringBuffer.toString();
            }
            int length3 = str.length();
            StringBuffer stringBuffer2 = new StringBuffer(((length3 + 1) * length2) + length3);
            stringBuffer2.append(str3);
            while (i < length3) {
                stringBuffer2.append(str.charAt(i));
                stringBuffer2.append(str3);
                i++;
            }
            return stringBuffer2.toString();
        }
        if (z) {
            str2 = str2.toLowerCase();
        }
        String lowerCase = z ? str.toLowerCase() : str;
        int iIndexOf = lowerCase.indexOf(str2);
        if (iIndexOf == -1) {
            return str;
        }
        StringBuffer stringBuffer3 = new StringBuffer(str.length() + (Math.max(str3.length() - length, 0) * 3));
        do {
            stringBuffer3.append(str.substring(i, iIndexOf));
            stringBuffer3.append(str3);
            i = iIndexOf + length;
            iIndexOf = lowerCase.indexOf(str2, i);
            if (iIndexOf == -1) {
                break;
            }
        } while (!z2);
        stringBuffer3.append(str.substring(i));
        return stringBuffer3.toString();
    }

    public static String Q(String str, int i) {
        return R(str, i, ' ');
    }

    public static String R(String str, int i, char c) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(i);
        stringBuffer.append(str);
        int i2 = i - length;
        for (int i3 = 0; i3 < i2; i3++) {
            stringBuffer.append(c);
        }
        return stringBuffer.toString();
    }

    public static String S(String str, int i, String str2) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(i);
        stringBuffer.append(str);
        int i2 = i - length;
        int length2 = str2.length();
        if (length2 == 0) {
            throw new IllegalArgumentException("The \"filling\" argument can't be 0 length string.");
        }
        int i3 = length % length2;
        int i4 = length2 - i3 <= i2 ? length2 : i3 + i2;
        for (int i5 = i3; i5 < i4; i5++) {
            stringBuffer.append(str2.charAt(i5));
        }
        int i6 = i2 - (i4 - i3);
        int i7 = i6 / length2;
        for (int i8 = 0; i8 < i7; i8++) {
            stringBuffer.append(str2);
        }
        int i9 = i6 % length2;
        for (int i10 = 0; i10 < i9; i10++) {
            stringBuffer.append(str2.charAt(i10));
        }
        return stringBuffer.toString();
    }

    public static boolean T(char c, boolean z) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || ((c >= '0' && c <= '9') || c == '_' || c == '-' || c == '.' || c == '!' || c == '~' || ((c >= '\'' && c <= '*') || (z && c == '/')));
    }

    public static String[] U(String str, char c) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            int iIndexOf = str.indexOf(c, i2);
            if (iIndexOf == -1) {
                break;
            }
            i3++;
            i2 = iIndexOf + 1;
        }
        String[] strArr = new String[i3];
        int i4 = 0;
        while (i <= length) {
            int iIndexOf2 = str.indexOf(c, i);
            if (iIndexOf2 == -1) {
                iIndexOf2 = length;
            }
            strArr[i4] = str.substring(i, iIndexOf2);
            i = iIndexOf2 + 1;
            i4++;
        }
        return strArr;
    }

    public static String[] V(String str, String str2, boolean z) {
        String lowerCase = z ? str2.toLowerCase() : str2;
        String lowerCase2 = z ? str.toLowerCase() : str;
        int length = str.length();
        int length2 = str2.length();
        if (length2 == 0) {
            throw new IllegalArgumentException("The separator string has 0 length");
        }
        int i = 1;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int iIndexOf = lowerCase2.indexOf(lowerCase, i3);
            if (iIndexOf == -1) {
                break;
            }
            i++;
            i3 = iIndexOf + length2;
        }
        String[] strArr = new String[i];
        int i4 = 0;
        while (i2 <= length) {
            int iIndexOf2 = lowerCase2.indexOf(lowerCase, i2);
            if (iIndexOf2 == -1) {
                iIndexOf2 = length;
            }
            strArr[i4] = str.substring(i2, iIndexOf2);
            i2 = iIndexOf2 + length2;
            i4++;
        }
        return strArr;
    }

    public static String W(int i, char c) {
        int i2 = 1;
        if (i < 1) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Can't convert 0 or negative numbers to latin-number: ");
            stringBuffer.append(i);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        int i3 = 1;
        while (true) {
            int i4 = i2 * 26;
            int i5 = i3 + i4;
            if (i5 > i) {
                break;
            }
            i2 = i4;
            i3 = i5;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        while (i2 != 0) {
            int i6 = (i - i3) / i2;
            stringBuffer2.append((char) (c + i6));
            i3 += i6 * i2;
            i2 /= 26;
        }
        return stringBuffer2.toString();
    }

    public static char X(int i) {
        return (char) (i < 10 ? i + 48 : i + 55);
    }

    public static String Y(int i) {
        return W(i, 'a');
    }

    public static String Z(int i) {
        return W(i, 'A');
    }

    public static String a(String str) throws ParseException {
        int i;
        int i2;
        int iIndexOf = str.indexOf(92);
        if (iIndexOf == -1) {
            return str;
        }
        int length = str.length() - 1;
        StringBuffer stringBuffer = new StringBuffer(length);
        int i3 = 0;
        do {
            stringBuffer.append(str.substring(i3, iIndexOf));
            if (iIndexOf >= length) {
                throw new ParseException("The last character of string literal is backslash", 0, 0);
            }
            char cCharAt = str.charAt(iIndexOf + 1);
            if (cCharAt == '\"') {
                stringBuffer.append('\"');
            } else if (cCharAt == '\'') {
                stringBuffer.append('\'');
            } else if (cCharAt == '\\') {
                stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            } else if (cCharAt == 'l') {
                stringBuffer.append('<');
            } else if (cCharAt == 'n') {
                stringBuffer.append('\n');
            } else if (cCharAt == 'r') {
                stringBuffer.append(CharUtils.CR);
            } else if (cCharAt != 't') {
                if (cCharAt == 'x') {
                    int i4 = iIndexOf + 2;
                    int i5 = iIndexOf + 5;
                    if (length <= i5) {
                        i5 = length;
                    }
                    int i6 = 0;
                    int i7 = i4;
                    while (i7 <= i5) {
                        char cCharAt2 = str.charAt(i7);
                        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                            i = i6 << 4;
                            i2 = cCharAt2 - '0';
                        } else if (cCharAt2 >= 'a' && cCharAt2 <= 'f') {
                            i = i6 << 4;
                            i2 = cCharAt2 - 'W';
                        } else {
                            if (cCharAt2 < 'A' || cCharAt2 > 'F') {
                                break;
                            }
                            i = i6 << 4;
                            i2 = cCharAt2 - '7';
                        }
                        i6 = i + i2;
                        i7++;
                    }
                    if (i4 >= i7) {
                        throw new ParseException("Invalid \\x escape in a string literal", 0, 0);
                    }
                    stringBuffer.append((char) i6);
                    i3 = i7;
                } else if (cCharAt == '{') {
                    stringBuffer.append('{');
                } else if (cCharAt == 'a') {
                    stringBuffer.append('&');
                } else if (cCharAt == 'b') {
                    stringBuffer.append('\b');
                } else if (cCharAt == 'f') {
                    stringBuffer.append('\f');
                } else {
                    if (cCharAt != 'g') {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Invalid escape sequence (\\");
                        stringBuffer2.append(cCharAt);
                        stringBuffer2.append(") in a string literal");
                        throw new ParseException(stringBuffer2.toString(), 0, 0);
                    }
                    stringBuffer.append('>');
                }
                iIndexOf = str.indexOf(92, i3);
            } else {
                stringBuffer.append('\t');
            }
            i3 = iIndexOf + 2;
            iIndexOf = str.indexOf(92, i3);
        } while (iIndexOf != -1);
        stringBuffer.append(str.substring(i3));
        return stringBuffer.toString();
    }

    public static String a0(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return obj.toString();
        } catch (Throwable th) {
            return s(obj, th);
        }
    }

    public static String b(String str, char c) {
        return c(str, c, false);
    }

    public static int b0(String str) {
        return new Version(str).intValue();
    }

    public static String c(String str, char c, boolean z) {
        char c2;
        char c3;
        int length = str.length();
        if (c == 0) {
            c2 = 0;
        } else {
            c2 = '\'';
            if (c != '\"') {
                if (c != '\'') {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Unsupported quotation character: ");
                    stringBuffer.append(c);
                    throw new IllegalArgumentException(stringBuffer.toString());
                }
                c2 = '\"';
            }
        }
        int length2 = a.length;
        StringBuffer stringBuffer2 = null;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < length2) {
                c3 = a[cCharAt];
            } else {
                c3 = '{';
                if (cCharAt != '{' || i <= 0 || !x(str.charAt(i - 1))) {
                    c3 = 0;
                }
            }
            if (c3 != 0 && c3 != c2) {
                if (stringBuffer2 == null) {
                    stringBuffer2 = new StringBuffer(str.length() + 4 + (z ? 2 : 0));
                    if (z) {
                        stringBuffer2.append(c);
                    }
                    stringBuffer2.append(str.substring(0, i));
                }
                if (c3 == 1) {
                    stringBuffer2.append("\\x00");
                    int i2 = (cCharAt >> 4) & 15;
                    char c4 = (char) (cCharAt & 15);
                    stringBuffer2.append((char) (i2 < 10 ? i2 + 48 : i2 + 55));
                    stringBuffer2.append((char) (c4 < '\n' ? c4 + '0' : c4 + '7'));
                } else {
                    stringBuffer2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    stringBuffer2.append(c3);
                }
            } else if (stringBuffer2 != null) {
                stringBuffer2.append(cCharAt);
            }
        }
        if (stringBuffer2 != null) {
            if (z) {
                stringBuffer2.append(c);
            }
            return stringBuffer2.toString();
        }
        if (!z) {
            return str;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(c);
        stringBuffer3.append(str);
        stringBuffer3.append(c);
        return stringBuffer3.toString();
    }

    public static String d(String str) {
        return k(str);
    }

    public static String e(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\\' || cCharAt == '{' || cCharAt == '}') {
                StringBuffer stringBuffer = new StringBuffer(str.substring(0, i));
                if (cCharAt == '\\') {
                    stringBuffer.append("\\\\");
                } else if (cCharAt == '{') {
                    stringBuffer.append("\\{");
                } else if (cCharAt == '}') {
                    stringBuffer.append("\\}");
                }
                int i2 = i + 1;
                int i3 = i2;
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == '\\' || cCharAt2 == '{' || cCharAt2 == '}') {
                        stringBuffer.append(str.substring(i3, i2));
                        if (cCharAt2 == '\\') {
                            stringBuffer.append("\\\\");
                        } else if (cCharAt2 == '{') {
                            stringBuffer.append("\\{");
                        } else if (cCharAt2 == '}') {
                            stringBuffer.append("\\}");
                        }
                        i3 = i2 + 1;
                    }
                    i2++;
                }
                if (i3 < length) {
                    stringBuffer.append(str.substring(i3));
                }
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String f(String str, String str2) {
        return g(str, str2, false);
    }

    public static String g(String str, String str2, boolean z) throws UnsupportedEncodingException {
        int length = str.length();
        int i = 0;
        while (i < length && T(str.charAt(i), z)) {
            i++;
        }
        if (i == length) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer((length / 3) + length + 2);
        stringBuffer.append(str.substring(0, i));
        int i2 = i + 1;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (T(cCharAt, z)) {
                if (i != -1) {
                    for (byte b : str.substring(i, i2).getBytes(str2)) {
                        stringBuffer.append('%');
                        int i3 = b & 15;
                        int i4 = (b >> 4) & 15;
                        stringBuffer.append((char) (i4 < 10 ? i4 + 48 : i4 + 55));
                        stringBuffer.append((char) (i3 < 10 ? i3 + 48 : i3 + 55));
                    }
                    i = -1;
                }
                stringBuffer.append(cCharAt);
            } else if (i == -1) {
                i = i2;
            }
            i2++;
        }
        if (i != -1) {
            for (byte b2 : str.substring(i, i2).getBytes(str2)) {
                stringBuffer.append('%');
                int i5 = b2 & 15;
                int i6 = (b2 >> 4) & 15;
                stringBuffer.append((char) (i6 < 10 ? i6 + 48 : i6 + 55));
                stringBuffer.append((char) (i5 < 10 ? i5 + 48 : i5 + 55));
            }
        }
        return stringBuffer.toString();
    }

    public static String h(String str, String str2) {
        return g(str, str2, true);
    }

    public static String i(String str) {
        return n(str, "&#39;");
    }

    public static String j(String str) {
        return n(str, "&apos;");
    }

    public static String k(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '<' || cCharAt == '>' || cCharAt == '&' || cCharAt == '\"') {
                StringBuffer stringBuffer = new StringBuffer(str.substring(0, i));
                if (cCharAt == '\"') {
                    stringBuffer.append("&quot;");
                } else if (cCharAt == '&') {
                    stringBuffer.append("&amp;");
                } else if (cCharAt == '<') {
                    stringBuffer.append("&lt;");
                } else if (cCharAt == '>') {
                    stringBuffer.append("&gt;");
                }
                int i2 = i + 1;
                int i3 = i2;
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == '<' || cCharAt2 == '>' || cCharAt2 == '&' || cCharAt2 == '\"') {
                        stringBuffer.append(str.substring(i3, i2));
                        if (cCharAt2 == '\"') {
                            stringBuffer.append("&quot;");
                        } else if (cCharAt2 == '&') {
                            stringBuffer.append("&amp;");
                        } else if (cCharAt2 == '<') {
                            stringBuffer.append("&lt;");
                        } else if (cCharAt2 == '>') {
                            stringBuffer.append("&gt;");
                        }
                        i3 = i2 + 1;
                    }
                    i2++;
                }
                if (i3 < length) {
                    stringBuffer.append(str.substring(i3));
                }
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String l(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '<' || ((cCharAt == '>' && i > 1 && str.charAt(i - 1) == ']' && str.charAt(i - 2) == ']') || cCharAt == '&')) {
                StringBuffer stringBuffer = new StringBuffer(str.substring(0, i));
                if (cCharAt == '&') {
                    stringBuffer.append("&amp;");
                } else if (cCharAt == '<') {
                    stringBuffer.append("&lt;");
                } else {
                    if (cCharAt != '>') {
                        throw new BugException();
                    }
                    stringBuffer.append("&gt;");
                }
                int i2 = i + 1;
                int i3 = i2;
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == '<' || ((cCharAt2 == '>' && i2 > 1 && str.charAt(i2 - 1) == ']' && str.charAt(i2 - 2) == ']') || cCharAt2 == '&')) {
                        stringBuffer.append(str.substring(i3, i2));
                        if (cCharAt2 == '&') {
                            stringBuffer.append("&amp;");
                        } else if (cCharAt2 == '<') {
                            stringBuffer.append("&lt;");
                        } else {
                            if (cCharAt2 != '>') {
                                throw new BugException();
                            }
                            stringBuffer.append("&gt;");
                        }
                        i3 = i2 + 1;
                    }
                    i2++;
                }
                if (i3 < length) {
                    stringBuffer.append(str.substring(i3));
                }
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String m(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '<' || cCharAt == '&' || cCharAt == '\"') {
                StringBuffer stringBuffer = new StringBuffer(str.substring(0, i));
                if (cCharAt == '\"') {
                    stringBuffer.append("&quot;");
                } else if (cCharAt == '&') {
                    stringBuffer.append("&amp;");
                } else if (cCharAt == '<') {
                    stringBuffer.append("&lt;");
                }
                int i2 = i + 1;
                int i3 = i2;
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == '<' || cCharAt2 == '&' || cCharAt2 == '\"') {
                        stringBuffer.append(str.substring(i3, i2));
                        if (cCharAt2 == '\"') {
                            stringBuffer.append("&quot;");
                        } else if (cCharAt2 == '&') {
                            stringBuffer.append("&amp;");
                        } else if (cCharAt2 == '<') {
                            stringBuffer.append("&lt;");
                        }
                        i3 = i2 + 1;
                    }
                    i2++;
                }
                if (i3 < length) {
                    stringBuffer.append(str.substring(i3));
                }
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String n(String str, String str2) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '<' || cCharAt == '>' || cCharAt == '&' || cCharAt == '\"' || cCharAt == '\'') {
                StringBuffer stringBuffer = new StringBuffer(str.substring(0, i));
                if (cCharAt == '\"') {
                    stringBuffer.append("&quot;");
                } else if (cCharAt == '<') {
                    stringBuffer.append("&lt;");
                } else if (cCharAt == '>') {
                    stringBuffer.append("&gt;");
                } else if (cCharAt == '&') {
                    stringBuffer.append("&amp;");
                } else if (cCharAt == '\'') {
                    stringBuffer.append(str2);
                }
                int i2 = i + 1;
                int i3 = i2;
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == '<' || cCharAt2 == '>' || cCharAt2 == '&' || cCharAt2 == '\"' || cCharAt2 == '\'') {
                        stringBuffer.append(str.substring(i3, i2));
                        if (cCharAt2 == '\"') {
                            stringBuffer.append("&quot;");
                        } else if (cCharAt2 == '<') {
                            stringBuffer.append("&lt;");
                        } else if (cCharAt2 == '>') {
                            stringBuffer.append("&gt;");
                        } else if (cCharAt2 == '&') {
                            stringBuffer.append("&amp;");
                        } else if (cCharAt2 == '\'') {
                            stringBuffer.append(str2);
                        }
                        i3 = i2 + 1;
                    }
                    i2++;
                }
                if (i3 < length) {
                    stringBuffer.append(str.substring(i3));
                }
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String o(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\r\n", true);
        StringBuffer stringBuffer = new StringBuffer(str.length());
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            stringBuffer.append(strNextToken.substring(0, 1).toUpperCase());
            stringBuffer.append(strNextToken.substring(1).toLowerCase());
        }
        return stringBuffer.toString();
    }

    public static String p(String str) {
        if (str.endsWith(IOUtils.LINE_SEPARATOR_WINDOWS)) {
            return str.substring(0, str.length() - 2);
        }
        return (str.endsWith(org.apache.commons.lang3.StringUtils.CR) || str.endsWith("\n")) ? str.substring(0, str.length() - 1) : str;
    }

    public static char[] q() {
        char[] cArr = new char[93];
        for (int i = 0; i < 32; i++) {
            cArr[i] = 1;
        }
        cArr[92] = IOUtils.DIR_SEPARATOR_WINDOWS;
        cArr[39] = '\'';
        cArr[34] = '\"';
        cArr[60] = 'l';
        cArr[62] = 'g';
        cArr[38] = 'a';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[12] = 'f';
        cArr[13] = 'r';
        return cArr;
    }

    public static Locale r(String str) {
        if (str == null) {
            return null;
        }
        Locale.getDefault();
        if (str.length() > 0 && str.charAt(0) == '\"') {
            str = str.substring(1, str.length() - 1);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",_ ");
        String strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "";
        String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "";
        return !stringTokenizer.hasMoreTokens() ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, stringTokenizer.nextToken());
    }

    public static String s(Object obj, Throwable th) {
        String strI;
        try {
            strI = th.toString();
        } catch (Throwable unused) {
            strI = hx0.i(th);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        stringBuffer.append(hx0.i(obj));
        stringBuffer.append(".toString() failed: ");
        stringBuffer.append(strI);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public static String t(String str) {
        char c = '\"';
        if (str.indexOf(34) != -1 && str.indexOf(39) == -1) {
            c = '\'';
        }
        return c(str, c, true);
    }

    public static boolean u(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1, str.length() - 1);
        }
        if (str.equalsIgnoreCase("n") || str.equalsIgnoreCase(BooleanUtils.NO) || str.equalsIgnoreCase("f") || str.equalsIgnoreCase(BooleanUtils.FALSE)) {
            return false;
        }
        if (str.equalsIgnoreCase("y") || str.equalsIgnoreCase(BooleanUtils.YES) || str.equalsIgnoreCase("t") || str.equalsIgnoreCase(BooleanUtils.TRUE)) {
            return true;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Illegal boolean value: ");
        stringBuffer.append(str);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static boolean v(char c) {
        return w(c) || (c >= '0' && c <= '9');
    }

    public static boolean w(char c) {
        if (c < 170) {
            if ((c < 'a' || c > 'z') && (c < '@' || c > 'Z')) {
                return c == '$' || c == '_';
            }
            return true;
        }
        if (c < 43000) {
            if (c < 11631) {
                if (c < 8488) {
                    if (c < 8336) {
                        if (c < 216) {
                            if (c < 186) {
                                return c == 170 || c == 181;
                            }
                            return c == 186 || (c >= 192 && c <= 214);
                        }
                        if (c < 8305) {
                            return (c >= 216 && c <= 246) || (c >= 248 && c <= 8191);
                        }
                        return c == 8305 || c == 8319;
                    }
                    if (c < 8469) {
                        if (c < 8455) {
                            return (c >= 8336 && c <= 8348) || c == 8450;
                        }
                        return c == 8455 || (c >= 8458 && c <= 8467);
                    }
                    if (c < 8484) {
                        return c == 8469 || (c >= 8473 && c <= 8477);
                    }
                    return c == 8484 || c == 8486;
                }
                if (c < 11312) {
                    if (c < 8517) {
                        if (c < 8495) {
                            return c == 8488 || (c >= 8490 && c <= 8493);
                        }
                        return (c >= 8495 && c <= 8505) || (c >= 8508 && c <= 8511);
                    }
                    if (c < 8579) {
                        return (c >= 8517 && c <= 8521) || c == 8526;
                    }
                    return (c >= 8579 && c <= 8580) || (c >= 11264 && c <= 11310);
                }
                if (c < 11520) {
                    if (c < 11499) {
                        return (c >= 11312 && c <= 11358) || (c >= 11360 && c <= 11492);
                    }
                    return (c >= 11499 && c <= 11502) || (c >= 11506 && c <= 11507);
                }
                if (c < 11565) {
                    return (c >= 11520 && c <= 11557) || c == 11559;
                }
                return c == 11565 || (c >= 11568 && c <= 11623);
            }
            if (c < 12784) {
                if (c < 11728) {
                    if (c < 11696) {
                        if (c < 11680) {
                            return c == 11631 || (c >= 11648 && c <= 11670);
                        }
                        return (c >= 11680 && c <= 11686) || (c >= 11688 && c <= 11694);
                    }
                    if (c < 11712) {
                        return (c >= 11696 && c <= 11702) || (c >= 11704 && c <= 11710);
                    }
                    return (c >= 11712 && c <= 11718) || (c >= 11720 && c <= 11726);
                }
                if (c < 12337) {
                    if (c < 11823) {
                        return (c >= 11728 && c <= 11734) || (c >= 11736 && c <= 11742);
                    }
                    return c == 11823 || (c >= 12293 && c <= 12294);
                }
                if (c < 12352) {
                    return (c >= 12337 && c <= 12341) || (c >= 12347 && c <= 12348);
                }
                return (c >= 12352 && c <= 12687) || (c >= 12704 && c <= 12730);
            }
            if (c < 42623) {
                if (c < 42192) {
                    if (c < 13312) {
                        return (c >= 12784 && c <= 12799) || (c >= 13056 && c <= 13183);
                    }
                    return (c >= 13312 && c <= 19893) || (c >= 19968 && c <= 42124);
                }
                if (c < 42512) {
                    return (c >= 42192 && c <= 42237) || (c >= 42240 && c <= 42508);
                }
                return (c >= 42512 && c <= 42539) || (c >= 42560 && c <= 42606);
            }
            if (c < 42891) {
                if (c < 42775) {
                    return (c >= 42623 && c <= 42647) || (c >= 42656 && c <= 42725);
                }
                return (c >= 42775 && c <= 42783) || (c >= 42786 && c <= 42888);
            }
            if (c < 42912) {
                return (c >= 42891 && c <= 42894) || (c >= 42896 && c <= 42899);
            }
            return c >= 42912 && c <= 42922;
        }
        if (c < 43808) {
            if (c < 43588) {
                if (c < 43259) {
                    if (c < 43072) {
                        if (c < 43015) {
                            return (c >= 43000 && c <= 43009) || (c >= 43011 && c <= 43013);
                        }
                        return (c >= 43015 && c <= 43018) || (c >= 43020 && c <= 43042);
                    }
                    if (c < 43216) {
                        return (c >= 43072 && c <= 43123) || (c >= 43138 && c <= 43187);
                    }
                    return (c >= 43216 && c <= 43225) || (c >= 43250 && c <= 43255);
                }
                if (c < 43396) {
                    if (c < 43312) {
                        return c == 43259 || (c >= 43264 && c <= 43301);
                    }
                    return (c >= 43312 && c <= 43334) || (c >= 43360 && c <= 43388);
                }
                if (c < 43520) {
                    return (c >= 43396 && c <= 43442) || (c >= 43471 && c <= 43481);
                }
                return (c >= 43520 && c <= 43560) || (c >= 43584 && c <= 43586);
            }
            if (c < 43712) {
                if (c < 43648) {
                    if (c < 43616) {
                        return (c >= 43588 && c <= 43595) || (c >= 43600 && c <= 43609);
                    }
                    return (c >= 43616 && c <= 43638) || c == 43642;
                }
                if (c < 43701) {
                    return (c >= 43648 && c <= 43695) || c == 43697;
                }
                return (c >= 43701 && c <= 43702) || (c >= 43705 && c <= 43709);
            }
            if (c < 43762) {
                if (c < 43739) {
                    return c == 43712 || c == 43714;
                }
                return (c >= 43739 && c <= 43741) || (c >= 43744 && c <= 43754);
            }
            if (c < 43785) {
                return (c >= 43762 && c <= 43764) || (c >= 43777 && c <= 43782);
            }
            return (c >= 43785 && c <= 43790) || (c >= 43793 && c <= 43798);
        }
        if (c < 64326) {
            if (c < 64275) {
                if (c < 44032) {
                    if (c < 43968) {
                        return (c >= 43808 && c <= 43814) || (c >= 43816 && c <= 43822);
                    }
                    return (c >= 43968 && c <= 44002) || (c >= 44016 && c <= 44025);
                }
                if (c < 55243) {
                    return (c >= 44032 && c <= 55203) || (c >= 55216 && c <= 55238);
                }
                return (c >= 55243 && c <= 55291) || (c >= 63744 && c <= 64262);
            }
            if (c < 64312) {
                if (c < 64287) {
                    return (c >= 64275 && c <= 64279) || c == 64285;
                }
                return (c >= 64287 && c <= 64296) || (c >= 64298 && c <= 64310);
            }
            if (c < 64320) {
                return (c >= 64312 && c <= 64316) || c == 64318;
            }
            return (c >= 64320 && c <= 64321) || (c >= 64323 && c <= 64324);
        }
        if (c < 65313) {
            if (c < 65008) {
                if (c < 64848) {
                    return (c >= 64326 && c <= 64433) || (c >= 64467 && c <= 64829);
                }
                return (c >= 64848 && c <= 64911) || (c >= 64914 && c <= 64967);
            }
            if (c < 65142) {
                return (c >= 65008 && c <= 65019) || (c >= 65136 && c <= 65140);
            }
            return (c >= 65142 && c <= 65276) || (c >= 65296 && c <= 65305);
        }
        if (c < 65482) {
            if (c < 65382) {
                return (c >= 65313 && c <= 65338) || (c >= 65345 && c <= 65370);
            }
            return (c >= 65382 && c <= 65470) || (c >= 65474 && c <= 65479);
        }
        if (c < 65498) {
            return (c >= 65482 && c <= 65487) || (c >= 65490 && c <= 65495);
        }
        return c >= 65498 && c <= 65500;
    }

    public static boolean x(char c) {
        return c == '$' || c == '#';
    }

    public static boolean y(char[] cArr) {
        return A(cArr, 0, cArr.length);
    }

    public static boolean z(char[] cArr, int i) {
        return A(cArr, i, cArr.length);
    }
}
