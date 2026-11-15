package s2;

import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e3.n;
import java.util.List;
import k2.l0;
import k2.m0;
import k2.q;
import k2.r;
import k2.s;
import k2.t;

final class b implements r {

    private t f71459b;

    private int f71460c;

    private int f71461d;

    private int f71462e;

    private z2.a f71464g;

    private s f71465h;

    private d f71466i;

    private n f71467j;

    private final j0 f71458a = new j0(6);

    private long f71463f = -1;

    private void a(s sVar) {
        this.f71458a.S(2);
        sVar.peekFully(this.f71458a.e(), 0, 2);
        sVar.advancePeekPosition(this.f71458a.P() - 2);
    }

    private void g() {
        ((t) androidx.media3.common.util.a.e(this.f71459b)).endTracks();
        this.f71459b.d(new m0.b(C.TIME_UNSET));
        this.f71460c = 6;
    }

    private static z2.a h(String str, long j10) {
        c cVarA;
        if (j10 == -1 || (cVarA = f.a(str)) == null) {
            return null;
        }
        return cVarA.a(j10);
    }

    private void i(z2.a aVar) {
        ((t) androidx.media3.common.util.a.e(this.f71459b)).track(1024, 4).d(new androidx.media3.common.r.b().U("image/jpeg").n0(new x(aVar)).N());
    }

    private int j(s sVar) {
        this.f71458a.S(2);
        sVar.peekFully(this.f71458a.e(), 0, 2);
        return this.f71458a.P();
    }

    private void k(s sVar) {
        this.f71458a.S(2);
        sVar.readFully(this.f71458a.e(), 0, 2);
        int iP = this.f71458a.P();
        this.f71461d = iP;
        if (iP == 65498) {
            if (this.f71463f != -1) {
                this.f71460c = 4;
                return;
            } else {
                g();
                return;
            }
        }
        if ((iP < 65488 || iP > 65497) && iP != 65281) {
            this.f71460c = 1;
        }
    }

    private void l(s sVar) {
        String strB;
        if (this.f71461d == 65505) {
            j0 j0Var = new j0(this.f71462e);
            sVar.readFully(j0Var.e(), 0, this.f71462e);
            if (this.f71464g == null && "http://ns.adobe.com/xap/1.0/".equals(j0Var.B()) && (strB = j0Var.B()) != null) {
                z2.a aVarH = h(strB, sVar.getLength());
                this.f71464g = aVarH;
                if (aVarH != null) {
                    this.f71463f = aVarH.f76600d;
                }
            }
        } else {
            sVar.skipFully(this.f71462e);
        }
        this.f71460c = 0;
    }

    private void m(s sVar) {
        this.f71458a.S(2);
        sVar.readFully(this.f71458a.e(), 0, 2);
        this.f71462e = this.f71458a.P() - 2;
        this.f71460c = 2;
    }

    private void n(s sVar) {
        if (!sVar.peekFully(this.f71458a.e(), 0, 1, true)) {
            g();
            return;
        }
        sVar.resetPeekPosition();
        if (this.f71467j == null) {
            this.f71467j = new n(h3.s.a.f61264a, 8);
        }
        d dVar = new d(sVar, this.f71463f);
        this.f71466i = dVar;
        if (!this.f71467j.b(dVar)) {
            g();
        } else {
            this.f71467j.e(new e(this.f71463f, (t) androidx.media3.common.util.a.e(this.f71459b)));
            o();
        }
    }

    private void o() {
        i((z2.a) androidx.media3.common.util.a.e(this.f71464g));
        this.f71460c = 5;
    }

    @Override
    public boolean b(s sVar) {
        if (j(sVar) != 65496) {
            return false;
        }
        int iJ = j(sVar);
        this.f71461d = iJ;
        if (iJ == 65504) {
            a(sVar);
            this.f71461d = j(sVar);
        }
        if (this.f71461d != 65505) {
            return false;
        }
        sVar.advancePeekPosition(2);
        this.f71458a.S(6);
        sVar.peekFully(this.f71458a.e(), 0, 6);
        return this.f71458a.J() == 1165519206 && this.f71458a.P() == 0;
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(s sVar, l0 l0Var) {
        int i10 = this.f71460c;
        if (i10 == 0) {
            k(sVar);
            return 0;
        }
        if (i10 == 1) {
            m(sVar);
            return 0;
        }
        if (i10 == 2) {
            l(sVar);
            return 0;
        }
        if (i10 == 4) {
            long position = sVar.getPosition();
            long j10 = this.f71463f;
            if (position != j10) {
                l0Var.f63627a = j10;
                return 1;
            }
            n(sVar);
            return 0;
        }
        if (i10 != 5) {
            if (i10 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.f71466i == null || sVar != this.f71465h) {
            this.f71465h = sVar;
            this.f71466i = new d(sVar, this.f71463f);
        }
        int iD = ((n) androidx.media3.common.util.a.e(this.f71467j)).d(this.f71466i, l0Var);
        if (iD == 1) {
            l0Var.f63627a += this.f71463f;
        }
        return iD;
    }

    @Override
    public void e(t tVar) {
        this.f71459b = tVar;
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void release() {
        n nVar = this.f71467j;
        if (nVar != null) {
            nVar.release();
        }
    }

    @Override
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f71460c = 0;
            this.f71467j = null;
        } else if (this.f71460c == 5) {
            ((n) androidx.media3.common.util.a.e(this.f71467j)).seek(j10, j11);
        }
    }
}
