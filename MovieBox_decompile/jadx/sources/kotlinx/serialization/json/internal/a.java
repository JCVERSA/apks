package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import kotlin.KotlinNothingValueException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class a {

    protected int f65317a;

    private String f65319c;

    public final x f65318b = new x();

    private StringBuilder f65320d = new StringBuilder();

    private final int B(CharSequence charSequence, int i10) {
        char cCharAt = charSequence.charAt(i10);
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

    private final String K() {
        String str = this.f65319c;
        Intrinsics.e(str);
        this.f65319c = null;
        return str;
    }

    private final boolean O() {
        return C().charAt(this.f65317a - 1) != '\"';
    }

    private final int b(int i10) {
        int iG = G(i10);
        if (iG == -1) {
            y(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i11 = iG + 1;
        char cCharAt = C().charAt(iG);
        if (cCharAt == 'u') {
            return d(C(), i11);
        }
        char cB = b.b(cCharAt);
        if (cB != 0) {
            this.f65320d.append(cB);
            return i11;
        }
        y(this, "Invalid escaped char '" + cCharAt + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final int c(int i10, int i11) {
        e(i10, i11);
        return b(i11 + 1);
    }

    private final int d(CharSequence charSequence, int i10) {
        int i11 = i10 + 4;
        if (i11 < charSequence.length()) {
            this.f65320d.append((char) ((B(charSequence, i10) << 12) + (B(charSequence, i10 + 1) << 8) + (B(charSequence, i10 + 2) << 4) + B(charSequence, i10 + 3)));
            return i11;
        }
        this.f65317a = i10;
        v();
        if (this.f65317a + 4 < charSequence.length()) {
            return d(charSequence, this.f65317a);
        }
        y(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final boolean h(int i10) {
        int iG = G(i10);
        if (iG >= C().length() || iG == -1) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i11 = iG + 1;
        int iCharAt = C().charAt(iG) | ' ';
        if (iCharAt == 102) {
            j("alse", i11);
            return false;
        }
        if (iCharAt == 116) {
            j("rue", i11);
            return true;
        }
        y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final void j(String str, int i10) {
        if (C().length() - i10 < str.length()) {
            y(this, "Unexpected end of boolean literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (str.charAt(i11) != (C().charAt(i10 + i11) | ' ')) {
                y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        this.f65317a = i10 + str.length();
    }

    private final String u(int i10, int i11) {
        e(i10, i11);
        String string = this.f65320d.toString();
        Intrinsics.g(string, "escapedString.toString()");
        this.f65320d.setLength(0);
        return string;
    }

    public static Void y(a aVar, String str, int i10, String str2, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
        }
        if ((i11 & 2) != 0) {
            i10 = aVar.f65317a;
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        return aVar.x(str, i10, str2);
    }

    public final void A(String key) {
        Intrinsics.h(key, "key");
        x("Encountered an unknown key '" + key + '\'', StringsKt.v0(J(0, this.f65317a), key, 0, false, 6, null), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
        throw new KotlinNothingValueException();
    }

    protected abstract CharSequence C();

    protected final boolean D(char c10) {
        return !(c10 == '}' || c10 == ']' || c10 == ':' || c10 == ',');
    }

    public final byte E() {
        CharSequence charSequenceC = C();
        int i10 = this.f65317a;
        while (true) {
            int iG = G(i10);
            if (iG == -1) {
                this.f65317a = iG;
                return (byte) 10;
            }
            char cCharAt = charSequenceC.charAt(iG);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f65317a = iG;
                return b.a(cCharAt);
            }
            i10 = iG + 1;
        }
    }

    public final String F(boolean z10) {
        String strQ;
        byte bE = E();
        if (z10) {
            if (bE != 1 && bE != 0) {
                return null;
            }
            strQ = s();
        } else {
            if (bE != 1) {
                return null;
            }
            strQ = q();
        }
        this.f65319c = strQ;
        return strQ;
    }

    public abstract int G(int i10);

    public final void H(boolean z10) {
        ArrayList arrayList = new ArrayList();
        byte bE = E();
        if (bE != 8 && bE != 6) {
            s();
            return;
        }
        while (true) {
            byte bE2 = E();
            if (bE2 != 1) {
                if (bE2 == 8 || bE2 == 6) {
                    arrayList.add(Byte.valueOf(bE2));
                } else if (bE2 == 9) {
                    if (((Number) CollectionsKt.u0(arrayList)).byteValue() != 8) {
                        throw w.f(this.f65317a, "found ] instead of } at path: " + this.f65318b, C());
                    }
                    CollectionsKt.L(arrayList);
                } else if (bE2 == 7) {
                    if (((Number) CollectionsKt.u0(arrayList)).byteValue() != 6) {
                        throw w.f(this.f65317a, "found } instead of ] at path: " + this.f65318b, C());
                    }
                    CollectionsKt.L(arrayList);
                } else if (bE2 == 10) {
                    y(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                m();
                if (arrayList.size() == 0) {
                    return;
                }
            } else if (z10) {
                s();
            } else {
                k();
            }
        }
    }

    public int I() {
        int iG;
        char cCharAt;
        int i10 = this.f65317a;
        while (true) {
            iG = G(i10);
            if (iG == -1 || !((cCharAt = C().charAt(iG)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i10 = iG + 1;
        }
        this.f65317a = iG;
        return iG;
    }

    public String J(int i10, int i11) {
        return C().subSequence(i10, i11).toString();
    }

    public abstract boolean L();

    public final boolean M() {
        int iG = G(I());
        int length = C().length() - iG;
        if (length < 4 || iG == -1) {
            return true;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            if ("null".charAt(i10) != C().charAt(iG + i10)) {
                return true;
            }
        }
        if (length > 4 && b.a(C().charAt(iG + 4)) == 0) {
            return true;
        }
        this.f65317a = iG + 4;
        return false;
    }

    protected final void N(char c10) {
        int i10 = this.f65317a - 1;
        this.f65317a = i10;
        if (i10 >= 0 && c10 == '\"' && Intrinsics.c(s(), "null")) {
            x("Expected string literal but 'null' literal was found", this.f65317a - 4, "Use 'coerceInputValues = true' in 'Json {}` builder to coerce nulls to default values.");
            throw new KotlinNothingValueException();
        }
        z(b.a(c10));
        throw new KotlinNothingValueException();
    }

    protected void e(int i10, int i11) {
        this.f65320d.append(C(), i10, i11);
    }

    public abstract boolean f();

    public final boolean g() {
        return h(I());
    }

    public final boolean i() {
        boolean z10;
        int I = I();
        if (I == C().length()) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (C().charAt(I) == '\"') {
            I++;
            z10 = true;
        } else {
            z10 = false;
        }
        boolean zH = h(I);
        if (z10) {
            if (this.f65317a == C().length()) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (C().charAt(this.f65317a) != '\"') {
                y(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            this.f65317a++;
        }
        return zH;
    }

    public abstract String k();

    public abstract String l(String str, boolean z10);

    public abstract byte m();

    public final byte n(byte b10) {
        byte bM = m();
        if (bM == b10) {
            return bM;
        }
        z(b10);
        throw new KotlinNothingValueException();
    }

    public void o(char c10) {
        v();
        CharSequence charSequenceC = C();
        int i10 = this.f65317a;
        while (true) {
            int iG = G(i10);
            if (iG == -1) {
                this.f65317a = iG;
                N(c10);
                return;
            }
            int i11 = iG + 1;
            char cCharAt = charSequenceC.charAt(iG);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f65317a = i11;
                if (cCharAt == c10) {
                    return;
                } else {
                    N(c10);
                }
            }
            i10 = i11;
        }
    }

    public final long p() {
        boolean z10;
        int iG = G(I());
        if (iG >= C().length() || iG == -1) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (C().charAt(iG) == '\"') {
            iG++;
            if (iG == C().length()) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            z10 = true;
        } else {
            z10 = false;
        }
        int i10 = iG;
        long j10 = 0;
        boolean z11 = true;
        boolean z12 = false;
        while (z11) {
            char cCharAt = C().charAt(i10);
            if (cCharAt != '-') {
                if (b.a(cCharAt) != 0) {
                    break;
                }
                i10++;
                z11 = i10 != C().length();
                int i11 = cCharAt - '0';
                if (i11 < 0 || i11 >= 10) {
                    y(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                j10 = (j10 * ((long) 10)) - ((long) i11);
                if (j10 > 0) {
                    y(this, "Numeric value overflow", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                if (i10 != iG) {
                    y(this, "Unexpected symbol '-' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                i10++;
                z12 = true;
            }
        }
        if (iG == i10 || (z12 && iG == i10 - 1)) {
            y(this, "Expected numeric literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z10) {
            if (!z11) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (C().charAt(i10) != '\"') {
                y(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            i10++;
        }
        this.f65317a = i10;
        if (z12) {
            return j10;
        }
        if (j10 != Long.MIN_VALUE) {
            return -j10;
        }
        y(this, "Numeric value overflow", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final String q() {
        return this.f65319c != null ? K() : k();
    }

    protected final String r(CharSequence source, int i10, int i11) {
        int iG;
        Intrinsics.h(source, "source");
        char cCharAt = source.charAt(i11);
        boolean z10 = false;
        while (cCharAt != '\"') {
            if (cCharAt == '\\') {
                iG = G(c(i10, i11));
                if (iG == -1) {
                    y(this, "EOF", iG, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                i11++;
                if (i11 >= source.length()) {
                    e(i10, i11);
                    iG = G(i11);
                    if (iG == -1) {
                        y(this, "EOF", iG, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    continue;
                }
                cCharAt = source.charAt(i11);
            }
            z10 = true;
            i10 = iG;
            i11 = i10;
            cCharAt = source.charAt(i11);
        }
        String strJ = !z10 ? J(i10, i11) : u(i10, i11);
        this.f65317a = i11 + 1;
        return strJ;
    }

    public final String s() {
        if (this.f65319c != null) {
            return K();
        }
        int I = I();
        if (I >= C().length() || I == -1) {
            y(this, "EOF", I, null, 4, null);
            throw new KotlinNothingValueException();
        }
        byte bA = b.a(C().charAt(I));
        if (bA == 1) {
            return q();
        }
        if (bA != 0) {
            y(this, "Expected beginning of the string, but got " + C().charAt(I), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        boolean z10 = false;
        while (b.a(C().charAt(I)) == 0) {
            I++;
            if (I >= C().length()) {
                e(this.f65317a, I);
                int iG = G(I);
                if (iG == -1) {
                    this.f65317a = I;
                    return u(0, 0);
                }
                I = iG;
                z10 = true;
            }
        }
        String strJ = !z10 ? J(this.f65317a, I) : u(this.f65317a, I);
        this.f65317a = I;
        return strJ;
    }

    public final String t() {
        String strS = s();
        if (!Intrinsics.c(strS, "null") || !O()) {
            return strS;
        }
        y(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public String toString() {
        return "JsonReader(source='" + ((Object) C()) + "', currentPosition=" + this.f65317a + ')';
    }

    public void v() {
    }

    public final void w() {
        if (m() == 10) {
            return;
        }
        y(this, "Expected EOF after parsing, but had " + C().charAt(this.f65317a - 1) + " instead", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final Void x(String message, int i10, String hint) {
        String str;
        Intrinsics.h(message, "message");
        Intrinsics.h(hint, "hint");
        if (hint.length() == 0) {
            str = "";
        } else {
            str = '\n' + hint;
        }
        throw w.f(i10, message + " at path: " + this.f65318b.a() + str, C());
    }

    public final Void z(byte b10) {
        String str;
        if (b10 == 1) {
            str = "quotation mark '\"'";
        } else if (b10 == 4) {
            str = "comma ','";
        } else if (b10 == 5) {
            str = "colon ':'";
        } else if (b10 == 6) {
            str = "start of the object '{'";
        } else if (b10 == 7) {
            str = "end of the object '}'";
        } else if (b10 == 8) {
            str = "start of the array '['";
        } else {
            str = b10 == 9 ? "end of the array ']'" : "valid token";
        }
        y(this, "Expected " + str + ", but had '" + ((this.f65317a == C().length() || this.f65317a <= 0) ? "EOF" : String.valueOf(C().charAt(this.f65317a - 1))) + "' instead", this.f65317a - 1, null, 4, null);
        throw new KotlinNothingValueException();
    }
}
