package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;

final class r {

    private final kd.a f32120a;

    private final CurrentParsingState f32121b = new CurrentParsingState();

    private final StringBuilder f32122c = new StringBuilder();

    r(kd.a aVar) {
        this.f32120a = aVar;
    }

    private m b(int i10) {
        char c10;
        int iF = f(i10, 5);
        if (iF == 15) {
            return new m(i10 + 5, '$');
        }
        if (iF >= 5 && iF < 15) {
            return new m(i10 + 5, (char) (iF + 43));
        }
        int iF2 = f(i10, 6);
        if (iF2 >= 32 && iF2 < 58) {
            return new m(i10 + 6, (char) (iF2 + 33));
        }
        switch (iF2) {
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                c10 = '*';
                break;
            case 59:
                c10 = ',';
                break;
            case 60:
                c10 = '-';
                break;
            case 61:
                c10 = '.';
                break;
            case 62:
                c10 = '/';
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: " + iF2);
        }
        return new m(i10 + 6, c10);
    }

    private m d(int i10) throws FormatException {
        int iF = f(i10, 5);
        if (iF == 15) {
            return new m(i10 + 5, '$');
        }
        char c10 = '+';
        if (iF >= 5 && iF < 15) {
            return new m(i10 + 5, (char) (iF + 43));
        }
        int iF2 = f(i10, 7);
        if (iF2 >= 64 && iF2 < 90) {
            return new m(i10 + 7, (char) (iF2 + 1));
        }
        if (iF2 >= 90 && iF2 < 116) {
            return new m(i10 + 7, (char) (iF2 + 7));
        }
        switch (f(i10, 8)) {
            case 232:
                c10 = '!';
                break;
            case 233:
                c10 = '\"';
                break;
            case 234:
                c10 = '%';
                break;
            case 235:
                c10 = '&';
                break;
            case 236:
                c10 = '\'';
                break;
            case 237:
                c10 = '(';
                break;
            case 238:
                c10 = ')';
                break;
            case 239:
                c10 = '*';
                break;
            case 240:
                break;
            case 241:
                c10 = ',';
                break;
            case 242:
                c10 = '-';
                break;
            case 243:
                c10 = '.';
                break;
            case 244:
                c10 = '/';
                break;
            case 245:
                c10 = ':';
                break;
            case 246:
                c10 = ';';
                break;
            case 247:
                c10 = '<';
                break;
            case 248:
                c10 = '=';
                break;
            case 249:
                c10 = '>';
                break;
            case 250:
                c10 = '?';
                break;
            case 251:
                c10 = '_';
                break;
            case 252:
                c10 = ' ';
                break;
            default:
                throw FormatException.getFormatInstance();
        }
        return new m(i10 + 8, c10);
    }

    private o e(int i10) {
        int i11 = i10 + 7;
        if (i11 > this.f32120a.m()) {
            int iF = f(i10, 4);
            return iF == 0 ? new o(this.f32120a.m(), 10, 10) : new o(this.f32120a.m(), iF - 1, 10);
        }
        int iF2 = f(i10, 7) - 8;
        return new o(i11, iF2 / 11, iF2 % 11);
    }

    static int g(kd.a aVar, int i10, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            if (aVar.i(i10 + i13)) {
                i12 |= 1 << ((i11 - i13) - 1);
            }
        }
        return i12;
    }

    private boolean h(int i10) {
        int i11 = i10 + 3;
        if (i11 > this.f32120a.m()) {
            return false;
        }
        while (i10 < i11) {
            if (this.f32120a.i(i10)) {
                return false;
            }
            i10++;
        }
        return true;
    }

    private boolean i(int i10) {
        int i11;
        if (i10 + 1 > this.f32120a.m()) {
            return false;
        }
        for (int i12 = 0; i12 < 5 && (i11 = i12 + i10) < this.f32120a.m(); i12++) {
            if (i12 == 2) {
                if (!this.f32120a.i(i10 + 2)) {
                    return false;
                }
            } else if (this.f32120a.i(i11)) {
                return false;
            }
        }
        return true;
    }

    private boolean j(int i10) {
        int i11;
        if (i10 + 1 > this.f32120a.m()) {
            return false;
        }
        for (int i12 = 0; i12 < 4 && (i11 = i12 + i10) < this.f32120a.m(); i12++) {
            if (this.f32120a.i(i11)) {
                return false;
            }
        }
        return true;
    }

    private boolean k(int i10) {
        int iF;
        if (i10 + 5 > this.f32120a.m()) {
            return false;
        }
        int iF2 = f(i10, 5);
        if (iF2 < 5 || iF2 >= 16) {
            return i10 + 6 <= this.f32120a.m() && (iF = f(i10, 6)) >= 16 && iF < 63;
        }
        return true;
    }

    private boolean l(int i10) {
        int iF;
        if (i10 + 5 > this.f32120a.m()) {
            return false;
        }
        int iF2 = f(i10, 5);
        if (iF2 >= 5 && iF2 < 16) {
            return true;
        }
        if (i10 + 7 > this.f32120a.m()) {
            return false;
        }
        int iF3 = f(i10, 7);
        if (iF3 < 64 || iF3 >= 116) {
            return i10 + 8 <= this.f32120a.m() && (iF = f(i10, 8)) >= 232 && iF < 253;
        }
        return true;
    }

    private boolean m(int i10) {
        if (i10 + 7 > this.f32120a.m()) {
            return i10 + 4 <= this.f32120a.m();
        }
        int i11 = i10;
        while (true) {
            int i12 = i10 + 3;
            if (i11 >= i12) {
                return this.f32120a.i(i12);
            }
            if (this.f32120a.i(i11)) {
                return true;
            }
            i11++;
        }
    }

    private l n() {
        while (k(this.f32121b.a())) {
            m mVarB = b(this.f32121b.a());
            this.f32121b.h(mVarB.a());
            if (mVarB.c()) {
                return new l(new n(this.f32121b.a(), this.f32122c.toString()), true);
            }
            this.f32122c.append(mVarB.b());
        }
        if (h(this.f32121b.a())) {
            this.f32121b.b(3);
            this.f32121b.g();
        } else if (i(this.f32121b.a())) {
            if (this.f32121b.a() + 5 < this.f32120a.m()) {
                this.f32121b.b(5);
            } else {
                this.f32121b.h(this.f32120a.m());
            }
            this.f32121b.f();
        }
        return new l();
    }

    private n o() throws FormatException {
        l lVarQ;
        boolean zB;
        do {
            int iA = this.f32121b.a();
            if (this.f32121b.c()) {
                lVarQ = n();
                zB = lVarQ.b();
            } else if (this.f32121b.d()) {
                lVarQ = p();
                zB = lVarQ.b();
            } else {
                lVarQ = q();
                zB = lVarQ.b();
            }
            if (iA == this.f32121b.a() && !zB) {
                break;
            }
        } while (!zB);
        return lVarQ.a();
    }

    private l p() throws FormatException {
        while (l(this.f32121b.a())) {
            m mVarD = d(this.f32121b.a());
            this.f32121b.h(mVarD.a());
            if (mVarD.c()) {
                return new l(new n(this.f32121b.a(), this.f32122c.toString()), true);
            }
            this.f32122c.append(mVarD.b());
        }
        if (h(this.f32121b.a())) {
            this.f32121b.b(3);
            this.f32121b.g();
        } else if (i(this.f32121b.a())) {
            if (this.f32121b.a() + 5 < this.f32120a.m()) {
                this.f32121b.b(5);
            } else {
                this.f32121b.h(this.f32120a.m());
            }
            this.f32121b.e();
        }
        return new l();
    }

    private l q() {
        while (m(this.f32121b.a())) {
            o oVarE = e(this.f32121b.a());
            this.f32121b.h(oVarE.a());
            if (oVarE.d()) {
                return new l(oVarE.e() ? new n(this.f32121b.a(), this.f32122c.toString()) : new n(this.f32121b.a(), this.f32122c.toString(), oVarE.c()), true);
            }
            this.f32122c.append(oVarE.b());
            if (oVarE.e()) {
                return new l(new n(this.f32121b.a(), this.f32122c.toString()), true);
            }
            this.f32122c.append(oVarE.c());
        }
        if (j(this.f32121b.a())) {
            this.f32121b.e();
            this.f32121b.b(4);
        }
        return new l();
    }

    String a(StringBuilder sb2, int i10) throws NotFoundException, FormatException {
        String str = null;
        while (true) {
            n nVarC = c(i10, str);
            String strA = q.a(nVarC.b());
            if (strA != null) {
                sb2.append(strA);
            }
            String strValueOf = nVarC.d() ? String.valueOf(nVarC.c()) : null;
            if (i10 == nVarC.a()) {
                return sb2.toString();
            }
            i10 = nVarC.a();
            str = strValueOf;
        }
    }

    n c(int i10, String str) throws FormatException {
        this.f32122c.setLength(0);
        if (str != null) {
            this.f32122c.append(str);
        }
        this.f32121b.h(i10);
        n nVarO = o();
        return (nVarO == null || !nVarO.d()) ? new n(this.f32121b.a(), this.f32122c.toString()) : new n(this.f32121b.a(), this.f32122c.toString(), nVarO.c());
    }

    int f(int i10, int i11) {
        return g(this.f32120a, i10, i11);
    }
}
