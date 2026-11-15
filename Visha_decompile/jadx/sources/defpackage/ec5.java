package defpackage;

import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.lang3.CharUtils;

public final class ec5 {
    public static final char[] o = {'r', 'u', 'e'};
    public static final char[] p = {'a', 'l', 's', 'e'};
    public static final char[] q = {'u', 'l', 'l'};
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public int h;
    public final Reader i;
    public int k;
    public boolean n;
    public int a = 1;
    public final char[] j = new char[32768];
    public StringBuilder m = new StringBuilder();
    public final boolean l = false;

    public ec5(Reader reader) throws JsonParserException {
        this.i = reader;
        m();
    }

    public final int a() {
        if (this.g) {
            return -1;
        }
        char[] cArr = this.j;
        int i = this.h;
        char c = cArr[i];
        if (c == '\n') {
            this.a++;
            this.b = i + 1 + this.c;
            this.d = 0;
        }
        int i2 = i + 1;
        this.h = i2;
        if (i2 >= this.k) {
            this.g = r();
        }
        return c;
    }

    public int b(boolean z) throws JsonParserException {
        int iA;
        do {
            iA = a();
        } while (p(iA));
        int i = this.h;
        int i2 = this.c;
        this.e = ((i + i2) - this.b) - this.d;
        this.f = i2 + i;
        if (iA == -1) {
            return 0;
        }
        if (iA == 34 || iA == 39) {
            f(iA);
            return 8;
        }
        if (iA == 91) {
            return 11;
        }
        if (iA == 93) {
            return 4;
        }
        if (iA == 102) {
            try {
                c((char) iA, p);
                return 7;
            } catch (JsonParserException e) {
                if (!z) {
                    throw e;
                }
            }
        } else if (iA == 110) {
            try {
                c((char) iA, q);
                return 5;
            } catch (JsonParserException e2) {
                if (!z) {
                    throw e2;
                }
            }
        } else if (iA == 116) {
            try {
                c((char) iA, o);
                return 6;
            } catch (JsonParserException e3) {
                if (!z) {
                    throw e3;
                }
            }
        } else {
            if (iA == 123) {
                return 10;
            }
            if (iA == 125) {
                return 3;
            }
            switch (iA) {
                case 43:
                case 46:
                    throw j(null, "Numbers may not start with '" + ((char) iA) + "'", true);
                case 44:
                    return 1;
                default:
                    switch (iA) {
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                            break;
                        case 58:
                            return 2;
                        default:
                            if (!z) {
                                if (n(iA)) {
                                    throw i((char) iA, null, 0);
                                }
                                throw j(null, "Unexpected character: " + ((char) iA), true);
                            }
                            break;
                    }
                case 45:
                    d((char) iA);
                    return 9;
            }
        }
        this.h = i - 1;
        e();
        return 12;
    }

    public void c(char c, char[] cArr) throws JsonParserException {
        if (k(cArr.length) < cArr.length) {
            throw i(c, cArr, 0);
        }
        for (int i = 0; i < cArr.length; i++) {
            char[] cArr2 = this.j;
            int i2 = this.h;
            this.h = i2 + 1;
            if (cArr2[i2] != cArr[i]) {
                throw i(c, cArr, i);
            }
        }
        l();
        int iQ = q();
        if (iQ != 9 && iQ != 10 && iQ != 13 && iQ != 32 && iQ != 44 && iQ != 58 && iQ != 91 && iQ != 93 && iQ != 123 && iQ != 125) {
            throw i(c, cArr, cArr.length);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:0x0078  */
    /* JADX WARN: Code duplicated, block: B:49:0x0098  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c0  */
    public void d(char c) throws JsonParserException {
        Exception exc;
        byte b;
        byte b2;
        int i = 0;
        this.m.setLength(0);
        this.m.append(c);
        this.n = false;
        char c2 = 3;
        byte b3 = c == '-' ? (byte) 1 : c == '0' ? (byte) 3 : (byte) 2;
        while (true) {
            int iK = k(256);
            exc = null;
            b = 8;
            if (iK != 0) {
                int i2 = i;
                while (true) {
                    if (i2 < iK) {
                        char c3 = this.j[this.h];
                        if (o(c3)) {
                            switch (b3) {
                                case 1:
                                    if (c3 == '-' && b3 == 0) {
                                        b3 = 1;
                                    } else if (c3 == '0') {
                                        b3 = 3;
                                    } else if (c3 >= '0' && c3 <= '9') {
                                        b3 = 2;
                                    } else {
                                        b3 = -1;
                                    }
                                    break;
                                case 2:
                                case 3:
                                    if (c3 >= '0' && c3 <= '9' && b3 == 2) {
                                        b3 = 2;
                                    } else if (c3 == '.') {
                                        this.n = true;
                                        b2 = 4;
                                        b3 = b2;
                                    } else if (c3 == 'e' || c3 == 'E') {
                                        this.n = true;
                                        b3 = 6;
                                    } else {
                                        b3 = -1;
                                    }
                                    break;
                                case 4:
                                case 5:
                                    if (c3 >= '0' && c3 <= '9') {
                                        b3 = 5;
                                    } else if ((c3 == 'e' || c3 == 'E') && b3 == 5) {
                                        this.n = true;
                                        b3 = 6;
                                    } else {
                                        b3 = -1;
                                    }
                                    break;
                                case 6:
                                case 7:
                                    if (c3 == '+' || (c3 == '-' && b3 == 6)) {
                                        b2 = 7;
                                        b3 = b2;
                                    } else if (c3 >= '0' && c3 <= '9') {
                                        b3 = 8;
                                    } else {
                                        b3 = -1;
                                    }
                                    break;
                                case 8:
                                    if (c3 >= '0' && c3 <= '9') {
                                        b3 = 8;
                                    } else {
                                        b3 = -1;
                                    }
                                    break;
                                default:
                                    b3 = -1;
                                    break;
                            }
                            this.m.append(c3);
                            this.h++;
                            if (b3 == -1) {
                                throw j(null, "Malformed number: " + ((Object) this.m), true);
                            }
                            i2++;
                            c2 = 3;
                            i = 0;
                            exc = null;
                            b = 8;
                        }
                    }
                }
            }
        }
        if (b3 != 2 && b3 != c2 && b3 != 5 && b3 != b) {
            throw j(exc, "Malformed number: " + ((Object) this.m), true);
        }
        if (b3 == c2 && c == '-') {
            this.n = true;
        }
        l();
    }

    public void e() throws JsonParserException {
        int i;
        StringBuilder sb;
        int i2;
        this.m.setLength(0);
        loop0: while (true) {
            int i3 = 256;
            int iK = k(256);
            boolean z = true;
            if (iK == 0) {
                throw j(null, "String was not terminated before end of input", true);
            }
            i = 0;
            while (i < iK) {
                char cS = s();
                if (p(cS)) {
                    break loop0;
                }
                char c = ':';
                if (cS == ':') {
                    break loop0;
                }
                char c2 = ',';
                if (cS == '\\' || (this.l && (cS & 128) != 0)) {
                    this.m.append(this.j, (this.h - i) - 1, i);
                    this.h--;
                    while (true) {
                        int iK2 = k(i3);
                        if (iK2 == 0) {
                            throw j(null, "String was not terminated before end of input", z);
                        }
                        int i4 = this.h + iK2;
                        while (true) {
                            int i5 = this.h;
                            if (i5 >= i4) {
                                int i6 = this.k;
                                if (i5 > i6) {
                                    this.h = i6;
                                    throw j(null, "EOF encountered in the middle of a string escape", false);
                                }
                                i3 = 256;
                                z = true;
                                c = ':';
                                c2 = ',';
                                break;
                            }
                            char cS2 = s();
                            if (this.l && (cS2 & 128) != 0) {
                                g(cS2);
                                break;
                            }
                            if (cS2 != '\t' && cS2 != '\n' && cS2 != '\r' && cS2 != ' ') {
                                if (cS2 != c2) {
                                    if (cS2 != c) {
                                        if (cS2 != '{' && cS2 != '}') {
                                            switch (cS2) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    if (i4 - this.h < 5) {
                                                        int iK3 = k(5);
                                                        int i7 = this.h;
                                                        int i8 = i7 + iK3;
                                                        if (this.j[i7] == 'u' && iK3 < 5) {
                                                            this.h = this.k;
                                                            throw j(null, "EOF encountered in the middle of a string escape", false);
                                                        }
                                                        i4 = i8;
                                                    }
                                                    char[] cArr = this.j;
                                                    int i9 = this.h;
                                                    this.h = i9 + 1;
                                                    char c3 = cArr[i9];
                                                    if (c3 == '\"' || c3 == '/' || c3 == '\\') {
                                                        this.m.append(c3);
                                                    } else {
                                                        if (c3 == 'b') {
                                                            sb = this.m;
                                                            cS2 = '\b';
                                                        } else if (c3 == 'f') {
                                                            sb = this.m;
                                                            cS2 = '\f';
                                                        } else if (c3 == 'n') {
                                                            sb = this.m;
                                                            cS2 = '\n';
                                                        } else if (c3 == 'r') {
                                                            this.m.append(CharUtils.CR);
                                                        } else if (c3 == 't') {
                                                            this.m.append('\t');
                                                        } else {
                                                            if (c3 != 'u') {
                                                                throw j(null, "Invalid escape: \\" + c3, false);
                                                            }
                                                            int i10 = 0;
                                                            for (int i11 = 0; i11 < 4; i11++) {
                                                                int i12 = i10 << 4;
                                                                char[] cArr2 = this.j;
                                                                int i13 = this.h;
                                                                this.h = i13 + 1;
                                                                char c4 = cArr2[i13];
                                                                if (c4 >= '0' && c4 <= '9') {
                                                                    i2 = c4 - '0';
                                                                } else if (c4 >= 'A' && c4 <= 'F') {
                                                                    i2 = c4 - '7';
                                                                } else {
                                                                    if (c4 < 'a' || c4 > 'f') {
                                                                        StringBuilder sb2 = new StringBuilder();
                                                                        sb2.append("Expected unicode hex escape character: ");
                                                                        sb2.append(c4);
                                                                        sb2.append(" (");
                                                                        sb2.append((int) c4);
                                                                        sb2.append(")");
                                                                        throw j(null, sb2.toString(), false);
                                                                    }
                                                                    i2 = c4 - 'W';
                                                                }
                                                                i10 = i12 | i2;
                                                            }
                                                            sb = this.m;
                                                            cS2 = (char) i10;
                                                        }
                                                        sb.append(cS2);
                                                    }
                                                    i3 = 256;
                                                    z = true;
                                                    c = ':';
                                                    c2 = ',';
                                                    break;
                                                default:
                                                    sb = this.m;
                                                    sb.append(cS2);
                                                    i3 = 256;
                                                    z = true;
                                                    c = ':';
                                                    c2 = ',';
                                                    break;
                                            }
                                        }
                                    }
                                }
                                throw j(null, "Invalid character in semi-string: " + cS2, false);
                            }
                            l();
                            return;
                        }
                    }
                }
                if (cS == '[' || cS == ']' || cS == '{' || cS == '}' || cS == ',') {
                    throw j(null, "Invalid character in semi-string: " + cS, false);
                }
                i++;
            }
            this.m.append(this.j, this.h - iK, iK);
        }
        this.m.append(this.j, (this.h - i) - 1, i);
        l();
    }

    public void f(int i) throws JsonParserException {
        StringBuilder sb;
        int i2;
        this.m.setLength(0);
        while (true) {
            int i3 = 256;
            int iK = k(256);
            if (iK == 0) {
                throw j(null, "String was not terminated before end of input", true);
            }
            for (int i4 = 0; i4 < iK; i4++) {
                char cS = s();
                if (cS == i) {
                    this.m.append(this.j, (this.h - i4) - 1, i4);
                    l();
                    return;
                }
                if (cS == '\\' || (this.l && (cS & 128) != 0)) {
                    this.m.append(this.j, (this.h - i4) - 1, i4);
                    this.h--;
                    while (true) {
                        int iK2 = k(i3);
                        if (iK2 == 0) {
                            throw j(null, "String was not terminated before end of input", true);
                        }
                        int i5 = this.h + iK2;
                        while (true) {
                            int i6 = this.h;
                            if (i6 >= i5) {
                                int i7 = this.k;
                                if (i6 <= i7) {
                                    i3 = 256;
                                    break;
                                } else {
                                    this.h = i7;
                                    throw j(null, "EOF encountered in the middle of a string escape", false);
                                }
                            }
                            char cS2 = s();
                            if (this.l && (cS2 & 128) != 0) {
                                g(cS2);
                                break;
                            }
                            if (cS2 == '\"' || cS2 == '\'') {
                                if (cS2 == i) {
                                    l();
                                    return;
                                }
                                sb = this.m;
                            } else {
                                if (cS2 != '\\') {
                                    this.m.append(cS2);
                                } else {
                                    if (i5 - this.h < 5) {
                                        int iK3 = k(5);
                                        int i8 = this.h;
                                        int i9 = i8 + iK3;
                                        if (this.j[i8] == 'u' && iK3 < 5) {
                                            this.h = this.k;
                                            throw j(null, "EOF encountered in the middle of a string escape", false);
                                        }
                                        i5 = i9;
                                    }
                                    char[] cArr = this.j;
                                    int i10 = this.h;
                                    this.h = i10 + 1;
                                    char c = cArr[i10];
                                    if (c == '\"' || c == '\'' || c == '/' || c == '\\') {
                                        this.m.append(c);
                                    } else if (c == 'b') {
                                        sb = this.m;
                                        cS2 = '\b';
                                    } else if (c == 'f') {
                                        sb = this.m;
                                        cS2 = '\f';
                                    } else if (c == 'n') {
                                        sb = this.m;
                                        cS2 = '\n';
                                    } else if (c == 'r') {
                                        sb = this.m;
                                        cS2 = CharUtils.CR;
                                    } else if (c == 't') {
                                        sb = this.m;
                                        cS2 = '\t';
                                    } else {
                                        if (c != 'u') {
                                            throw j(null, "Invalid escape: \\" + c, false);
                                        }
                                        int i11 = 0;
                                        for (int i12 = 0; i12 < 4; i12++) {
                                            int i13 = i11 << 4;
                                            char[] cArr2 = this.j;
                                            int i14 = this.h;
                                            this.h = i14 + 1;
                                            char c2 = cArr2[i14];
                                            if (c2 >= '0' && c2 <= '9') {
                                                i2 = c2 - '0';
                                            } else if (c2 >= 'A' && c2 <= 'F') {
                                                i2 = c2 - '7';
                                            } else {
                                                if (c2 < 'a' || c2 > 'f') {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append("Expected unicode hex escape character: ");
                                                    sb2.append(c2);
                                                    sb2.append(" (");
                                                    sb2.append((int) c2);
                                                    sb2.append(")");
                                                    throw j(null, sb2.toString(), false);
                                                }
                                                i2 = c2 - 'W';
                                            }
                                            i11 = i13 | i2;
                                        }
                                        sb = this.m;
                                        cS2 = (char) i11;
                                    }
                                }
                                i3 = 256;
                            }
                            sb.append(cS2);
                            i3 = 256;
                        }
                    }
                }
            }
            this.m.append(this.j, this.h - iK, iK);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x01ae A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x01af  */
    public final void g(char c) throws JsonParserException {
        int i;
        k(5);
        int i2 = c & 240;
        if (i2 == 128 || i2 == 144 || i2 == 160 || i2 == 176) {
            throw j(null, "Illegal UTF-8 continuation byte: 0x" + Integer.toHexString(c & 255), false);
        }
        if (i2 != 192) {
            if (i2 != 208) {
                if (i2 == 224) {
                    char[] cArr = this.j;
                    int i3 = this.h;
                    int i4 = i3 + 1;
                    this.h = i4;
                    int i5 = ((c & 15) << 12) | ((cArr[i3] & '?') << 6);
                    this.h = i3 + 2;
                    char c2 = (char) (i5 | (cArr[i4] & '?'));
                    this.d += 2;
                    if ((c2 >= 55296 && c2 <= 56319) || (c2 >= 56320 && c2 <= 57343)) {
                        throw j(null, "Illegal UTF-8 codepoint: 0x" + Integer.toHexString(c2), false);
                    }
                    this.m.append(c2);
                } else if (i2 == 240) {
                    if ((c & 15) >= 5) {
                        throw j(null, "Illegal UTF-8 byte: 0x" + Integer.toHexString(c & 255), false);
                    }
                    int i6 = (c & '\f') >> 2;
                    if (i6 == 0 || i6 == 1) {
                        StringBuilder sb = this.m;
                        char[] cArr2 = this.j;
                        int i7 = this.h;
                        int i8 = i7 + 1;
                        this.h = i8;
                        int i9 = ((c & 7) << 18) | ((cArr2[i7] & '?') << 12);
                        int i10 = i7 + 2;
                        this.h = i10;
                        int i11 = i9 | ((cArr2[i8] & '?') << 6);
                        this.h = i7 + 3;
                        sb.appendCodePoint(i11 | (cArr2[i10] & '?'));
                        i = this.d + 3;
                    } else {
                        if (i6 == 2) {
                            char[] cArr3 = this.j;
                            int i12 = this.h;
                            int i13 = i12 + 1;
                            this.h = i13;
                            int i14 = ((c & 3) << 24) | ((cArr3[i12] & '?') << 18);
                            int i15 = i12 + 2;
                            this.h = i15;
                            int i16 = i14 | ((cArr3[i13] & '?') << 12);
                            int i17 = i12 + 3;
                            this.h = i17;
                            int i18 = i16 | ((cArr3[i15] & '?') << 6);
                            this.h = i12 + 4;
                            throw j(null, "Unable to represent codepoint 0x" + Integer.toHexString(i18 | (cArr3[i17] & '?')) + " in a Java string", false);
                        }
                        if (i6 == 3) {
                            char[] cArr4 = this.j;
                            int i19 = this.h;
                            int i20 = i19 + 1;
                            this.h = i20;
                            int i21 = ((c & 1) << 30) | ((cArr4[i19] & '?') << 24);
                            int i22 = i19 + 2;
                            this.h = i22;
                            int i23 = i21 | ((cArr4[i20] & '?') << 18);
                            int i24 = i19 + 3;
                            this.h = i24;
                            int i25 = i23 | ((cArr4[i22] & '?') << 12);
                            int i26 = i19 + 4;
                            this.h = i26;
                            int i27 = i25 | ((cArr4[i24] & '?') << 6);
                            this.h = i19 + 5;
                            throw j(null, "Unable to represent codepoint 0x" + Integer.toHexString(i27 | (cArr4[i26] & '?')) + " in a Java string", false);
                        }
                    }
                }
                if (this.h > this.k) {
                    throw j(null, "UTF-8 codepoint was truncated", false);
                }
            }
            this.d = i;
            if (this.h > this.k) {
                throw j(null, "UTF-8 codepoint was truncated", false);
            }
        }
        if ((c & 14) == 0) {
            throw j(null, "Illegal UTF-8 byte: 0x" + Integer.toHexString(c & 255), false);
        }
        char[] cArr5 = this.j;
        int i28 = this.h;
        this.h = i28 + 1;
        this.m.append((char) (((c & 31) << 6) | (cArr5[i28] & '?')));
        i = this.d + 1;
        this.d = i;
        if (this.h > this.k) {
            throw j(null, "UTF-8 codepoint was truncated", false);
        }
    }

    public final void h() throws JsonParserException {
        int iK;
        do {
            iK = k(256);
            for (int i = 0; i < iK; i++) {
                char c = this.j[this.h];
                if (!p(c)) {
                    l();
                    return;
                }
                if (c == '\n') {
                    this.a++;
                    this.b = this.h + 1 + this.c;
                    this.d = 0;
                }
                this.h++;
            }
        } while (iK > 0);
        this.g = true;
    }

    public JsonParserException i(char c, char[] cArr, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        String str = "";
        sb.append(cArr == null ? "" : new String(cArr, 0, i));
        StringBuilder sb2 = new StringBuilder(sb.toString());
        while (n(q()) && sb2.length() < 15) {
            sb2.append((char) a());
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Unexpected token '");
        sb3.append((Object) sb2);
        sb3.append("'");
        if (cArr != null) {
            str = ". Did you mean '" + c + new String(cArr) + "'?";
        }
        sb3.append(str);
        return j(null, sb3.toString(), true);
    }

    public JsonParserException j(Exception exc, String str, boolean z) {
        if (z) {
            return new JsonParserException(exc, str + " on line " + this.a + ", char " + this.e, this.a, this.e, this.f);
        }
        int iMax = Math.max(1, ((this.h + this.c) - this.b) - this.d);
        return new JsonParserException(exc, str + " on line " + this.a + ", char " + iMax, this.a, iMax, this.h + this.c);
    }

    public int k(int i) throws JsonParserException {
        int i2;
        int i3 = this.k;
        int i4 = i3 - i;
        int i5 = this.h;
        if (i4 >= i5) {
            return i;
        }
        if (i5 > 0) {
            this.c += i5;
            int i6 = i3 - i5;
            this.k = i6;
            char[] cArr = this.j;
            System.arraycopy(cArr, i5, cArr, 0, i6);
            this.h = 0;
        }
        do {
            try {
                char[] cArr2 = this.j;
                int length = cArr2.length;
                int i7 = this.k;
                if (length <= i7) {
                    throw new IOException("Unexpected internal error");
                }
                int i8 = this.i.read(cArr2, i7, cArr2.length - i7);
                if (i8 <= 0) {
                    return this.k - this.h;
                }
                i2 = this.k + i8;
                this.k = i2;
            } catch (IOException e) {
                throw j(e, "IOException", true);
            }
        } while (i2 <= i);
        return i2 - this.h;
    }

    public void l() {
        if (this.h >= this.k) {
            this.g = r();
        }
    }

    public final void m() throws JsonParserException {
        this.g = r();
        h();
    }

    public boolean n(int i) {
        return (i >= 65 && i <= 90) || (i >= 97 && i <= 122);
    }

    public final boolean o(int i) {
        return (i >= 48 && i <= 57) || i == 101 || i == 69 || i == 46 || i == 43 || i == 45;
    }

    public boolean p(int i) {
        return i == 32 || i == 10 || i == 13 || i == 9;
    }

    public final int q() {
        if (this.g) {
            return -1;
        }
        return this.j[this.h];
    }

    public final boolean r() throws JsonParserException {
        try {
            Reader reader = this.i;
            char[] cArr = this.j;
            int i = reader.read(cArr, 0, cArr.length);
            if (i <= 0) {
                return true;
            }
            this.c += this.k;
            this.h = 0;
            this.k = i;
            return false;
        } catch (IOException e) {
            throw j(e, "IOException", true);
        }
    }

    public final char s() throws JsonParserException {
        char[] cArr = this.j;
        int i = this.h;
        this.h = i + 1;
        char c = cArr[i];
        if (c < ' ') {
            t(c);
        }
        return c;
    }

    public final void t(char c) throws JsonParserException {
        if (c == '\n') {
            this.a++;
            this.b = this.h + 1 + this.c;
            this.d = 0;
        }
        throw j(null, "Strings may not contain control characters: 0x" + Integer.toString(c, 16), false);
    }
}
