package r9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import i9.m;
import i9.o;

final class f {

    public int f70896a;

    public int f70897b;

    public long f70898c;

    public long f70899d;

    public long f70900e;

    public long f70901f;

    public int f70902g;

    public int f70903h;

    public int f70904i;

    public final int[] f70905j = new int[255];

    private final d0 f70906k = new d0(255);

    f() {
    }

    public boolean a(m mVar, boolean z10) throws ParserException {
        b();
        this.f70906k.L(27);
        if (!o.b(mVar, this.f70906k.d(), 0, 27, z10) || this.f70906k.F() != 1332176723) {
            return false;
        }
        int iD = this.f70906k.D();
        this.f70896a = iD;
        if (iD != 0) {
            if (z10) {
                return false;
            }
            throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
        }
        this.f70897b = this.f70906k.D();
        this.f70898c = this.f70906k.r();
        this.f70899d = this.f70906k.t();
        this.f70900e = this.f70906k.t();
        this.f70901f = this.f70906k.t();
        int iD2 = this.f70906k.D();
        this.f70902g = iD2;
        this.f70903h = iD2 + 27;
        this.f70906k.L(iD2);
        if (!o.b(mVar, this.f70906k.d(), 0, this.f70902g, z10)) {
            return false;
        }
        for (int i10 = 0; i10 < this.f70902g; i10++) {
            this.f70905j[i10] = this.f70906k.D();
            this.f70904i += this.f70905j[i10];
        }
        return true;
    }

    public void b() {
        this.f70896a = 0;
        this.f70897b = 0;
        this.f70898c = 0L;
        this.f70899d = 0L;
        this.f70900e = 0L;
        this.f70901f = 0L;
        this.f70902g = 0;
        this.f70903h = 0;
        this.f70904i = 0;
    }

    public boolean c(m mVar) {
        return d(mVar, -1L);
    }

    public boolean d(m mVar, long j10) {
        com.google.android.exoplayer2.util.a.a(mVar.getPosition() == mVar.getPeekPosition());
        this.f70906k.L(4);
        while (true) {
            if ((j10 != -1 && mVar.getPosition() + 4 >= j10) || !o.b(mVar, this.f70906k.d(), 0, 4, true)) {
                break;
            }
            this.f70906k.P(0);
            if (this.f70906k.F() == 1332176723) {
                mVar.resetPeekPosition();
                return true;
            }
            mVar.skipFully(1);
        }
        do {
            if (j10 != -1 && mVar.getPosition() >= j10) {
                break;
            }
        } while (mVar.skip(1) != -1);
        return false;
    }
}
