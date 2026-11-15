package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class n0 extends a {

    private final String f65368e;

    public n0(String source) {
        Intrinsics.h(source, "source");
        this.f65368e = source;
    }

    @Override
    public int G(int i10) {
        if (i10 < C().length()) {
            return i10;
        }
        return -1;
    }

    @Override
    public int I() {
        char cCharAt;
        int i10 = this.f65317a;
        if (i10 == -1) {
            return i10;
        }
        while (i10 < C().length() && ((cCharAt = C().charAt(i10)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i10++;
        }
        this.f65317a = i10;
        return i10;
    }

    @Override
    public boolean L() {
        int I = I();
        if (I == C().length() || I == -1 || C().charAt(I) != ',') {
            return false;
        }
        this.f65317a++;
        return true;
    }

    @Override
    public String C() {
        return this.f65368e;
    }

    @Override
    public boolean f() {
        int i10 = this.f65317a;
        if (i10 == -1) {
            return false;
        }
        while (i10 < C().length()) {
            char cCharAt = C().charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f65317a = i10;
                return D(cCharAt);
            }
            i10++;
        }
        this.f65317a = i10;
        return false;
    }

    @Override
    public String k() {
        o('\"');
        int i10 = this.f65317a;
        int iN0 = StringsKt.n0(C(), '\"', i10, false, 4, null);
        if (iN0 == -1) {
            z((byte) 1);
            throw new KotlinNothingValueException();
        }
        for (int i11 = i10; i11 < iN0; i11++) {
            if (C().charAt(i11) == '\\') {
                return r(C(), this.f65317a, i11);
            }
        }
        this.f65317a = iN0 + 1;
        String strSubstring = C().substring(i10, iN0);
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @Override
    public String l(String keyToMatch, boolean z10) {
        Intrinsics.h(keyToMatch, "keyToMatch");
        int i10 = this.f65317a;
        try {
            if (m() != 6) {
                return null;
            }
            if (!Intrinsics.c(z10 ? k() : t(), keyToMatch)) {
                return null;
            }
            if (m() != 5) {
                return null;
            }
            return z10 ? q() : t();
        } finally {
            this.f65317a = i10;
        }
    }

    @Override
    public byte m() {
        byte bA;
        String strC = C();
        do {
            int i10 = this.f65317a;
            if (i10 == -1 || i10 >= strC.length()) {
                return (byte) 10;
            }
            int i11 = this.f65317a;
            this.f65317a = i11 + 1;
            bA = b.a(strC.charAt(i11));
        } while (bA == 3);
        return bA;
    }

    @Override
    public void o(char c10) {
        if (this.f65317a == -1) {
            N(c10);
        }
        String strC = C();
        while (this.f65317a < strC.length()) {
            int i10 = this.f65317a;
            this.f65317a = i10 + 1;
            char cCharAt = strC.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt == c10) {
                    return;
                } else {
                    N(c10);
                }
            }
        }
        N(c10);
    }
}
