package defpackage;

import com.anthonynsimon.url.URL;
import com.anthonynsimon.url.exceptions.MalformedURLException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class s62 implements yeb {

    public class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    public class b {
        public final String a;
        public final String b;
        public final String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }
    }

    public boolean a(String str) {
        if (str == null || str.isEmpty()) {
            return true;
        }
        int iIndexOf = str.indexOf(58);
        if (iIndexOf != 0) {
            return false;
        }
        try {
            Integer.valueOf(str.substring(iIndexOf + 1, str.length()));
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final a b(String str) throws MalformedURLException {
        if (str.length() == 0) {
            return new a("", "");
        }
        if (str.charAt(0) == '[') {
            int iLastIndexOf = str.lastIndexOf(93);
            if (iLastIndexOf < 0) {
                throw new MalformedURLException("IPv6 detected, but missing closing ']' token");
            }
            if (!a(str.substring(iLastIndexOf + 1, str.length()))) {
                throw new MalformedURLException("invalid port");
            }
        } else if (str.indexOf(58) != -1) {
            String[] strArrSplit = str.split(StringUtils.PROCESS_POSTFIX_DELIMITER, -1);
            if (strArrSplit.length > 2) {
                throw new MalformedURLException("invalid host in: " + str);
            }
            if (strArrSplit.length == 2) {
                try {
                    Integer.valueOf(strArrSplit[1]);
                } catch (NumberFormatException unused) {
                    throw new MalformedURLException("invalid port");
                }
            }
        }
        return new a(com.anthonynsimon.url.a.a(str.toLowerCase()), "");
    }

    public final a c(String str) throws MalformedURLException {
        int iIndexOf = str.indexOf(58);
        if (iIndexOf == 0) {
            throw new MalformedURLException("missing scheme");
        }
        if (iIndexOf < 0) {
            return new a("", str);
        }
        char cCharAt = str.charAt(0);
        return (('0' <= cCharAt && cCharAt <= '9') || cCharAt == '+' || cCharAt == '-' || cCharAt == '.') ? new a("", str) : new a(str.substring(0, iIndexOf).toLowerCase(), str.substring(iIndexOf + 1, str.length()));
    }

    public final b d(String str) throws MalformedURLException {
        String str2;
        String strA;
        int iLastIndexOf = str.lastIndexOf(64);
        String strA2 = null;
        if (iLastIndexOf >= 0) {
            String strSubstring = str.substring(0, iLastIndexOf);
            if (strSubstring.indexOf(58) >= 0) {
                String[] strArrSplit = strSubstring.split(StringUtils.PROCESS_POSTFIX_DELIMITER, 2);
                strA = com.anthonynsimon.url.a.a(strArrSplit[0]);
                strA2 = com.anthonynsimon.url.a.a(strArrSplit[1]);
            } else {
                strA = com.anthonynsimon.url.a.a(strSubstring);
            }
            String str3 = strA;
            str2 = strA2;
            strA2 = str3;
            str = str.substring(iLastIndexOf + 1, str.length());
        } else {
            str2 = null;
        }
        return new b(strA2, str2, str);
    }

    @Override
    public URL parse(String str) throws MalformedURLException {
        String strSubstring;
        if (str == null || str.isEmpty()) {
            throw new MalformedURLException("raw url string is empty");
        }
        xeb xebVar = new xeb();
        int iLastIndexOf = str.lastIndexOf(35);
        if (iLastIndexOf >= 0) {
            String strSubstring2 = str.substring(iLastIndexOf + 1, str.length());
            if (strSubstring2.isEmpty()) {
                strSubstring2 = null;
            }
            xebVar.b(strSubstring2);
            str = str.substring(0, iLastIndexOf);
        }
        if (str.isEmpty()) {
            return xebVar.a();
        }
        if ("*".equals(str)) {
            xebVar.f("*");
            return xebVar.a();
        }
        int iIndexOf = str.indexOf(63);
        if (iIndexOf > 0) {
            String strSubstring3 = str.substring(iIndexOf + 1, str.length());
            if (strSubstring3.isEmpty()) {
                xebVar.g("?");
            } else {
                xebVar.g(strSubstring3);
            }
            str = str.substring(0, iIndexOf);
        }
        a aVarC = c(str);
        String str2 = aVarC.a;
        boolean z = (str2 == null || str2.isEmpty()) ? false : true;
        xebVar.i(str2);
        String str3 = aVarC.b;
        if (z && !str3.startsWith("/")) {
            xebVar.d(str3);
            return xebVar.a();
        }
        if ((z || !str3.startsWith("///")) && str3.startsWith("//")) {
            String strSubstring4 = str3.substring(2, str3.length());
            int iIndexOf2 = strSubstring4.indexOf(47);
            if (iIndexOf2 >= 0) {
                String strSubstring5 = strSubstring4.substring(0, iIndexOf2);
                strSubstring = strSubstring4.substring(iIndexOf2, strSubstring4.length());
                strSubstring4 = strSubstring5;
            } else {
                strSubstring = "";
            }
            if (!strSubstring4.isEmpty()) {
                b bVarD = d(strSubstring4);
                xebVar.j(bVarD.a);
                xebVar.e(bVarD.b);
                strSubstring4 = bVarD.c;
            }
            xebVar.c(b(strSubstring4).a);
            str3 = strSubstring;
        }
        if (!str3.isEmpty()) {
            xebVar.f(com.anthonynsimon.url.a.a(str3));
            xebVar.h(str3);
        }
        return xebVar.a();
    }
}
