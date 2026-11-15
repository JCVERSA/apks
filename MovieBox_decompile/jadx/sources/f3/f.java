package f3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import k2.s;
import k2.u;

final class f {

    public int f59999a;

    public int f60000b;

    public long f60001c;

    public long f60002d;

    public long f60003e;

    public long f60004f;

    public int f60005g;

    public int f60006h;

    public int f60007i;

    public final int[] f60008j = new int[255];

    private final j0 f60009k = new j0(255);

    f() {
    }

    public boolean a(s sVar, boolean z10) throws ParserException {
        b();
        this.f60009k.S(27);
        if (!u.b(sVar, this.f60009k.e(), 0, 27, z10) || this.f60009k.J() != 1332176723) {
            return false;
        }
        int iH = this.f60009k.H();
        this.f59999a = iH;
        if (iH != 0) {
            if (z10) {
                return false;
            }
            throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
        }
        this.f60000b = this.f60009k.H();
        this.f60001c = this.f60009k.v();
        this.f60002d = this.f60009k.x();
        this.f60003e = this.f60009k.x();
        this.f60004f = this.f60009k.x();
        int iH2 = this.f60009k.H();
        this.f60005g = iH2;
        this.f60006h = iH2 + 27;
        this.f60009k.S(iH2);
        if (!u.b(sVar, this.f60009k.e(), 0, this.f60005g, z10)) {
            return false;
        }
        for (int i10 = 0; i10 < this.f60005g; i10++) {
            this.f60008j[i10] = this.f60009k.H();
            this.f60007i += this.f60008j[i10];
        }
        return true;
    }

    public void b() {
        this.f59999a = 0;
        this.f60000b = 0;
        this.f60001c = 0L;
        this.f60002d = 0L;
        this.f60003e = 0L;
        this.f60004f = 0L;
        this.f60005g = 0;
        this.f60006h = 0;
        this.f60007i = 0;
    }

    public boolean c(s sVar) {
        return d(sVar, -1L);
    }

    public boolean d(s sVar, long j10) {
        androidx.media3.common.util.a.a(sVar.getPosition() == sVar.getPeekPosition());
        this.f60009k.S(4);
        while (true) {
            if ((j10 != -1 && sVar.getPosition() + 4 >= j10) || !u.b(sVar, this.f60009k.e(), 0, 4, true)) {
                break;
            }
            this.f60009k.W(0);
            if (this.f60009k.J() == 1332176723) {
                sVar.resetPeekPosition();
                return true;
            }
            sVar.skipFully(1);
        }
        do {
            if (j10 != -1 && sVar.getPosition() >= j10) {
                break;
            }
        } while (sVar.skip(1) != -1);
        return false;
    }
}
