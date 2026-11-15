package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kd.g;

final class MinimalEncoder {

    private final String f32202a;

    private final boolean f32203b;

    private final g f32204c;

    private final ErrorCorrectionLevel f32205d;

    private enum VersionSize {
        SMALL("version 1-9"),
        MEDIUM("version 10-26"),
        LARGE("version 27-40");

        private final String description;

        VersionSize(String str) {
            this.description = str;
        }

        @Override
        public String toString() {
            return this.description;
        }
    }

    static class a {

        static final int[] f32206a;

        static final int[] f32207b;

        static {
            int[] iArr = new int[Mode.values().length];
            f32207b = iArr;
            try {
                iArr[Mode.KANJI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32207b[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32207b[Mode.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32207b[Mode.BYTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32207b[Mode.ECI.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[VersionSize.values().length];
            f32206a = iArr2;
            try {
                iArr2[VersionSize.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32206a[VersionSize.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32206a[VersionSize.LARGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private final class b {

        private final Mode f32208a;

        private final int f32209b;

        private final int f32210c;

        private final int f32211d;

        private final b f32212e;

        private final int f32213f;

        b(MinimalEncoder minimalEncoder, Mode mode, int i10, int i11, int i12, b bVar, com.google.zxing.qrcode.decoder.g gVar, a aVar) {
            this(mode, i10, i11, i12, bVar, gVar);
        }

        private b(Mode mode, int i10, int i11, int i12, b bVar, com.google.zxing.qrcode.decoder.g gVar) {
            this.f32208a = mode;
            this.f32209b = i10;
            Mode mode2 = Mode.BYTE;
            int i13 = (mode == mode2 || bVar == null) ? i11 : bVar.f32210c;
            this.f32210c = i13;
            this.f32211d = i12;
            this.f32212e = bVar;
            boolean z10 = false;
            int characterCountBits = bVar != null ? bVar.f32213f : 0;
            if ((mode == mode2 && bVar == null && i13 != 0) || (bVar != null && i13 != bVar.f32210c)) {
                z10 = true;
            }
            characterCountBits = (bVar == null || mode != bVar.f32208a || z10) ? characterCountBits + mode.getCharacterCountBits(gVar) + 4 : characterCountBits;
            int i14 = a.f32207b[mode.ordinal()];
            if (i14 == 1) {
                characterCountBits += 13;
            } else if (i14 == 2) {
                characterCountBits += i12 == 1 ? 6 : 11;
            } else if (i14 == 3) {
                characterCountBits += i12 != 1 ? i12 == 2 ? 7 : 10 : 4;
            } else if (i14 == 4) {
                characterCountBits += MinimalEncoder.this.f32204c.c(MinimalEncoder.this.f32202a.substring(i10, i12 + i10), i11).length * 8;
                if (z10) {
                    characterCountBits += 12;
                }
            }
            this.f32213f = characterCountBits;
        }
    }

    final class c {

        private final List f32215a = new ArrayList();

        private final com.google.zxing.qrcode.decoder.g f32216b;

        final class a {

            private final Mode f32218a;

            private final int f32219b;

            private final int f32220c;

            private final int f32221d;

            a(Mode mode, int i10, int i11, int i12) {
                this.f32218a = mode;
                this.f32219b = i10;
                this.f32220c = i11;
                this.f32221d = i12;
            }

            public void d(kd.a aVar) {
                aVar.c(this.f32218a.getBits(), 4);
                if (this.f32221d > 0) {
                    aVar.c(e(), this.f32218a.getCharacterCountBits(c.this.f32216b));
                }
                if (this.f32218a == Mode.ECI) {
                    aVar.c(MinimalEncoder.this.f32204c.e(this.f32220c), 8);
                } else if (this.f32221d > 0) {
                    String str = MinimalEncoder.this.f32202a;
                    int i10 = this.f32219b;
                    com.google.zxing.qrcode.encoder.b.c(str.substring(i10, this.f32221d + i10), this.f32218a, aVar, MinimalEncoder.this.f32204c.d(this.f32220c));
                }
            }

            private int e() {
                if (this.f32218a != Mode.BYTE) {
                    return this.f32221d;
                }
                g gVar = MinimalEncoder.this.f32204c;
                String str = MinimalEncoder.this.f32202a;
                int i10 = this.f32219b;
                return gVar.c(str.substring(i10, this.f32221d + i10), this.f32220c).length;
            }

            public int f(com.google.zxing.qrcode.decoder.g gVar) {
                int iE;
                int i10;
                int characterCountBits = this.f32218a.getCharacterCountBits(gVar);
                int i11 = characterCountBits + 4;
                int i12 = a.f32207b[this.f32218a.ordinal()];
                if (i12 != 1) {
                    int i13 = 0;
                    if (i12 == 2) {
                        int i14 = this.f32221d;
                        i10 = i11 + ((i14 / 2) * 11);
                        if (i14 % 2 == 1) {
                            i13 = 6;
                        }
                    } else if (i12 == 3) {
                        int i15 = this.f32221d;
                        i10 = i11 + ((i15 / 3) * 10);
                        int i16 = i15 % 3;
                        if (i16 == 1) {
                            i13 = 4;
                        } else if (i16 == 2) {
                            i13 = 7;
                        }
                    } else {
                        if (i12 != 4) {
                            return i12 != 5 ? i11 : characterCountBits + 12;
                        }
                        iE = e() * 8;
                    }
                    return i10 + i13;
                }
                iE = this.f32221d * 13;
                return i11 + iE;
            }

            private String g(String str) {
                StringBuilder sb2 = new StringBuilder();
                for (int i10 = 0; i10 < str.length(); i10++) {
                    if (str.charAt(i10) < ' ' || str.charAt(i10) > '~') {
                        sb2.append('.');
                    } else {
                        sb2.append(str.charAt(i10));
                    }
                }
                return sb2.toString();
            }

            public String toString() {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f32218a);
                sb2.append('(');
                if (this.f32218a == Mode.ECI) {
                    sb2.append(MinimalEncoder.this.f32204c.d(this.f32220c).displayName());
                } else {
                    String str = MinimalEncoder.this.f32202a;
                    int i10 = this.f32219b;
                    sb2.append(g(str.substring(i10, this.f32221d + i10)));
                }
                sb2.append(')');
                return sb2.toString();
            }
        }

        c(com.google.zxing.qrcode.decoder.g gVar, b bVar) {
            int i10;
            int i11;
            int i12 = 0;
            boolean z10 = false;
            while (true) {
                i10 = 1;
                if (bVar == null) {
                    break;
                }
                int i13 = i12 + bVar.f32211d;
                b bVar2 = bVar.f32212e;
                boolean z11 = (bVar.f32208a == Mode.BYTE && bVar2 == null && bVar.f32210c != 0) || !(bVar2 == null || bVar.f32210c == bVar2.f32210c);
                z10 = z11 ? true : z10;
                if (bVar2 == null || bVar2.f32208a != bVar.f32208a || z11) {
                    this.f32215a.add(0, new a(bVar.f32208a, bVar.f32209b, bVar.f32210c, i13));
                    i13 = 0;
                }
                if (z11) {
                    this.f32215a.add(0, new a(Mode.ECI, bVar.f32209b, bVar.f32210c, 0));
                }
                bVar = bVar2;
                i12 = i13;
            }
            if (MinimalEncoder.this.f32203b) {
                a aVar = (a) this.f32215a.get(0);
                if (aVar != null) {
                    Mode mode = aVar.f32218a;
                    Mode mode2 = Mode.ECI;
                    if (mode != mode2 && z10) {
                        this.f32215a.add(0, new a(mode2, 0, 0, 0));
                    }
                }
                this.f32215a.add(((a) this.f32215a.get(0)).f32218a == Mode.ECI ? 1 : 0, new a(Mode.FNC1_FIRST_POSITION, 0, 0, 0));
            }
            int iJ = gVar.j();
            int i14 = a.f32206a[MinimalEncoder.m(gVar).ordinal()];
            if (i14 == 1) {
                i11 = 9;
            } else if (i14 != 2) {
                i10 = 27;
                i11 = 40;
            } else {
                i10 = 10;
                i11 = 26;
            }
            int iD = d(gVar);
            while (iJ < i11 && !com.google.zxing.qrcode.encoder.b.v(iD, com.google.zxing.qrcode.decoder.g.i(iJ), MinimalEncoder.this.f32205d)) {
                iJ++;
            }
            while (iJ > i10 && com.google.zxing.qrcode.encoder.b.v(iD, com.google.zxing.qrcode.decoder.g.i(iJ - 1), MinimalEncoder.this.f32205d)) {
                iJ--;
            }
            this.f32216b = com.google.zxing.qrcode.decoder.g.i(iJ);
        }

        private int d(com.google.zxing.qrcode.decoder.g gVar) {
            Iterator it = this.f32215a.iterator();
            int iF = 0;
            while (it.hasNext()) {
                iF += ((a) it.next()).f(gVar);
            }
            return iF;
        }

        void b(kd.a aVar) {
            Iterator it = this.f32215a.iterator();
            while (it.hasNext()) {
                ((a) it.next()).d(aVar);
            }
        }

        int c() {
            return d(this.f32216b);
        }

        com.google.zxing.qrcode.decoder.g e() {
            return this.f32216b;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            a aVar = null;
            for (a aVar2 : this.f32215a) {
                if (aVar != null) {
                    sb2.append(",");
                }
                sb2.append(aVar2.toString());
                aVar = aVar2;
            }
            return sb2.toString();
        }
    }

    MinimalEncoder(String str, Charset charset, boolean z10, ErrorCorrectionLevel errorCorrectionLevel) {
        this.f32202a = str;
        this.f32203b = z10;
        this.f32204c = new g(str, charset, -1);
        this.f32205d = errorCorrectionLevel;
    }

    static c i(String str, com.google.zxing.qrcode.decoder.g gVar, Charset charset, boolean z10, ErrorCorrectionLevel errorCorrectionLevel) {
        return new MinimalEncoder(str, charset, z10, errorCorrectionLevel).h(gVar);
    }

    static int k(Mode mode) {
        int i10;
        if (mode == null || (i10 = a.f32207b[mode.ordinal()]) == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 == 4) {
            return 3;
        }
        throw new IllegalStateException("Illegal mode " + mode);
    }

    static com.google.zxing.qrcode.decoder.g l(VersionSize versionSize) {
        int i10 = a.f32206a[versionSize.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? com.google.zxing.qrcode.decoder.g.i(40) : com.google.zxing.qrcode.decoder.g.i(26);
        }
        return com.google.zxing.qrcode.decoder.g.i(9);
    }

    static VersionSize m(com.google.zxing.qrcode.decoder.g gVar) {
        if (gVar.j() <= 9) {
            return VersionSize.SMALL;
        }
        return gVar.j() <= 26 ? VersionSize.MEDIUM : VersionSize.LARGE;
    }

    static boolean n(char c10) {
        return com.google.zxing.qrcode.encoder.b.p(c10) != -1;
    }

    static boolean o(char c10) {
        return com.google.zxing.qrcode.encoder.b.s(String.valueOf(c10));
    }

    static boolean p(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    void e(b[][][] bVarArr, int i10, b bVar) {
        b[] bVarArr2 = bVarArr[i10 + bVar.f32211d][bVar.f32210c];
        int iK = k(bVar.f32208a);
        b bVar2 = bVarArr2[iK];
        if (bVar2 == null || bVar2.f32213f > bVar.f32213f) {
            bVarArr2[iK] = bVar;
        }
    }

    void f(com.google.zxing.qrcode.decoder.g gVar, b[][][] bVarArr, int i10, b bVar) {
        int i11;
        int iG = this.f32204c.g();
        int iF = this.f32204c.f();
        if (iF < 0 || !this.f32204c.a(this.f32202a.charAt(i10), iF)) {
            iF = 0;
        } else {
            iG = iF + 1;
        }
        int i12 = iG;
        for (int i13 = iF; i13 < i12; i13++) {
            if (this.f32204c.a(this.f32202a.charAt(i10), i13)) {
                e(bVarArr, i10, new b(this, Mode.BYTE, i10, i13, 1, bVar, gVar, null));
            }
        }
        Mode mode = Mode.KANJI;
        if (g(mode, this.f32202a.charAt(i10))) {
            e(bVarArr, i10, new b(this, mode, i10, 0, 1, bVar, gVar, null));
        }
        int length = this.f32202a.length();
        Mode mode2 = Mode.ALPHANUMERIC;
        if (g(mode2, this.f32202a.charAt(i10))) {
            int i14 = i10 + 1;
            e(bVarArr, i10, new b(this, mode2, i10, 0, (i14 >= length || !g(mode2, this.f32202a.charAt(i14))) ? 1 : 2, bVar, gVar, null));
        }
        Mode mode3 = Mode.NUMERIC;
        if (g(mode3, this.f32202a.charAt(i10))) {
            int i15 = i10 + 1;
            if (i15 >= length || !g(mode3, this.f32202a.charAt(i15))) {
                i11 = 1;
            } else {
                int i16 = i10 + 2;
                i11 = (i16 >= length || !g(mode3, this.f32202a.charAt(i16))) ? 2 : 3;
            }
            e(bVarArr, i10, new b(this, mode3, i10, 0, i11, bVar, gVar, null));
        }
    }

    boolean g(Mode mode, char c10) {
        int i10 = a.f32207b[mode.ordinal()];
        if (i10 == 1) {
            return o(c10);
        }
        if (i10 == 2) {
            return n(c10);
        }
        if (i10 != 3) {
            return i10 == 4;
        }
        return p(c10);
    }

    c h(com.google.zxing.qrcode.decoder.g gVar) throws WriterException {
        if (gVar != null) {
            c cVarJ = j(gVar);
            if (com.google.zxing.qrcode.encoder.b.v(cVarJ.c(), l(m(cVarJ.e())), this.f32205d)) {
                return cVarJ;
            }
            throw new WriterException("Data too big for version" + gVar);
        }
        com.google.zxing.qrcode.decoder.g[] gVarArr = {l(VersionSize.SMALL), l(VersionSize.MEDIUM), l(VersionSize.LARGE)};
        c[] cVarArr = {j(gVarArr[0]), j(gVarArr[1]), j(gVarArr[2])};
        int i10 = Integer.MAX_VALUE;
        int i11 = -1;
        for (int i12 = 0; i12 < 3; i12++) {
            int iC = cVarArr[i12].c();
            if (com.google.zxing.qrcode.encoder.b.v(iC, gVarArr[i12], this.f32205d) && iC < i10) {
                i11 = i12;
                i10 = iC;
            }
        }
        if (i11 >= 0) {
            return cVarArr[i11];
        }
        throw new WriterException("Data too big for any version");
    }

    c j(com.google.zxing.qrcode.decoder.g gVar) throws WriterException {
        int length = this.f32202a.length();
        b[][][] bVarArr = (b[][][]) Array.newInstance((Class<?>) b.class, length + 1, this.f32204c.g(), 4);
        f(gVar, bVarArr, 0, null);
        for (int i10 = 1; i10 <= length; i10++) {
            for (int i11 = 0; i11 < this.f32204c.g(); i11++) {
                for (int i12 = 0; i12 < 4; i12++) {
                    b bVar = bVarArr[i10][i11][i12];
                    if (bVar != null && i10 < length) {
                        f(gVar, bVarArr, i10, bVar);
                    }
                }
            }
        }
        int i13 = -1;
        int i14 = Integer.MAX_VALUE;
        int i15 = -1;
        for (int i16 = 0; i16 < this.f32204c.g(); i16++) {
            for (int i17 = 0; i17 < 4; i17++) {
                b bVar2 = bVarArr[length][i16][i17];
                if (bVar2 != null && bVar2.f32213f < i14) {
                    i14 = bVar2.f32213f;
                    i13 = i16;
                    i15 = i17;
                }
            }
        }
        if (i13 >= 0) {
            return new c(gVar, bVarArr[length][i13][i15]);
        }
        throw new WriterException("Internal error: failed to encode \"" + this.f32202a + "\"");
    }
}
