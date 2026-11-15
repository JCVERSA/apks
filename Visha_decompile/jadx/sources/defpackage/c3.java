package defpackage;

import java.util.ArrayList;
import kotlin.KotlinNothingValueException;

public abstract class c3 {
    public int a;
    public String c;
    public final pb5 b = new pb5();
    public StringBuilder d = new StringBuilder();

    public static boolean O(c3 c3Var, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryConsumeNull");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        return c3Var.N(z);
    }

    public static Void y(c3 c3Var, String str, int i, String str2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
        }
        if ((i2 & 2) != 0) {
            i = c3Var.a;
        }
        if ((i2 & 4) != 0) {
            str2 = "";
        }
        return c3Var.x(str, i, str2);
    }

    public final void A(String str) {
        y45.j(str, "key");
        x("Encountered an unknown key '" + str + '\'', j1a.s0(K(0, this.a), str, 0, false, 6, null), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
        throw new KotlinNothingValueException();
    }

    public final int B(CharSequence charSequence, int i) {
        char cCharAt = charSequence.charAt(i);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        y(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final StringBuilder C() {
        return this.d;
    }

    public abstract CharSequence D();

    public final boolean E(char c) {
        return !(c == '}' || c == ']' || c == ':' || c == ',');
    }

    public final byte F() {
        CharSequence charSequenceD = D();
        int i = this.a;
        while (true) {
            int iH = H(i);
            if (iH == -1) {
                this.a = iH;
                return (byte) 10;
            }
            char cCharAt = charSequenceD.charAt(iH);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.a = iH;
                return d3.a(cCharAt);
            }
            i = iH + 1;
        }
    }

    public final String G(boolean z) {
        String strQ;
        byte bF = F();
        if (z) {
            if (bF != 1 && bF != 0) {
                return null;
            }
            strQ = s();
        } else {
            if (bF != 1) {
                return null;
            }
            strQ = q();
        }
        this.c = strQ;
        return strQ;
    }

    public abstract int H(int i);

    public final void I(boolean z) {
        ArrayList arrayList = new ArrayList();
        byte bF = F();
        if (bF != 8 && bF != 6) {
            s();
            return;
        }
        while (true) {
            byte bF2 = F();
            if (bF2 != 1) {
                if (bF2 == 8 || bF2 == 6) {
                    arrayList.add(Byte.valueOf(bF2));
                } else if (bF2 == 9) {
                    if (((Number) i81.A0(arrayList)).byteValue() != 8) {
                        throw oa5.e(this.a, "found ] instead of } at path: " + this.b, D());
                    }
                    d81.J(arrayList);
                } else if (bF2 == 7) {
                    if (((Number) i81.A0(arrayList)).byteValue() != 6) {
                        throw oa5.e(this.a, "found } instead of ] at path: " + this.b, D());
                    }
                    d81.J(arrayList);
                } else if (bF2 == 10) {
                    y(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                m();
                if (arrayList.size() == 0) {
                    return;
                }
            } else if (z) {
                s();
            } else {
                k();
            }
        }
    }

    public int J() {
        int iH;
        char cCharAt;
        int i = this.a;
        while (true) {
            iH = H(i);
            if (iH == -1 || !((cCharAt = D().charAt(iH)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i = iH + 1;
        }
        this.a = iH;
        return iH;
    }

    public String K(int i, int i2) {
        return D().subSequence(i, i2).toString();
    }

    public final String L() {
        String str = this.c;
        y45.g(str);
        this.c = null;
        return str;
    }

    public abstract boolean M();

    public final boolean N(boolean z) {
        int iH = H(J());
        int length = D().length() - iH;
        if (length < 4 || iH == -1) {
            return false;
        }
        for (int i = 0; i < 4; i++) {
            if ("null".charAt(i) != D().charAt(iH + i)) {
                return false;
            }
        }
        if (length > 4 && d3.a(D().charAt(iH + 4)) == 0) {
            return false;
        }
        if (!z) {
            return true;
        }
        this.a = iH + 4;
        return true;
    }

    public final void P(char c) {
        int i = this.a - 1;
        this.a = i;
        if (i >= 0 && c == '\"' && y45.e(s(), "null")) {
            x("Expected string literal but 'null' literal was found", this.a - 4, "Use 'coerceInputValues = true' in 'Json {}` builder to coerce nulls to default values.");
            throw new KotlinNothingValueException();
        }
        z(d3.a(c));
        throw new KotlinNothingValueException();
    }

    public final boolean Q() {
        return D().charAt(this.a - 1) != '\"';
    }

    public final int b(int i) {
        int iH = H(i);
        if (iH == -1) {
            y(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i2 = iH + 1;
        char cCharAt = D().charAt(iH);
        if (cCharAt == 'u') {
            return d(D(), i2);
        }
        char cB = d3.b(cCharAt);
        if (cB != 0) {
            this.d.append(cB);
            return i2;
        }
        y(this, "Invalid escaped char '" + cCharAt + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final int c(int i, int i2) {
        e(i, i2);
        return b(i2 + 1);
    }

    public final int d(CharSequence charSequence, int i) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            this.d.append((char) ((B(charSequence, i) << 12) + (B(charSequence, i + 1) << 8) + (B(charSequence, i + 2) << 4) + B(charSequence, i + 3)));
            return i2;
        }
        this.a = i;
        v();
        if (this.a + 4 < charSequence.length()) {
            return d(charSequence, this.a);
        }
        y(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public void e(int i, int i2) {
        this.d.append(D(), i, i2);
    }

    public abstract boolean f();

    public final boolean g() {
        return h(J());
    }

    public final boolean h(int i) {
        int iH = H(i);
        if (iH >= D().length() || iH == -1) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i2 = iH + 1;
        int iCharAt = D().charAt(iH) | ' ';
        if (iCharAt == 102) {
            j("alse", i2);
            return false;
        }
        if (iCharAt == 116) {
            j("rue", i2);
            return true;
        }
        y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final boolean i() {
        boolean z;
        int iJ = J();
        if (iJ == D().length()) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (D().charAt(iJ) == '\"') {
            iJ++;
            z = true;
        } else {
            z = false;
        }
        boolean zH = h(iJ);
        if (z) {
            if (this.a == D().length()) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (D().charAt(this.a) != '\"') {
                y(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            this.a++;
        }
        return zH;
    }

    public final void j(String str, int i) {
        if (D().length() - i < str.length()) {
            y(this, "Unexpected end of boolean literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != (D().charAt(i + i2) | ' ')) {
                y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        this.a = i + str.length();
    }

    public abstract String k();

    public abstract String l(String str, boolean z);

    public abstract byte m();

    public final byte n(byte b) {
        byte bM = m();
        if (bM == b) {
            return bM;
        }
        z(b);
        throw new KotlinNothingValueException();
    }

    public void o(char c) {
        v();
        CharSequence charSequenceD = D();
        int i = this.a;
        while (true) {
            int iH = H(i);
            if (iH == -1) {
                this.a = iH;
                P(c);
                return;
            }
            int i2 = iH + 1;
            char cCharAt = charSequenceD.charAt(iH);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.a = i2;
                if (cCharAt == c) {
                    return;
                } else {
                    P(c);
                }
            }
            i = i2;
        }
    }

    public final long p() {
        boolean z;
        int iH = H(J());
        if (iH >= D().length() || iH == -1) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (D().charAt(iH) == '\"') {
            iH++;
            if (iH == D().length()) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            z = true;
        } else {
            z = false;
        }
        int i = iH;
        long j = 0;
        boolean z2 = true;
        boolean z3 = false;
        while (z2) {
            char cCharAt = D().charAt(i);
            if (cCharAt != '-') {
                if (d3.a(cCharAt) != 0) {
                    break;
                }
                i++;
                z2 = i != D().length();
                int i2 = cCharAt - '0';
                if (i2 < 0 || i2 >= 10) {
                    y(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                j = (j * ((long) 10)) - ((long) i2);
                if (j > 0) {
                    y(this, "Numeric value overflow", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                if (i != iH) {
                    y(this, "Unexpected symbol '-' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                i++;
                z3 = true;
            }
        }
        if (iH == i || (z3 && iH == i - 1)) {
            y(this, "Expected numeric literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z) {
            if (!z2) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (D().charAt(i) != '\"') {
                y(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            i++;
        }
        this.a = i;
        if (z3) {
            return j;
        }
        if (j != Long.MIN_VALUE) {
            return -j;
        }
        y(this, "Numeric value overflow", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final String q() {
        return this.c != null ? L() : k();
    }

    public final String r(CharSequence charSequence, int i, int i2) {
        int iH;
        y45.j(charSequence, "source");
        char cCharAt = charSequence.charAt(i2);
        boolean z = false;
        while (cCharAt != '\"') {
            if (cCharAt == '\\') {
                iH = H(c(i, i2));
                if (iH == -1) {
                    y(this, "EOF", iH, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                i2++;
                if (i2 >= charSequence.length()) {
                    e(i, i2);
                    iH = H(i2);
                    if (iH == -1) {
                        y(this, "EOF", iH, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    continue;
                }
                cCharAt = charSequence.charAt(i2);
            }
            z = true;
            i = iH;
            i2 = i;
            cCharAt = charSequence.charAt(i2);
        }
        String strK = !z ? K(i, i2) : u(i, i2);
        this.a = i2 + 1;
        return strK;
    }

    public final String s() {
        if (this.c != null) {
            return L();
        }
        int iJ = J();
        if (iJ >= D().length() || iJ == -1) {
            y(this, "EOF", iJ, null, 4, null);
            throw new KotlinNothingValueException();
        }
        byte bA = d3.a(D().charAt(iJ));
        if (bA == 1) {
            return q();
        }
        if (bA != 0) {
            y(this, "Expected beginning of the string, but got " + D().charAt(iJ), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        boolean z = false;
        while (d3.a(D().charAt(iJ)) == 0) {
            iJ++;
            if (iJ >= D().length()) {
                e(this.a, iJ);
                int iH = H(iJ);
                if (iH == -1) {
                    this.a = iJ;
                    return u(0, 0);
                }
                iJ = iH;
                z = true;
            }
        }
        String strK = !z ? K(this.a, iJ) : u(this.a, iJ);
        this.a = iJ;
        return strK;
    }

    public final String t() {
        String strS = s();
        if (!y45.e(strS, "null") || !Q()) {
            return strS;
        }
        y(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public String toString() {
        return "JsonReader(source='" + ((Object) D()) + "', currentPosition=" + this.a + ')';
    }

    public final String u(int i, int i2) {
        e(i, i2);
        String string = this.d.toString();
        y45.i(string, "escapedString.toString()");
        this.d.setLength(0);
        return string;
    }

    public void v() {
    }

    public final void w() {
        if (m() == 10) {
            return;
        }
        y(this, "Expected EOF after parsing, but had " + D().charAt(this.a - 1) + " instead", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final Void x(String str, int i, String str2) {
        String str3;
        y45.j(str, "message");
        y45.j(str2, "hint");
        if (str2.length() == 0) {
            str3 = "";
        } else {
            str3 = '\n' + str2;
        }
        throw oa5.e(i, str + " at path: " + this.b.a() + str3, D());
    }

    public final Void z(byte b) {
        String str;
        if (b == 1) {
            str = "quotation mark '\"'";
        } else if (b == 4) {
            str = "comma ','";
        } else if (b == 5) {
            str = "colon ':'";
        } else if (b == 6) {
            str = "start of the object '{'";
        } else if (b == 7) {
            str = "end of the object '}'";
        } else if (b == 8) {
            str = "start of the array '['";
        } else {
            str = b == 9 ? "end of the array ']'" : "valid token";
        }
        y(this, "Expected " + str + ", but had '" + ((this.a == D().length() || this.a <= 0) ? "EOF" : String.valueOf(D().charAt(this.a - 1))) + "' instead", this.a - 1, null, 4, null);
        throw new KotlinNothingValueException();
    }
}
