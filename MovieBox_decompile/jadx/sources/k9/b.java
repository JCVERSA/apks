package k9;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.a0;
import i9.b0;
import i9.e0;
import i9.j;
import i9.l;
import i9.m;
import i9.n;
import java.util.ArrayList;

public final class b implements l {

    private int f63807c;

    private k9.c f63809e;

    private long f63812h;

    private e f63813i;

    private int f63817m;

    private boolean f63818n;

    private final d0 f63805a = new d0(12);

    private final c f63806b = new c();

    private n f63808d = new j();

    private e[] f63811g = new e[0];

    private long f63815k = -1;

    private long f63816l = -1;

    private int f63814j = -1;

    private long f63810f = C.TIME_UNSET;

    private class C0787b implements b0 {

        private final long f63819a;

        public C0787b(long j10) {
            this.f63819a = j10;
        }

        @Override
        public long getDurationUs() {
            return this.f63819a;
        }

        @Override
        public b0.a getSeekPoints(long j10) {
            b0.a aVarI = b.this.f63811g[0].i(j10);
            for (int i10 = 1; i10 < b.this.f63811g.length; i10++) {
                b0.a aVarI2 = b.this.f63811g[i10].i(j10);
                if (aVarI2.f61885a.f61891b < aVarI.f61885a.f61891b) {
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

        public int f63821a;

        public int f63822b;

        public int f63823c;

        private c() {
        }

        public void a(d0 d0Var) {
            this.f63821a = d0Var.q();
            this.f63822b = d0Var.q();
            this.f63823c = 0;
        }

        public void b(d0 d0Var) throws ParserException {
            a(d0Var);
            if (this.f63821a == 1414744396) {
                this.f63823c = d0Var.q();
                return;
            }
            throw ParserException.createForMalformedContainer("LIST expected, found: " + this.f63821a, null);
        }
    }

    private static void e(m mVar) {
        if ((mVar.getPosition() & 1) == 1) {
            mVar.skipFully(1);
        }
    }

    private e f(int i10) {
        for (e eVar : this.f63811g) {
            if (eVar.j(i10)) {
                return eVar;
            }
        }
        return null;
    }

    private void g(d0 d0Var) throws ParserException {
        f fVarC = f.c(1819436136, d0Var);
        if (fVarC.getType() != 1819436136) {
            throw ParserException.createForMalformedContainer("Unexpected header list type " + fVarC.getType(), null);
        }
        k9.c cVar = (k9.c) fVarC.b(k9.c.class);
        if (cVar == null) {
            throw ParserException.createForMalformedContainer("AviHeader not found", null);
        }
        this.f63809e = cVar;
        this.f63810f = ((long) cVar.f63826c) * ((long) cVar.f63824a);
        ArrayList arrayList = new ArrayList();
        r4 it = fVarC.f63846a.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            k9.a aVar = (k9.a) it.next();
            if (aVar.getType() == 1819440243) {
                int i11 = i10 + 1;
                e eVarJ = j((f) aVar, i10);
                if (eVarJ != null) {
                    arrayList.add(eVarJ);
                }
                i10 = i11;
            }
        }
        this.f63811g = (e[]) arrayList.toArray(new e[0]);
        this.f63808d.endTracks();
    }

    private void h(d0 d0Var) {
        long jI = i(d0Var);
        while (d0Var.a() >= 16) {
            int iQ = d0Var.q();
            int iQ2 = d0Var.q();
            long jQ = ((long) d0Var.q()) + jI;
            d0Var.q();
            e eVarF = f(iQ);
            if (eVarF != null) {
                if ((iQ2 & 16) == 16) {
                    eVarF.b(jQ);
                }
                eVarF.k();
            }
        }
        for (e eVar : this.f63811g) {
            eVar.c();
        }
        this.f63818n = true;
        this.f63808d.g(new C0787b(this.f63810f));
    }

    private long i(d0 d0Var) {
        if (d0Var.a() < 16) {
            return 0L;
        }
        int iE = d0Var.e();
        d0Var.Q(8);
        long jQ = d0Var.q();
        long j10 = this.f63815k;
        long j11 = jQ <= j10 ? j10 + 8 : 0L;
        d0Var.P(iE);
        return j11;
    }

    private e j(f fVar, int i10) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            s.i("AviExtractor", "Missing Stream Header");
            return null;
        }
        if (gVar == null) {
            s.i("AviExtractor", "Missing Stream Format");
            return null;
        }
        long jA = dVar.a();
        p1 p1Var = gVar.f63848a;
        p1.b bVarB = p1Var.b();
        bVarB.R(i10);
        int i11 = dVar.f63833f;
        if (i11 != 0) {
            bVarB.W(i11);
        }
        h hVar = (h) fVar.b(h.class);
        if (hVar != null) {
            bVarB.U(hVar.f63849a);
        }
        int iK = w.k(p1Var.f24901l);
        if (iK != 1 && iK != 2) {
            return null;
        }
        e0 e0VarTrack = this.f63808d.track(i10, iK);
        e0VarTrack.d(bVarB.E());
        e eVar = new e(i10, iK, jA, dVar.f63832e, e0VarTrack);
        this.f63810f = jA;
        return eVar;
    }

    private int k(m mVar) {
        if (mVar.getPosition() >= this.f63816l) {
            return -1;
        }
        e eVar = this.f63813i;
        if (eVar == null) {
            e(mVar);
            mVar.peekFully(this.f63805a.d(), 0, 12);
            this.f63805a.P(0);
            int iQ = this.f63805a.q();
            if (iQ == 1414744396) {
                this.f63805a.P(8);
                mVar.skipFully(this.f63805a.q() != 1769369453 ? 8 : 12);
                mVar.resetPeekPosition();
                return 0;
            }
            int iQ2 = this.f63805a.q();
            if (iQ == 1263424842) {
                this.f63812h = mVar.getPosition() + ((long) iQ2) + 8;
                return 0;
            }
            mVar.skipFully(8);
            mVar.resetPeekPosition();
            e eVarF = f(iQ);
            if (eVarF == null) {
                this.f63812h = mVar.getPosition() + ((long) iQ2);
                return 0;
            }
            eVarF.n(iQ2);
            this.f63813i = eVarF;
        } else if (eVar.m(mVar)) {
            this.f63813i = null;
        }
        return 0;
    }

    private boolean l(m mVar, a0 a0Var) {
        boolean z10;
        if (this.f63812h != -1) {
            long position = mVar.getPosition();
            long j10 = this.f63812h;
            if (j10 < position || j10 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + position) {
                a0Var.f61884a = j10;
                z10 = true;
            } else {
                mVar.skipFully((int) (j10 - position));
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f63812h = -1L;
        return z10;
    }

    @Override
    public void b(n nVar) {
        this.f63807c = 0;
        this.f63808d = nVar;
        this.f63812h = -1L;
    }

    @Override
    public boolean c(m mVar) {
        mVar.peekFully(this.f63805a.d(), 0, 12);
        this.f63805a.P(0);
        if (this.f63805a.q() != 1179011410) {
            return false;
        }
        this.f63805a.Q(4);
        return this.f63805a.q() == 541677121;
    }

    @Override
    public int d(m mVar, a0 a0Var) throws ParserException {
        if (l(mVar, a0Var)) {
            return 1;
        }
        switch (this.f63807c) {
            case 0:
                if (!c(mVar)) {
                    throw ParserException.createForMalformedContainer("AVI Header List not found", null);
                }
                mVar.skipFully(12);
                this.f63807c = 1;
                return 0;
            case 1:
                mVar.readFully(this.f63805a.d(), 0, 12);
                this.f63805a.P(0);
                this.f63806b.b(this.f63805a);
                c cVar = this.f63806b;
                if (cVar.f63823c == 1819436136) {
                    this.f63814j = cVar.f63822b;
                    this.f63807c = 2;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("hdrl expected, found: " + this.f63806b.f63823c, null);
            case 2:
                int i10 = this.f63814j - 4;
                d0 d0Var = new d0(i10);
                mVar.readFully(d0Var.d(), 0, i10);
                g(d0Var);
                this.f63807c = 3;
                return 0;
            case 3:
                if (this.f63815k != -1) {
                    long position = mVar.getPosition();
                    long j10 = this.f63815k;
                    if (position != j10) {
                        this.f63812h = j10;
                        return 0;
                    }
                }
                mVar.peekFully(this.f63805a.d(), 0, 12);
                mVar.resetPeekPosition();
                this.f63805a.P(0);
                this.f63806b.a(this.f63805a);
                int iQ = this.f63805a.q();
                int i11 = this.f63806b.f63821a;
                if (i11 == 1179011410) {
                    mVar.skipFully(12);
                    return 0;
                }
                if (i11 != 1414744396 || iQ != 1769369453) {
                    this.f63812h = mVar.getPosition() + ((long) this.f63806b.f63822b) + 8;
                    return 0;
                }
                long position2 = mVar.getPosition();
                this.f63815k = position2;
                this.f63816l = position2 + ((long) this.f63806b.f63822b) + 8;
                if (!this.f63818n) {
                    if (((k9.c) com.google.android.exoplayer2.util.a.e(this.f63809e)).a()) {
                        this.f63807c = 4;
                        this.f63812h = this.f63816l;
                        return 0;
                    }
                    this.f63808d.g(new b0.b(this.f63810f));
                    this.f63818n = true;
                }
                this.f63812h = mVar.getPosition() + 12;
                this.f63807c = 6;
                return 0;
            case 4:
                mVar.readFully(this.f63805a.d(), 0, 8);
                this.f63805a.P(0);
                int iQ2 = this.f63805a.q();
                int iQ3 = this.f63805a.q();
                if (iQ2 == 829973609) {
                    this.f63807c = 5;
                    this.f63817m = iQ3;
                } else {
                    this.f63812h = mVar.getPosition() + ((long) iQ3);
                }
                return 0;
            case 5:
                d0 d0Var2 = new d0(this.f63817m);
                mVar.readFully(d0Var2.d(), 0, this.f63817m);
                h(d0Var2);
                this.f63807c = 6;
                this.f63812h = this.f63815k;
                return 0;
            case 6:
                return k(mVar);
            default:
                throw new AssertionError();
        }
    }

    @Override
    public void seek(long j10, long j11) {
        this.f63812h = -1L;
        this.f63813i = null;
        for (e eVar : this.f63811g) {
            eVar.o(j10);
        }
        if (j10 != 0) {
            this.f63807c = 6;
        } else if (this.f63811g.length == 0) {
            this.f63807c = 0;
        } else {
            this.f63807c = 3;
        }
    }

    @Override
    public void release() {
    }
}
