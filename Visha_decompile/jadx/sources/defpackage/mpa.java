package defpackage;

public class mpa {
    public String a;
    public int b = 0;

    public mpa(String str) {
        dnb.i(str);
        this.a = str;
    }

    public static String s(String str) {
        StringBuilder sbB = m0a.b();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        char c = 0;
        while (i < length) {
            char c2 = charArray[i];
            if (c2 != '\\') {
                sbB.append(c2);
            } else if (c == '\\') {
                sbB.append(c2);
            }
            i++;
            c = c2;
        }
        return m0a.m(sbB);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x007c A[LOOP:0: B:3:0x0009->B:44:0x007c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:46:0x0055 A[EDGE_INSN: B:46:0x0055->B:38:0x0055 BREAK  A[LOOP:0: B:3:0x0009->B:44:0x007c], SYNTHETIC] */
    public String a(char c, char c2) {
        int i = -1;
        int i2 = -1;
        char c3 = 0;
        boolean z = false;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        while (!j()) {
            char c4 = c();
            if (c3 != '\\') {
                if (c4 == '\'' && c4 != c && !z) {
                    z2 = !z2;
                } else if (c4 == '\"' && c4 != c && !z2) {
                    z = !z;
                }
                if (!z2 && !z && !z3) {
                    if (c4 == c) {
                        i3++;
                        if (i == -1) {
                            i = this.b;
                        }
                    } else if (c4 == c2) {
                        i3--;
                    }
                }
                if (i3 <= 0) {
                    break;
                }
                c3 = c4;
            } else if (c4 == 'Q') {
                z3 = true;
            } else if (c4 == 'E') {
                z3 = false;
            }
            if (i3 > 0 && c3 != 0) {
                i2 = this.b;
            }
            if (i3 <= 0) {
                break;
                break;
            }
            c3 = c4;
        }
        String strSubstring = i2 >= 0 ? this.a.substring(i, i2) : "";
        if (i3 > 0) {
            dnb.a("Did not find balanced marker at '" + strSubstring + "'");
        }
        return strSubstring;
    }

    public String b(String str) {
        String strG = g(str);
        k(str);
        return strG;
    }

    public char c() {
        String str = this.a;
        int i = this.b;
        this.b = i + 1;
        return str.charAt(i);
    }

    public void d(String str) {
        if (!l(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int length = str.length();
        if (length > r()) {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        this.b += length;
    }

    public String e() {
        int i = this.b;
        while (!j() && (p() || m('-', '_'))) {
            this.b++;
        }
        return this.a.substring(i, this.b);
    }

    public String f() {
        int i = this.b;
        while (!j() && (p() || n("*|", "|", "_", "-"))) {
            this.b++;
        }
        return this.a.substring(i, this.b);
    }

    public String g(String str) {
        int iIndexOf = this.a.indexOf(str, this.b);
        if (iIndexOf == -1) {
            return q();
        }
        String strSubstring = this.a.substring(this.b, iIndexOf);
        this.b += strSubstring.length();
        return strSubstring;
    }

    public String h(String... strArr) {
        int i = this.b;
        while (!j() && !n(strArr)) {
            this.b++;
        }
        return this.a.substring(i, this.b);
    }

    public boolean i() {
        boolean z = false;
        while (o()) {
            this.b++;
            z = true;
        }
        return z;
    }

    public boolean j() {
        return r() == 0;
    }

    public boolean k(String str) {
        if (!l(str)) {
            return false;
        }
        this.b += str.length();
        return true;
    }

    public boolean l(String str) {
        return this.a.regionMatches(true, this.b, str, 0, str.length());
    }

    public boolean m(char... cArr) {
        if (j()) {
            return false;
        }
        for (char c : cArr) {
            if (this.a.charAt(this.b) == c) {
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
        return !j() && m0a.i(this.a.charAt(this.b));
    }

    public boolean p() {
        return !j() && Character.isLetterOrDigit(this.a.charAt(this.b));
    }

    public String q() {
        String strSubstring = this.a.substring(this.b);
        this.b = this.a.length();
        return strSubstring;
    }

    public final int r() {
        return this.a.length() - this.b;
    }

    public String toString() {
        return this.a.substring(this.b);
    }
}
