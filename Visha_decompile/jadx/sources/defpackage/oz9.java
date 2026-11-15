package defpackage;

import kotlin.KotlinNothingValueException;

public final class oz9 extends c3 {
    public final String e;

    public oz9(String str) {
        y45.j(str, "source");
        this.e = str;
    }

    @Override
    public int H(int i) {
        if (i < D().length()) {
            return i;
        }
        return -1;
    }

    @Override
    public int J() {
        char cCharAt;
        int i = this.a;
        if (i == -1) {
            return i;
        }
        while (i < D().length() && ((cCharAt = D().charAt(i)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i++;
        }
        this.a = i;
        return i;
    }

    @Override
    public boolean M() {
        int iJ = J();
        if (iJ == D().length() || iJ == -1 || D().charAt(iJ) != ',') {
            return false;
        }
        this.a++;
        return true;
    }

    @Override
    public String D() {
        return this.e;
    }

    @Override
    public boolean f() {
        int i = this.a;
        if (i == -1) {
            return false;
        }
        while (i < D().length()) {
            char cCharAt = D().charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.a = i;
                return E(cCharAt);
            }
            i++;
        }
        this.a = i;
        return false;
    }

    @Override
    public String k() {
        o('\"');
        int i = this.a;
        int iL0 = j1a.l0(D(), '\"', i, false, 4, null);
        if (iL0 == -1) {
            z((byte) 1);
            throw new KotlinNothingValueException();
        }
        for (int i2 = i; i2 < iL0; i2++) {
            if (D().charAt(i2) == '\\') {
                return r(D(), this.a, i2);
            }
        }
        this.a = iL0 + 1;
        String strSubstring = D().substring(i, iL0);
        y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @Override
    public String l(String str, boolean z) {
        y45.j(str, "keyToMatch");
        int i = this.a;
        try {
            if (m() != 6) {
                return null;
            }
            if (!y45.e(z ? k() : t(), str)) {
                return null;
            }
            if (m() != 5) {
                return null;
            }
            return z ? q() : t();
        } finally {
            this.a = i;
        }
    }

    @Override
    public byte m() {
        byte bA;
        String strD = D();
        do {
            int i = this.a;
            if (i == -1 || i >= strD.length()) {
                return (byte) 10;
            }
            int i2 = this.a;
            this.a = i2 + 1;
            bA = d3.a(strD.charAt(i2));
        } while (bA == 3);
        return bA;
    }

    @Override
    public void o(char c) {
        if (this.a == -1) {
            P(c);
        }
        String strD = D();
        while (this.a < strD.length()) {
            int i = this.a;
            this.a = i + 1;
            char cCharAt = strD.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt == c) {
                    return;
                } else {
                    P(c);
                }
            }
        }
        P(c);
    }
}
