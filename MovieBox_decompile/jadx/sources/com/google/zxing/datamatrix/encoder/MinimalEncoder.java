package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import kd.m;

public abstract class MinimalEncoder {

    static final char[] f32052a = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};

    enum Mode {
        ASCII,
        C40,
        TEXT,
        X12,
        EDF,
        B256
    }

    static class a {

        static final int[] f32053a;

        static final int[] f32054b;

        static {
            int[] iArr = new int[SymbolShapeHint.values().length];
            f32054b = iArr;
            try {
                iArr[SymbolShapeHint.FORCE_SQUARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32054b[SymbolShapeHint.FORCE_RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Mode.values().length];
            f32053a = iArr2;
            try {
                iArr2[Mode.ASCII.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32053a[Mode.B256.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32053a[Mode.C40.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32053a[Mode.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32053a[Mode.X12.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32053a[Mode.EDF.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private static final class b {

        private static final int[] f32055g = {3, 5, 8, 10, 12, 16, 18, 22, 30, 32, 36, 44, 49, 62, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 144, 174, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};

        private static final int[] f32056h = {3, 5, 8, 12, 18, 22, 30, 36, 44, 62, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 144, 174, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};

        private static final int[] f32057i = {5, 10, 16, 33, 32, 49};

        private final c f32058a;

        private final Mode f32059b;

        private final int f32060c;

        private final int f32061d;

        private final b f32062e;

        private final int f32063f;

        b(c cVar, Mode mode, int i10, int i11, b bVar, a aVar) {
            this(cVar, mode, i10, i11, bVar);
        }

        static byte[] h(int i10) {
            return new byte[]{(byte) i10};
        }

        static byte[] i(int i10, int i11) {
            return new byte[]{(byte) i10, (byte) i11};
        }

        private static int j(boolean z10, int i10, char c10, int i11) {
            if (c10 == i11) {
                return 27;
            }
            if (z10) {
                if (c10 <= 31) {
                    return c10;
                }
                if (c10 == ' ') {
                    return 3;
                }
                if (c10 <= '/') {
                    return c10 - '!';
                }
                if (c10 <= '9') {
                    return c10 - ',';
                }
                if (c10 <= '@') {
                    return c10 - '+';
                }
                if (c10 <= 'Z') {
                    return c10 - '3';
                }
                if (c10 <= '_') {
                    return c10 - 'E';
                }
                return c10 <= 127 ? c10 - '`' : c10;
            }
            if (c10 != 0) {
                if (i10 == 0 && c10 <= 3) {
                    return c10 - 1;
                }
                if (i10 == 1 && c10 <= 31) {
                    return c10;
                }
                if (c10 == ' ') {
                    return 3;
                }
                if (c10 >= '!' && c10 <= '/') {
                    return c10 - '!';
                }
                if (c10 >= '0' && c10 <= '9') {
                    return c10 - ',';
                }
                if (c10 >= ':' && c10 <= '@') {
                    return c10 - '+';
                }
                if (c10 >= 'A' && c10 <= 'Z') {
                    return c10 - '@';
                }
                if (c10 >= '[' && c10 <= '_') {
                    return c10 - 'E';
                }
                if (c10 != '`') {
                    if (c10 < 'a' || c10 > 'z') {
                        return (c10 < '{' || c10 > 127) ? c10 : c10 - '`';
                    }
                    return c10 - 'S';
                }
            }
            return 0;
        }

        static int v(char c10, boolean z10, int i10) {
            if (!(z10 && MinimalEncoder.l(c10)) && (z10 || !MinimalEncoder.n(c10))) {
                return (!(z10 && MinimalEncoder.m(c10, i10)) && (z10 || !MinimalEncoder.o(c10, i10))) ? 2 : 1;
            }
            return 0;
        }

        private static int w(char c10) {
            if (c10 == '\r') {
                return 0;
            }
            if (c10 == '*') {
                return 1;
            }
            if (c10 == '>') {
                return 2;
            }
            if (c10 == ' ') {
                return 3;
            }
            if (c10 < '0' || c10 > '9') {
                return (c10 < 'A' || c10 > 'Z') ? c10 : c10 - '3';
            }
            return c10 - ',';
        }

        static void y(byte[] bArr, int i10, int i11, int i12, int i13) {
            int i14 = ((i11 & 255) * 1600) + ((i12 & 255) * 40) + (i13 & 255) + 1;
            bArr[i10] = (byte) (i14 / 256);
            bArr[i10 + 1] = (byte) (i14 % 256);
        }

        int g() {
            int i10 = 0;
            for (b bVar = this; bVar != null && bVar.f32059b == Mode.B256 && i10 <= 250; bVar = bVar.f32062e) {
                i10++;
            }
            return i10;
        }

        byte[] k(boolean z10, int i10) {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < this.f32061d; i11++) {
                char cCharAt = this.f32058a.charAt(this.f32060c + i11);
                if ((z10 && g.h(cCharAt)) || (!z10 && g.j(cCharAt))) {
                    arrayList.add(Byte.valueOf((byte) j(z10, 0, cCharAt, i10)));
                } else if (MinimalEncoder.k(cCharAt, i10)) {
                    char c10 = (char) ((cCharAt & 255) - 128);
                    if (!(z10 && g.h(c10)) && (z10 || !g.j(c10))) {
                        arrayList.add((byte) 1);
                        arrayList.add((byte) 30);
                        int iV = v(c10, z10, i10);
                        arrayList.add(Byte.valueOf((byte) iV));
                        arrayList.add(Byte.valueOf((byte) j(z10, iV, c10, i10)));
                    } else {
                        arrayList.add((byte) 1);
                        arrayList.add((byte) 30);
                        arrayList.add(Byte.valueOf((byte) j(z10, 0, c10, i10)));
                    }
                } else {
                    int iV2 = v(cCharAt, z10, i10);
                    arrayList.add(Byte.valueOf((byte) iV2));
                    arrayList.add(Byte.valueOf((byte) j(z10, iV2, cCharAt, i10)));
                }
            }
            if (arrayList.size() % 3 != 0) {
                arrayList.add((byte) 0);
            }
            byte[] bArr = new byte[(arrayList.size() / 3) * 2];
            int i12 = 0;
            for (int i13 = 0; i13 < arrayList.size(); i13 += 3) {
                y(bArr, i12, ((Byte) arrayList.get(i13)).byteValue() & 255, ((Byte) arrayList.get(i13 + 1)).byteValue() & 255, ((Byte) arrayList.get(i13 + 2)).byteValue() & 255);
                i12 += 2;
            }
            return bArr;
        }

        int l(int i10) {
            return r(i10) - i10;
        }

        byte[] m() {
            switch (a.f32053a[this.f32059b.ordinal()]) {
                case 1:
                    if (this.f32058a.a(this.f32060c)) {
                        return i(241, this.f32058a.b(this.f32060c) + 1);
                    }
                    if (MinimalEncoder.k(this.f32058a.charAt(this.f32060c), this.f32058a.f())) {
                        return i(235, this.f32058a.charAt(this.f32060c) - 127);
                    }
                    if (this.f32061d == 2) {
                        return h(((this.f32058a.charAt(this.f32060c) - '0') * 10) + this.f32058a.charAt(this.f32060c + 1) + 82);
                    }
                    return this.f32058a.h(this.f32060c) ? h(232) : h(this.f32058a.charAt(this.f32060c) + 1);
                case 2:
                    return h(this.f32058a.charAt(this.f32060c));
                case 3:
                    return k(true, this.f32058a.f());
                case 4:
                    return k(false, this.f32058a.f());
                case 5:
                    return x();
                case 6:
                    return n();
                default:
                    return new byte[0];
            }
        }

        byte[] n() {
            int iCeil = (int) Math.ceil(((double) this.f32061d) / 4.0d);
            byte[] bArr = new byte[iCeil * 3];
            int i10 = this.f32060c;
            int iMin = Math.min((this.f32061d + i10) - 1, this.f32058a.length() - 1);
            for (int i11 = 0; i11 < iCeil; i11 += 3) {
                int[] iArr = new int[4];
                for (int i12 = 0; i12 < 4; i12++) {
                    if (i10 <= iMin) {
                        iArr[i12] = this.f32058a.charAt(i10) & '?';
                        i10++;
                    } else {
                        iArr[i12] = i10 == iMin + 1 ? 31 : 0;
                    }
                }
                int i13 = (iArr[0] << 18) | (iArr[1] << 12) | (iArr[2] << 6) | iArr[3];
                bArr[i11] = (byte) ((i13 >> 16) & 255);
                bArr[i11 + 1] = (byte) ((i13 >> 8) & 255);
                bArr[i11 + 2] = (byte) (i13 & 255);
            }
            return bArr;
        }

        Mode o() {
            if (this.f32059b == Mode.EDF) {
                if (this.f32061d < 4) {
                    return Mode.ASCII;
                }
                int iP = p();
                if (iP > 0 && l(this.f32063f + iP) <= 2 - iP) {
                    return Mode.ASCII;
                }
            }
            Mode mode = this.f32059b;
            if (mode == Mode.C40 || mode == Mode.TEXT || mode == Mode.X12) {
                if (this.f32060c + this.f32061d >= this.f32058a.length() && l(this.f32063f) == 0) {
                    return Mode.ASCII;
                }
                if (p() == 1 && l(this.f32063f + 1) == 0) {
                    return Mode.ASCII;
                }
            }
            return this.f32059b;
        }

        int p() {
            int length = this.f32058a.length();
            int i10 = this.f32060c + this.f32061d;
            int i11 = length - i10;
            if (i11 <= 4 && i10 < length) {
                if (i11 == 1) {
                    return MinimalEncoder.k(this.f32058a.charAt(i10), this.f32058a.f()) ? 0 : 1;
                }
                if (i11 == 2) {
                    if (!MinimalEncoder.k(this.f32058a.charAt(i10), this.f32058a.f())) {
                        int i12 = i10 + 1;
                        if (!MinimalEncoder.k(this.f32058a.charAt(i12), this.f32058a.f())) {
                            return (g.f(this.f32058a.charAt(i10)) && g.f(this.f32058a.charAt(i12))) ? 1 : 2;
                        }
                    }
                    return 0;
                }
                if (i11 == 3) {
                    if (g.f(this.f32058a.charAt(i10)) && g.f(this.f32058a.charAt(i10 + 1)) && !MinimalEncoder.k(this.f32058a.charAt(i10 + 2), this.f32058a.f())) {
                        return 2;
                    }
                    return (g.f(this.f32058a.charAt(i10 + 1)) && g.f(this.f32058a.charAt(i10 + 2)) && !MinimalEncoder.k(this.f32058a.charAt(i10), this.f32058a.f())) ? 2 : 0;
                }
                if (g.f(this.f32058a.charAt(i10)) && g.f(this.f32058a.charAt(i10 + 1)) && g.f(this.f32058a.charAt(i10 + 2)) && g.f(this.f32058a.charAt(i10 + 3))) {
                    return 2;
                }
            }
            return 0;
        }

        byte[] q() {
            int[] iArr = a.f32053a;
            switch (iArr[t().ordinal()]) {
                case 1:
                case 2:
                    int i10 = iArr[this.f32059b.ordinal()];
                    if (i10 == 2) {
                        return h(231);
                    }
                    if (i10 == 3) {
                        return h(230);
                    }
                    if (i10 == 4) {
                        return h(239);
                    }
                    if (i10 == 5) {
                        return h(238);
                    }
                    if (i10 == 6) {
                        return h(240);
                    }
                    break;
                case 3:
                case 4:
                case 5:
                    if (this.f32059b != t()) {
                        switch (iArr[this.f32059b.ordinal()]) {
                            case 1:
                                return h(254);
                            case 2:
                                return i(254, 231);
                            case 3:
                                return i(254, 230);
                            case 4:
                                return i(254, 239);
                            case 5:
                                return i(254, 238);
                            case 6:
                                return i(254, 240);
                        }
                    }
                    break;
            }
            return new byte[0];
        }

        int r(int i10) {
            int i11 = a.f32054b[this.f32058a.l().ordinal()];
            if (i11 == 1) {
                for (int i12 : f32056h) {
                    if (i12 >= i10) {
                        return i12;
                    }
                }
            } else if (i11 == 2) {
                for (int i13 : f32057i) {
                    if (i13 >= i10) {
                        return i13;
                    }
                }
            }
            for (int i14 : f32055g) {
                if (i14 >= i10) {
                    return i14;
                }
            }
            int[] iArr = f32055g;
            return iArr[iArr.length - 1];
        }

        Mode s() {
            return this.f32059b;
        }

        Mode t() {
            b bVar = this.f32062e;
            return bVar == null ? Mode.ASCII : bVar.o();
        }

        Mode u() {
            b bVar = this.f32062e;
            return bVar == null ? Mode.ASCII : bVar.f32059b;
        }

        byte[] x() {
            int i10 = (this.f32061d / 3) * 2;
            byte[] bArr = new byte[i10];
            for (int i11 = 0; i11 < i10; i11 += 2) {
                int i12 = (i11 / 2) * 3;
                y(bArr, i11, w(this.f32058a.charAt(this.f32060c + i12)), w(this.f32058a.charAt(this.f32060c + i12 + 1)), w(this.f32058a.charAt(this.f32060c + i12 + 2)));
            }
            return bArr;
        }

        /* JADX WARN: Code duplicated, block: B:42:0x0073 A[PHI: r10
          0x0073: PHI (r10v12 int) = (r10v8 int), (r10v8 int), (r10v8 int), (r10v15 int), (r10v15 int), (r10v15 int) binds: [B:55:0x0093, B:57:0x0097, B:59:0x009b, B:38:0x006b, B:40:0x006f, B:41:0x0071] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:43:0x0076 A[PHI: r10
          0x0076: PHI (r10v10 int) = (r10v5 int), (r10v5 int), (r10v5 int), (r10v8 int), (r10v15 int), (r10v15 int) binds: [B:69:0x00bb, B:71:0x00bf, B:73:0x00c3, B:52:0x008e, B:32:0x0060, B:34:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
        private b(c cVar, Mode mode, int i10, int i11, b bVar) {
            this.f32058a = cVar;
            this.f32059b = mode;
            this.f32060c = i10;
            this.f32061d = i11;
            this.f32062e = bVar;
            int iJ = bVar != null ? bVar.f32063f : 0;
            Mode modeT = t();
            switch (a.f32053a[mode.ordinal()]) {
                case 1:
                    iJ = (cVar.a(i10) || MinimalEncoder.k(cVar.charAt(i10), cVar.f())) ? iJ + 2 : iJ + 1;
                    if (modeT == Mode.C40 || modeT == Mode.TEXT || modeT == Mode.X12) {
                        iJ++;
                    }
                    break;
                case 2:
                    iJ = (modeT == Mode.B256 && g() != 250) ? iJ + 1 : iJ + 2;
                    if (modeT == Mode.ASCII) {
                        iJ++;
                    } else if (modeT == Mode.C40 || modeT == Mode.TEXT || modeT == Mode.X12) {
                        iJ += 2;
                    }
                    break;
                case 3:
                case 4:
                case 5:
                    Mode mode2 = Mode.X12;
                    if (mode == mode2) {
                        iJ += 2;
                    } else {
                        iJ += MinimalEncoder.j(cVar, i10, mode == Mode.C40, new int[1]) * 2;
                    }
                    if (modeT == Mode.ASCII || modeT == Mode.B256) {
                        iJ++;
                    } else if (modeT != mode && (modeT == Mode.C40 || modeT == Mode.TEXT || modeT == mode2)) {
                        iJ += 2;
                    }
                    break;
                case 6:
                    iJ = (modeT != Mode.ASCII && modeT != Mode.B256) ? (modeT != Mode.C40 && modeT != Mode.TEXT && modeT != Mode.X12) ? iJ + 3 : iJ + 5 : iJ + 4;
                    break;
            }
            this.f32063f = iJ;
        }
    }

    private static final class c extends m {

        private final SymbolShapeHint f32064c;

        private final int f32065d;

        c(String str, Charset charset, int i10, SymbolShapeHint symbolShapeHint, int i11, a aVar) {
            this(str, charset, i10, symbolShapeHint, i11);
        }

        public int k() {
            return this.f32065d;
        }

        public SymbolShapeHint l() {
            return this.f32064c;
        }

        private c(String str, Charset charset, int i10, SymbolShapeHint symbolShapeHint, int i11) {
            super(str, charset, i10);
            this.f32064c = symbolShapeHint;
            this.f32065d = i11;
        }
    }

    private static final class d {

        private final byte[] f32066a;

        d(b bVar) {
            int i10;
            c cVar = bVar.f32058a;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int i11 = 0;
            int iC = ((bVar.f32059b == Mode.C40 || bVar.f32059b == Mode.TEXT || bVar.f32059b == Mode.X12) && bVar.o() != Mode.ASCII) ? c(b.h(254), arrayList) : 0;
            for (b bVar2 = bVar; bVar2 != null; bVar2 = bVar2.f32062e) {
                iC += c(bVar2.m(), arrayList);
                if (bVar2.f32062e == null || bVar2.u() != bVar2.s()) {
                    if (bVar2.s() == Mode.B256) {
                        if (iC <= 249) {
                            arrayList.add(0, Byte.valueOf((byte) iC));
                            i10 = iC + 1;
                        } else {
                            arrayList.add(0, Byte.valueOf((byte) (iC % 250)));
                            arrayList.add(0, Byte.valueOf((byte) ((iC / 250) + 249)));
                            i10 = iC + 2;
                        }
                        arrayList2.add(Integer.valueOf(arrayList.size()));
                        arrayList3.add(Integer.valueOf(i10));
                    }
                    c(bVar2.q(), arrayList);
                    iC = 0;
                }
            }
            if (cVar.k() == 5) {
                c(b.h(236), arrayList);
            } else if (cVar.k() == 6) {
                c(b.h(237), arrayList);
            }
            if (cVar.f() > 0) {
                c(b.h(232), arrayList);
            }
            for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                a(arrayList, arrayList.size() - ((Integer) arrayList2.get(i12)).intValue(), ((Integer) arrayList3.get(i12)).intValue());
            }
            int iR = bVar.r(arrayList.size());
            if (arrayList.size() < iR) {
                arrayList.add((byte) -127);
            }
            while (arrayList.size() < iR) {
                arrayList.add(Byte.valueOf((byte) d(arrayList.size() + 1)));
            }
            this.f32066a = new byte[arrayList.size()];
            while (true) {
                byte[] bArr = this.f32066a;
                if (i11 >= bArr.length) {
                    return;
                }
                bArr[i11] = ((Byte) arrayList.get(i11)).byteValue();
                i11++;
            }
        }

        static void a(List list, int i10, int i11) {
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = i10 + i12;
                int iByteValue = (((Byte) list.get(i13)).byteValue() & 255) + (((i13 + 1) * 149) % 255) + 1;
                if (iByteValue > 255) {
                    iByteValue += InputDeviceCompat.SOURCE_ANY;
                }
                list.set(i13, Byte.valueOf((byte) iByteValue));
            }
        }

        static int c(byte[] bArr, List list) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                list.add(0, Byte.valueOf(bArr[length]));
            }
            return bArr.length;
        }

        private static int d(int i10) {
            int i11 = (i10 * 149) % 253;
            int i12 = i11 + 130;
            return i12 <= 254 ? i12 : i11 - 124;
        }

        public byte[] b() {
            return this.f32066a;
        }
    }

    static void e(b[][] bVarArr, b bVar) {
        int i10 = bVar.f32060c + bVar.f32061d;
        if (bVarArr[i10][bVar.o().ordinal()] == null || bVarArr[i10][bVar.o().ordinal()].f32063f > bVar.f32063f) {
            bVarArr[i10][bVar.o().ordinal()] = bVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void f(c cVar, b[][] bVarArr, int i10, b bVar) {
        char c10 = 0;
        if (cVar.a(i10)) {
            e(bVarArr, new b(cVar, Mode.ASCII, i10, 1, bVar, null));
            return;
        }
        char cCharAt = cVar.charAt(i10);
        if (bVar == null || bVar.o() != Mode.EDF) {
            if (g.f(cCharAt) && cVar.g(i10, 2) && g.f(cVar.charAt(i10 + 1))) {
                e(bVarArr, new b(cVar, Mode.ASCII, i10, 2, bVar, null));
            } else {
                e(bVarArr, new b(cVar, Mode.ASCII, i10, 1, bVar, null));
            }
            Mode[] modeArr = {Mode.C40, Mode.TEXT};
            int i11 = 0;
            while (i11 < 2) {
                Mode mode = modeArr[i11];
                int[] iArr = new int[1];
                if (j(cVar, i10, mode == Mode.C40 ? 1 : c10, iArr) > 0) {
                    e(bVarArr, new b(cVar, mode, i10, iArr[c10], bVar, null));
                }
                i11++;
                c10 = 0;
            }
            if (cVar.g(i10, 3) && g.k(cVar.charAt(i10)) && g.k(cVar.charAt(i10 + 1)) && g.k(cVar.charAt(i10 + 2))) {
                e(bVarArr, new b(cVar, Mode.X12, i10, 3, bVar, null));
            }
            e(bVarArr, new b(cVar, Mode.B256, i10, 1, bVar, null));
        }
        int i12 = 0;
        while (i12 < 3) {
            int i13 = i10 + i12;
            if (!cVar.g(i13, 1) || !g.i(cVar.charAt(i13))) {
                break;
            }
            i12++;
            e(bVarArr, new b(cVar, Mode.EDF, i10, i12, bVar, null));
        }
        if (i12 == 3 && cVar.g(i10, 4) && g.i(cVar.charAt(i10 + 3))) {
            e(bVarArr, new b(cVar, Mode.EDF, i10, 4, bVar, null));
        }
    }

    static byte[] g(String str, Charset charset, int i10, SymbolShapeHint symbolShapeHint, int i11) {
        return i(new c(str, charset, i10, symbolShapeHint, i11, null)).b();
    }

    public static String h(String str, Charset charset, int i10, SymbolShapeHint symbolShapeHint) {
        int i11;
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            str = str.substring(7, str.length() - 2);
            i11 = 5;
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            str = str.substring(7, str.length() - 2);
            i11 = 6;
        } else {
            i11 = 0;
        }
        return new String(g(str, charset, i10, symbolShapeHint, i11), StandardCharsets.ISO_8859_1);
    }

    static d i(c cVar) {
        int length = cVar.length();
        int i10 = 0;
        b[][] bVarArr = (b[][]) Array.newInstance((Class<?>) b.class, length + 1, 6);
        f(cVar, bVarArr, 0, null);
        for (int i11 = 1; i11 <= length; i11++) {
            for (int i12 = 0; i12 < 6; i12++) {
                b bVar = bVarArr[i11][i12];
                if (bVar != null && i11 < length) {
                    f(cVar, bVarArr, i11, bVar);
                }
            }
            for (int i13 = 0; i13 < 6; i13++) {
                bVarArr[i11 - 1][i13] = null;
            }
        }
        int i14 = -1;
        int i15 = Integer.MAX_VALUE;
        while (i10 < 6) {
            b bVar2 = bVarArr[length][i10];
            if (bVar2 != null) {
                int i16 = (i10 < 1 || i10 > 3) ? bVar2.f32063f : bVar2.f32063f + 1;
                if (i16 < i15) {
                    i14 = i10;
                    i15 = i16;
                }
            }
            i10++;
        }
        if (i14 >= 0) {
            return new d(bVarArr[length][i14]);
        }
        throw new IllegalStateException("Failed to encode \"" + cVar + "\"");
    }

    static int j(c cVar, int i10, boolean z10, int[] iArr) {
        int i11 = 0;
        for (int i12 = i10; i12 < cVar.length(); i12++) {
            if (cVar.a(i12)) {
                iArr[0] = 0;
                return 0;
            }
            char cCharAt = cVar.charAt(i12);
            if ((z10 && g.h(cCharAt)) || (!z10 && g.j(cCharAt))) {
                i11++;
            } else if (k(cCharAt, cVar.f())) {
                int i13 = cCharAt & 255;
                i11 = (i13 < 128 || (!(z10 && g.h((char) (i13 + (-128)))) && (z10 || !g.j((char) (i13 + (-128)))))) ? i11 + 4 : i11 + 3;
            } else {
                i11 += 2;
            }
            if (i11 % 3 == 0 || ((i11 - 2) % 3 == 0 && i12 + 1 == cVar.length())) {
                iArr[0] = (i12 - i10) + 1;
                return (int) Math.ceil(((double) i11) / 3.0d);
            }
        }
        iArr[0] = 0;
        return 0;
    }

    static boolean k(char c10, int i10) {
        return c10 != i10 && c10 >= 128 && c10 <= 255;
    }

    public static boolean l(char c10) {
        return c10 <= 31;
    }

    public static boolean m(char c10, int i10) {
        for (char c11 : f32052a) {
            if (c11 == c10) {
                return true;
            }
        }
        return c10 == i10;
    }

    public static boolean n(char c10) {
        return l(c10);
    }

    public static boolean o(char c10, int i10) {
        return m(c10, i10);
    }
}
