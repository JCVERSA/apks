package org.jsoup.parser;

public class g {

    private String f68695a;

    private int f68696b = 0;

    public g(String str) {
        org.jsoup.helper.d.j(str);
        this.f68695a = str;
    }

    private int r() {
        return this.f68695a.length() - this.f68696b;
    }

    public static String s(String str) {
        StringBuilder sbO = org.jsoup.helper.c.o();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i10 = 0;
        char c10 = 0;
        while (i10 < length) {
            char c11 = charArray[i10];
            if (c11 != '\\') {
                sbO.append(c11);
            } else if (c10 != 0 && c10 == '\\') {
                sbO.append(c11);
            }
            i10++;
            c10 = c11;
        }
        return sbO.toString();
    }

    public String a(char c10, char c11) {
        char c12 = 0;
        int i10 = -1;
        int i11 = -1;
        boolean z10 = false;
        boolean z11 = false;
        int i12 = 0;
        while (!j()) {
            char c13 = c();
            Character chValueOf = Character.valueOf(c13);
            if (c12 == 0 || c12 != '\\') {
                if (chValueOf.equals('\'') && c13 != c10 && !z10) {
                    z11 = !z11;
                } else if (chValueOf.equals('\"') && c13 != c10 && !z11) {
                    z10 = !z10;
                }
                if (!z11 && !z10) {
                    if (chValueOf.equals(Character.valueOf(c10))) {
                        i12++;
                        if (i10 == -1) {
                            i10 = this.f68696b;
                        }
                    } else if (chValueOf.equals(Character.valueOf(c11))) {
                        i12--;
                    }
                    if (i12 > 0 && c12 != 0) {
                        i11 = this.f68696b;
                    }
                    c12 = c13;
                }
            } else {
                if (i12 > 0) {
                    i11 = this.f68696b;
                }
                c12 = c13;
            }
            if (i12 <= 0) {
                break;
            }
        }
        String strSubstring = i11 >= 0 ? this.f68695a.substring(i10, i11) : "";
        if (i12 > 0) {
            org.jsoup.helper.d.a("Did not find balanced marker at '" + strSubstring + "'");
        }
        return strSubstring;
    }

    public String b(String str) {
        String strG = g(str);
        k(str);
        return strG;
    }

    public char c() {
        String str = this.f68695a;
        int i10 = this.f68696b;
        this.f68696b = i10 + 1;
        return str.charAt(i10);
    }

    public void d(String str) {
        if (!l(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int length = str.length();
        if (length > r()) {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        this.f68696b += length;
    }

    public String e() {
        int i10 = this.f68696b;
        while (!j() && (p() || m('-', '_'))) {
            this.f68696b++;
        }
        return this.f68695a.substring(i10, this.f68696b);
    }

    public String f() {
        int i10 = this.f68696b;
        while (!j() && (p() || n("*|", "|", "_", "-"))) {
            this.f68696b++;
        }
        return this.f68695a.substring(i10, this.f68696b);
    }

    public String g(String str) {
        int iIndexOf = this.f68695a.indexOf(str, this.f68696b);
        if (iIndexOf == -1) {
            return q();
        }
        String strSubstring = this.f68695a.substring(this.f68696b, iIndexOf);
        this.f68696b += strSubstring.length();
        return strSubstring;
    }

    public String h(String... strArr) {
        int i10 = this.f68696b;
        while (!j() && !n(strArr)) {
            this.f68696b++;
        }
        return this.f68695a.substring(i10, this.f68696b);
    }

    public boolean i() {
        boolean z10 = false;
        while (o()) {
            this.f68696b++;
            z10 = true;
        }
        return z10;
    }

    public boolean j() {
        return r() == 0;
    }

    public boolean k(String str) {
        if (!l(str)) {
            return false;
        }
        this.f68696b += str.length();
        return true;
    }

    public boolean l(String str) {
        return this.f68695a.regionMatches(true, this.f68696b, str, 0, str.length());
    }

    public boolean m(char... cArr) {
        if (j()) {
            return false;
        }
        for (char c10 : cArr) {
            if (this.f68695a.charAt(this.f68696b) == c10) {
                return true;
            }
        }
        return false;
    }

    public boolean n(String... strArr) {
        for (String str : strArr) {
            if (l(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean o() {
        return !j() && org.jsoup.helper.c.h(this.f68695a.charAt(this.f68696b));
    }

    public boolean p() {
        return !j() && Character.isLetterOrDigit(this.f68695a.charAt(this.f68696b));
    }

    public String q() {
        String str = this.f68695a;
        String strSubstring = str.substring(this.f68696b, str.length());
        this.f68696b = this.f68695a.length();
        return strSubstring;
    }

    public String toString() {
        return this.f68695a.substring(this.f68696b);
    }
}
