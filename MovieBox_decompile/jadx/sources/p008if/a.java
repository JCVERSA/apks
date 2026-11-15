package p008if;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import javax.security.auth.x500.X500Principal;

final class a {

    private final String f62078a;

    private final int f62079b;

    private int f62080c;

    private int f62081d;

    private int f62082e;

    private int f62083f;

    private char[] f62084g;

    public a(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f62078a = name;
        this.f62079b = name.length();
    }

    private String a() {
        int i10;
        int i11;
        char c10;
        int i12 = this.f62080c;
        this.f62081d = i12;
        this.f62082e = i12;
        while (true) {
            int i13 = this.f62080c;
            if (i13 >= this.f62079b) {
                char[] cArr = this.f62084g;
                int i14 = this.f62081d;
                return new String(cArr, i14, this.f62082e - i14);
            }
            char[] cArr2 = this.f62084g;
            char c11 = cArr2[i13];
            if (c11 != ' ') {
                if (c11 != ';') {
                    if (c11 == '\\') {
                        int i15 = this.f62082e;
                        this.f62082e = i15 + 1;
                        cArr2[i15] = d();
                        this.f62080c++;
                    } else if (c11 != '+' && c11 != ',') {
                        int i16 = this.f62082e;
                        this.f62082e = i16 + 1;
                        cArr2[i16] = c11;
                        this.f62080c = i13 + 1;
                    }
                }
                int i17 = this.f62081d;
                return new String(cArr2, i17, this.f62082e - i17);
            }
            int i18 = this.f62082e;
            this.f62083f = i18;
            this.f62080c = i13 + 1;
            this.f62082e = i18 + 1;
            cArr2[i18] = ' ';
            while (true) {
                i10 = this.f62080c;
                i11 = this.f62079b;
                if (i10 >= i11) {
                    break;
                }
                char[] cArr3 = this.f62084g;
                if (cArr3[i10] != ' ') {
                    break;
                }
                int i19 = this.f62082e;
                this.f62082e = i19 + 1;
                cArr3[i19] = ' ';
                this.f62080c = i10 + 1;
            }
            if (i10 == i11 || (c10 = this.f62084g[i10]) == ',' || c10 == '+' || c10 == ';') {
                char[] cArr4 = this.f62084g;
                int i20 = this.f62081d;
                return new String(cArr4, i20, this.f62083f - i20);
            }
        }
    }

    private int c(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        if (i13 >= this.f62079b) {
            throw new IllegalStateException("Malformed DN: " + this.f62078a);
        }
        char[] cArr = this.f62084g;
        char c10 = cArr[i10];
        if (c10 >= '0' && c10 <= '9') {
            i11 = c10 - '0';
        } else if (c10 >= 'a' && c10 <= 'f') {
            i11 = c10 - 'W';
        } else {
            if (c10 < 'A' || c10 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f62078a);
            }
            i11 = c10 - '7';
        }
        char c11 = cArr[i13];
        if (c11 >= '0' && c11 <= '9') {
            i12 = c11 - '0';
        } else if (c11 >= 'a' && c11 <= 'f') {
            i12 = c11 - 'W';
        } else {
            if (c11 < 'A' || c11 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f62078a);
            }
            i12 = c11 - '7';
        }
        return (i11 << 4) + i12;
    }

    private char d() {
        int i10 = this.f62080c + 1;
        this.f62080c = i10;
        if (i10 == this.f62079b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f62078a);
        }
        char c10 = this.f62084g[i10];
        if (c10 == ' ' || c10 == '%' || c10 == '\\' || c10 == '_' || c10 == '\"' || c10 == '#') {
            return c10;
        }
        switch (c10) {
            case '*':
            case '+':
            case ',':
                return c10;
            default:
                switch (c10) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        return c10;
                    default:
                        return e();
                }
        }
    }

    private char e() {
        int i10;
        int i11;
        int iC = c(this.f62080c);
        this.f62080c++;
        if (iC < 128) {
            return (char) iC;
        }
        if (iC < 192 || iC > 247) {
            return '?';
        }
        if (iC <= 223) {
            i10 = iC & 31;
            i11 = 1;
        } else if (iC <= 239) {
            i10 = iC & 15;
            i11 = 2;
        } else {
            i10 = iC & 7;
            i11 = 3;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.f62080c;
            int i14 = i13 + 1;
            this.f62080c = i14;
            if (i14 == this.f62079b || this.f62084g[i14] != '\\') {
                return '?';
            }
            int i15 = i13 + 2;
            this.f62080c = i15;
            int iC2 = c(i15);
            this.f62080c++;
            if ((iC2 & PsExtractor.AUDIO_STREAM) != 128) {
                return '?';
            }
            i10 = (i10 << 6) + (iC2 & 63);
        }
        return (char) i10;
    }

    private String f() {
        char[] cArr;
        char c10;
        int i10 = this.f62080c;
        if (i10 + 4 >= this.f62079b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f62078a);
        }
        this.f62081d = i10;
        this.f62080c = i10 + 1;
        while (true) {
            int i11 = this.f62080c;
            if (i11 == this.f62079b || (c10 = (cArr = this.f62084g)[i11]) == '+' || c10 == ',' || c10 == ';') {
                this.f62082e = i11;
                break;
            }
            if (c10 == ' ') {
                this.f62082e = i11;
                this.f62080c = i11 + 1;
                while (true) {
                    int i12 = this.f62080c;
                    if (i12 >= this.f62079b || this.f62084g[i12] != ' ') {
                        break;
                    }
                    this.f62080c = i12 + 1;
                }
            } else {
                if (c10 >= 'A' && c10 <= 'F') {
                    cArr[i11] = (char) (c10 + ' ');
                }
                this.f62080c = i11 + 1;
            }
        }
        int i13 = this.f62082e;
        int i14 = this.f62081d;
        int i15 = i13 - i14;
        if (i15 < 5 || (i15 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f62078a);
        }
        int i16 = i15 / 2;
        byte[] bArr = new byte[i16];
        int i17 = i14 + 1;
        for (int i18 = 0; i18 < i16; i18++) {
            bArr[i18] = (byte) c(i17);
            i17 += 2;
        }
        return new String(this.f62084g, this.f62081d, i15);
    }

    private String g() {
        int i10;
        int i11;
        int i12;
        int i13;
        char c10;
        int i14;
        int i15;
        char c11;
        char c12;
        while (true) {
            i10 = this.f62080c;
            i11 = this.f62079b;
            if (i10 >= i11 || this.f62084g[i10] != ' ') {
                break;
            }
            this.f62080c = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.f62081d = i10;
        this.f62080c = i10 + 1;
        while (true) {
            i12 = this.f62080c;
            i13 = this.f62079b;
            if (i12 >= i13 || (c12 = this.f62084g[i12]) == '=' || c12 == ' ') {
                break;
            }
            this.f62080c = i12 + 1;
        }
        if (i12 >= i13) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f62078a);
        }
        this.f62082e = i12;
        if (this.f62084g[i12] == ' ') {
            while (true) {
                i14 = this.f62080c;
                i15 = this.f62079b;
                if (i14 >= i15 || (c11 = this.f62084g[i14]) == '=' || c11 != ' ') {
                    break;
                }
                this.f62080c = i14 + 1;
            }
            if (this.f62084g[i14] != '=' || i14 == i15) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f62078a);
            }
        }
        this.f62080c++;
        while (true) {
            int i16 = this.f62080c;
            if (i16 >= this.f62079b || this.f62084g[i16] != ' ') {
                break;
            }
            this.f62080c = i16 + 1;
        }
        int i17 = this.f62082e;
        int i18 = this.f62081d;
        if (i17 - i18 > 4) {
            char[] cArr = this.f62084g;
            if (cArr[i18 + 3] == '.' && (((c10 = cArr[i18]) == 'O' || c10 == 'o') && ((cArr[i18 + 1] == 'I' || cArr[i18 + 1] == 'i') && (cArr[i18 + 2] == 'D' || cArr[i18 + 2] == 'd')))) {
                this.f62081d = i18 + 4;
            }
        }
        char[] cArr2 = this.f62084g;
        int i19 = this.f62081d;
        return new String(cArr2, i19, i17 - i19);
    }

    private String h() {
        int i10 = this.f62080c + 1;
        this.f62080c = i10;
        this.f62081d = i10;
        this.f62082e = i10;
        while (true) {
            int i11 = this.f62080c;
            if (i11 == this.f62079b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f62078a);
            }
            char[] cArr = this.f62084g;
            char c10 = cArr[i11];
            if (c10 == '\"') {
                this.f62080c = i11 + 1;
                while (true) {
                    int i12 = this.f62080c;
                    if (i12 >= this.f62079b || this.f62084g[i12] != ' ') {
                        break;
                    }
                    this.f62080c = i12 + 1;
                }
                char[] cArr2 = this.f62084g;
                int i13 = this.f62081d;
                return new String(cArr2, i13, this.f62082e - i13);
            }
            if (c10 == '\\') {
                cArr[this.f62082e] = d();
            } else {
                cArr[this.f62082e] = c10;
            }
            this.f62080c++;
            this.f62082e++;
        }
    }

    public String b(String str) {
        String strH;
        this.f62080c = 0;
        this.f62081d = 0;
        this.f62082e = 0;
        this.f62083f = 0;
        this.f62084g = this.f62078a.toCharArray();
        String strG = g();
        if (strG == null) {
            return null;
        }
        do {
            int i10 = this.f62080c;
            if (i10 == this.f62079b) {
                return null;
            }
            char c10 = this.f62084g[i10];
            if (c10 == '\"') {
                strH = h();
            } else if (c10 != '#') {
                strH = (c10 == '+' || c10 == ',' || c10 == ';') ? "" : a();
            } else {
                strH = f();
            }
            if (str.equalsIgnoreCase(strG)) {
                return strH;
            }
            int i11 = this.f62080c;
            if (i11 >= this.f62079b) {
                return null;
            }
            char c11 = this.f62084g[i11];
            if (c11 != ',' && c11 != ';' && c11 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f62078a);
            }
            this.f62080c = i11 + 1;
            strG = g();
        } while (strG != null);
        throw new IllegalStateException("Malformed DN: " + this.f62078a);
    }
}
