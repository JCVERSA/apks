package m2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import androidx.media3.common.y;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.s;
import java.util.ArrayList;
import java.util.List;
import k2.l0;
import k2.m0;
import k2.q;
import k2.r;
import k2.s0;
import k2.t;

public final class b implements r {

    private final j0 f66191a;

    private final c f66192b;

    private final boolean f66193c;

    private final s.a f66194d;

    private int f66195e;

    private t f66196f;

    private m2.c f66197g;

    private long f66198h;

    private e[] f66199i;

    private long f66200j;

    private e f66201k;

    private int f66202l;

    private long f66203m;

    private long f66204n;

    private int f66205o;

    private boolean f66206p;

    private class C0809b implements m0 {

        private final long f66207a;

        public C0809b(long j10) {
            this.f66207a = j10;
        }

        @Override
        public long getDurationUs() {
            return this.f66207a;
        }

        @Override
        public m0.a getSeekPoints(long j10) {
            m0.a aVarI = b.this.f66199i[0].i(j10);
            for (int i10 = 1; i10 < b.this.f66199i.length; i10++) {
                m0.a aVarI2 = b.this.f66199i[i10].i(j10);
                if (aVarI2.f63651a.f63658b < aVarI.f63651a.f63658b) {
                    aVarI = aVarI2;
                }
            }
            return aVarI;
        }

        @Override
        public boolean isSeekable() {
            return true;
        }
    }

    private static class c {

        public int f66209a;

        public int f66210b;

        public int f66211c;

        private c() {
        }

        public void a(j0 j0Var) {
            this.f66209a = j0Var.u();
            this.f66210b = j0Var.u();
            this.f66211c = 0;
        }

        public void b(j0 j0Var) throws ParserException {
            a(j0Var);
            if (this.f66209a == 1414744396) {
                this.f66211c = j0Var.u();
                return;
            }
            throw ParserException.createForMalformedContainer("LIST expected, found: " + this.f66209a, null);
        }
    }

    @Deprecated
    public b() {
        this(1, s.a.f61264a);
    }

    private static void g(k2.s sVar) {
        if ((sVar.getPosition() & 1) == 1) {
            sVar.skipFully(1);
        }
    }

    private e h(int i10) {
        for (e eVar : this.f66199i) {
            if (eVar.j(i10)) {
                return eVar;
            }
        }
        return null;
    }

    private void i(j0 j0Var) throws ParserException {
        f fVarC = f.c(1819436136, j0Var);
        if (fVarC.getType() != 1819436136) {
            throw ParserException.createForMalformedContainer("Unexpected header list type " + fVarC.getType(), null);
        }
        m2.c cVar = (m2.c) fVarC.b(m2.c.class);
        if (cVar == null) {
            throw ParserException.createForMalformedContainer("AviHeader not found", null);
        }
        this.f66197g = cVar;
        this.f66198h = ((long) cVar.f66214c) * ((long) cVar.f66212a);
        ArrayList arrayList = new ArrayList();
        r4 it = fVarC.f66237a.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            m2.a aVar = (m2.a) it.next();
            if (aVar.getType() == 1819440243) {
                int i11 = i10 + 1;
                e eVarL = l((f) aVar, i10);
                if (eVarL != null) {
                    arrayList.add(eVarL);
                }
                i10 = i11;
            }
        }
        this.f66199i = (e[]) arrayList.toArray(new e[0]);
        this.f66196f.endTracks();
    }

    private void j(j0 j0Var) {
        int i10;
        long jK = k(j0Var);
        while (true) {
            if (j0Var.a() < 16) {
                break;
            }
            int iU = j0Var.u();
            int iU2 = j0Var.u();
            long jU = ((long) j0Var.u()) + jK;
            j0Var.X(4);
            e eVarH = h(iU);
            if (eVarH != null) {
                eVarH.b(jU, (iU2 & 16) == 16);
            }
        }
        for (e eVar : this.f66199i) {
            eVar.c();
        }
        this.f66206p = true;
        if (this.f66199i.length == 0) {
            this.f66196f.d(new m0.b(this.f66198h));
        } else {
            this.f66196f.d(new C0809b(this.f66198h));
        }
    }

    private long k(j0 j0Var) {
        if (j0Var.a() < 16) {
            return 0L;
        }
        int iF = j0Var.f();
        j0Var.X(8);
        long jU = j0Var.u();
        long j10 = this.f66203m;
        long j11 = jU <= j10 ? j10 + 8 : 0L;
        j0Var.W(iF);
        return j11;
    }

    private e l(f fVar, int i10) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            u.h("AviExtractor", "Missing Stream Header");
            return null;
        }
        if (gVar == null) {
            u.h("AviExtractor", "Missing Stream Format");
            return null;
        }
        long jA = dVar.a();
        androidx.media3.common.r rVar = gVar.f66239a;
        androidx.media3.common.r.b bVarB = rVar.b();
        bVarB.e0(i10);
        int i11 = dVar.f66221f;
        if (i11 != 0) {
            bVarB.k0(i11);
        }
        h hVar = (h) fVar.b(h.class);
        if (hVar != null) {
            bVarB.h0(hVar.f66240a);
        }
        int iK = y.k(rVar.f9849o);
        if (iK != 1 && iK != 2) {
            return null;
        }
        s0 s0VarTrack = this.f66196f.track(i10, iK);
        s0VarTrack.d(bVarB.N());
        s0VarTrack.f(jA);
        this.f66198h = Math.max(this.f66198h, jA);
        return new e(i10, dVar, s0VarTrack);
    }

    private int m(k2.s sVar) {
        if (sVar.getPosition() >= this.f66204n) {
            return -1;
        }
        e eVar = this.f66201k;
        if (eVar == null) {
            g(sVar);
            sVar.peekFully(this.f66191a.e(), 0, 12);
            this.f66191a.W(0);
            int iU = this.f66191a.u();
            if (iU == 1414744396) {
                this.f66191a.W(8);
                sVar.skipFully(this.f66191a.u() != 1769369453 ? 8 : 12);
                sVar.resetPeekPosition();
                return 0;
            }
            int iU2 = this.f66191a.u();
            if (iU == 1263424842) {
                this.f66200j = sVar.getPosition() + ((long) iU2) + 8;
                return 0;
            }
            sVar.skipFully(8);
            sVar.resetPeekPosition();
            e eVarH = h(iU);
            if (eVarH == null) {
                this.f66200j = sVar.getPosition() + ((long) iU2);
                return 0;
            }
            eVarH.n(iU2);
            this.f66201k = eVarH;
        } else if (eVar.m(sVar)) {
            this.f66201k = null;
        }
        return 0;
    }

    private boolean n(k2.s sVar, l0 l0Var) {
        boolean z10;
        if (this.f66200j != -1) {
            long position = sVar.getPosition();
            long j10 = this.f66200j;
            if (j10 < position || j10 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + position) {
                l0Var.f63627a = j10;
                z10 = true;
            } else {
                sVar.skipFully((int) (j10 - position));
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f66200j = -1L;
        return z10;
    }

    @Override
    public boolean b(k2.s sVar) {
        sVar.peekFully(this.f66191a.e(), 0, 12);
        this.f66191a.W(0);
        if (this.f66191a.u() != 1179011410) {
            return false;
        }
        this.f66191a.X(4);
        return this.f66191a.u() == 541677121;
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        if (n(sVar, l0Var)) {
            return 1;
        }
        switch (this.f66195e) {
            case 0:
                if (!b(sVar)) {
                    throw ParserException.createForMalformedContainer("AVI Header List not found", null);
                }
                sVar.skipFully(12);
                this.f66195e = 1;
                return 0;
            case 1:
                sVar.readFully(this.f66191a.e(), 0, 12);
                this.f66191a.W(0);
                this.f66192b.b(this.f66191a);
                c cVar = this.f66192b;
                if (cVar.f66211c == 1819436136) {
                    this.f66202l = cVar.f66210b;
                    this.f66195e = 2;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("hdrl expected, found: " + this.f66192b.f66211c, null);
            case 2:
                int i10 = this.f66202l - 4;
                j0 j0Var = new j0(i10);
                sVar.readFully(j0Var.e(), 0, i10);
                i(j0Var);
                this.f66195e = 3;
                return 0;
            case 3:
                if (this.f66203m != -1) {
                    long position = sVar.getPosition();
                    long j10 = this.f66203m;
                    if (position != j10) {
                        this.f66200j = j10;
                        return 0;
                    }
                }
                sVar.peekFully(this.f66191a.e(), 0, 12);
                sVar.resetPeekPosition();
                this.f66191a.W(0);
                this.f66192b.a(this.f66191a);
                int iU = this.f66191a.u();
                int i11 = this.f66192b.f66209a;
                if (i11 == 1179011410) {
                    sVar.skipFully(12);
                    return 0;
                }
                if (i11 != 1414744396 || iU != 1769369453) {
                    this.f66200j = sVar.getPosition() + ((long) this.f66192b.f66210b) + 8;
                    return 0;
                }
                long position2 = sVar.getPosition();
                this.f66203m = position2;
                this.f66204n = position2 + ((long) this.f66192b.f66210b) + 8;
                if (!this.f66206p) {
                    if (((m2.c) androidx.media3.common.util.a.e(this.f66197g)).a()) {
                        this.f66195e = 4;
                        this.f66200j = this.f66204n;
                        return 0;
                    }
                    this.f66196f.d(new m0.b(this.f66198h));
                    this.f66206p = true;
                }
                this.f66200j = sVar.getPosition() + 12;
                this.f66195e = 6;
                return 0;
            case 4:
                sVar.readFully(this.f66191a.e(), 0, 8);
                this.f66191a.W(0);
                int iU2 = this.f66191a.u();
                int iU3 = this.f66191a.u();
                if (iU2 == 829973609) {
                    this.f66195e = 5;
                    this.f66205o = iU3;
                } else {
                    this.f66200j = sVar.getPosition() + ((long) iU3);
                }
                return 0;
            case 5:
                j0 j0Var2 = new j0(this.f66205o);
                sVar.readFully(j0Var2.e(), 0, this.f66205o);
                j(j0Var2);
                this.f66195e = 6;
                this.f66200j = this.f66203m;
                return 0;
            case 6:
                return m(sVar);
            default:
                throw new AssertionError();
        }
    }

    @Override
    public void e(t tVar) {
        this.f66195e = 0;
        if (this.f66193c) {
            tVar = new h3.t(tVar, this.f66194d);
        }
        this.f66196f = tVar;
        this.f66200j = -1L;
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f66200j = -1L;
        this.f66201k = null;
        for (e eVar : this.f66199i) {
            eVar.o(j10);
        }
        if (j10 != 0) {
            this.f66195e = 6;
        } else if (this.f66199i.length == 0) {
            this.f66195e = 0;
        } else {
            this.f66195e = 3;
        }
    }

    public b(int i10, s.a aVar) {
        this.f66194d = aVar;
        this.f66193c = (i10 & 1) == 0;
        this.f66191a = new j0(12);
        this.f66192b = new c();
        this.f66196f = new k2.j0();
        this.f66199i = new e[0];
        this.f66203m = -1L;
        this.f66204n = -1L;
        this.f66202l = -1;
        this.f66198h = C.TIME_UNSET;
    }

    @Override
    public void release() {
    }
}
