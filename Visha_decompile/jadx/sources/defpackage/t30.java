package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.C;
import androidx.media3.extractor.avi.AviExtractor;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import java.util.ArrayList;

public final class t30 implements nk3 {
    public int c;
    public u30 e;
    public long h;
    public bw0 i;
    public int m;
    public boolean n;
    public final qw7 a = new qw7(12);
    public final c b = new c();
    public qk3 d = new r33();
    public bw0[] g = new bw0[0];
    public long k = -1;
    public long l = -1;
    public int j = -1;
    public long f = C.TIME_UNSET;

    public class b implements ja9 {
        public final long a;

        public b(long j) {
            this.a = j;
        }

        @Override
        public long getDurationUs() {
            return this.a;
        }

        @Override
        public ja9.a getSeekPoints(long j) {
            ja9.a aVarI = t30.this.g[0].i(j);
            for (int i = 1; i < t30.this.g.length; i++) {
                ja9.a aVarI2 = t30.this.g[i].i(j);
                if (aVarI2.a.b < aVarI.a.b) {
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

    public static class c {
        public int a;
        public int b;
        public int c;

        public c() {
        }

        public void a(qw7 qw7Var) {
            this.a = qw7Var.p();
            this.b = qw7Var.p();
            this.c = 0;
        }

        public void b(qw7 qw7Var) throws ParserException {
            a(qw7Var);
            if (this.a == 1414744396) {
                this.c = qw7Var.p();
                return;
            }
            throw ParserException.createForMalformedContainer("LIST expected, found: " + this.a, null);
        }
    }

    public static void e(pk3 pk3Var) {
        if ((pk3Var.getPosition() & 1) == 1) {
            pk3Var.skipFully(1);
        }
    }

    @Override
    public void a(qk3 qk3Var) {
        this.c = 0;
        this.d = qk3Var;
        this.h = -1L;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        if (l(pk3Var, id8Var)) {
            return 1;
        }
        switch (this.c) {
            case 0:
                if (!c(pk3Var)) {
                    throw ParserException.createForMalformedContainer("AVI Header List not found", null);
                }
                pk3Var.skipFully(12);
                this.c = 1;
                return 0;
            case 1:
                pk3Var.readFully(this.a.d(), 0, 12);
                this.a.O(0);
                this.b.b(this.a);
                c cVar = this.b;
                if (cVar.c == 1819436136) {
                    this.j = cVar.b;
                    this.c = 2;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("hdrl expected, found: " + this.b.c, null);
            case 2:
                int i = this.j - 4;
                qw7 qw7Var = new qw7(i);
                pk3Var.readFully(qw7Var.d(), 0, i);
                g(qw7Var);
                this.c = 3;
                return 0;
            case 3:
                if (this.k != -1) {
                    long position = pk3Var.getPosition();
                    long j = this.k;
                    if (position != j) {
                        this.h = j;
                        return 0;
                    }
                }
                pk3Var.peekFully(this.a.d(), 0, 12);
                pk3Var.resetPeekPosition();
                this.a.O(0);
                this.b.a(this.a);
                int iP = this.a.p();
                int i2 = this.b.a;
                if (i2 == 1179011410) {
                    pk3Var.skipFully(12);
                    return 0;
                }
                if (i2 != 1414744396 || iP != 1769369453) {
                    this.h = pk3Var.getPosition() + ((long) this.b.b) + 8;
                    return 0;
                }
                long position2 = pk3Var.getPosition();
                this.k = position2;
                this.l = position2 + ((long) this.b.b) + 8;
                if (!this.n) {
                    if (((u30) zi.e(this.e)).a()) {
                        this.c = 4;
                        this.h = this.l;
                        return 0;
                    }
                    this.d.d(new ja9.b(this.f));
                    this.n = true;
                }
                this.h = pk3Var.getPosition() + 12;
                this.c = 6;
                return 0;
            case 4:
                pk3Var.readFully(this.a.d(), 0, 8);
                this.a.O(0);
                int iP2 = this.a.p();
                int iP3 = this.a.p();
                if (iP2 == 829973609) {
                    this.c = 5;
                    this.m = iP3;
                } else {
                    this.h = pk3Var.getPosition() + ((long) iP3);
                }
                return 0;
            case 5:
                qw7 qw7Var2 = new qw7(this.m);
                pk3Var.readFully(qw7Var2.d(), 0, this.m);
                h(qw7Var2);
                this.c = 6;
                this.h = this.k;
                return 0;
            case 6:
                return k(pk3Var);
            default:
                throw new AssertionError();
        }
    }

    @Override
    public boolean c(pk3 pk3Var) {
        pk3Var.peekFully(this.a.d(), 0, 12);
        this.a.O(0);
        if (this.a.p() != 1179011410) {
            return false;
        }
        this.a.P(4);
        return this.a.p() == 541677121;
    }

    public final bw0 f(int i) {
        for (bw0 bw0Var : this.g) {
            if (bw0Var.j(i)) {
                return bw0Var;
            }
        }
        return null;
    }

    public final void g(qw7 qw7Var) throws ParserException {
        pl5 pl5VarC = pl5.c(AviExtractor.FOURCC_hdrl, qw7Var);
        if (pl5VarC.getType() != 1819436136) {
            throw ParserException.createForMalformedContainer("Unexpected header list type " + pl5VarC.getType(), null);
        }
        u30 u30Var = (u30) pl5VarC.b(u30.class);
        if (u30Var == null) {
            throw ParserException.createForMalformedContainer("AviHeader not found", null);
        }
        this.e = u30Var;
        this.f = ((long) u30Var.c) * ((long) u30Var.a);
        ArrayList arrayList = new ArrayList();
        dgb it = pl5VarC.a.iterator();
        int i = 0;
        while (it.hasNext()) {
            s30 s30Var = (s30) it.next();
            if (s30Var.getType() == 1819440243) {
                int i2 = i + 1;
                bw0 bw0VarJ = j((pl5) s30Var, i);
                if (bw0VarJ != null) {
                    arrayList.add(bw0VarJ);
                }
                i = i2;
            }
        }
        this.g = (bw0[]) arrayList.toArray(new bw0[0]);
        this.d.endTracks();
    }

    public final void h(qw7 qw7Var) {
        long jI = i(qw7Var);
        while (qw7Var.a() >= 16) {
            int iP = qw7Var.p();
            int iP2 = qw7Var.p();
            long jP = ((long) qw7Var.p()) + jI;
            qw7Var.p();
            bw0 bw0VarF = f(iP);
            if (bw0VarF != null) {
                if ((iP2 & 16) == 16) {
                    bw0VarF.b(jP);
                }
                bw0VarF.k();
            }
        }
        for (bw0 bw0Var : this.g) {
            bw0Var.c();
        }
        this.n = true;
        this.d.d(new b(this.f));
    }

    public final long i(qw7 qw7Var) {
        if (qw7Var.a() < 16) {
            return 0L;
        }
        int iE = qw7Var.e();
        qw7Var.P(8);
        long jP = qw7Var.p();
        long j = this.k;
        long j2 = jP <= j ? j + 8 : 0L;
        qw7Var.O(iE);
        return j2;
    }

    public final bw0 j(pl5 pl5Var, int i) {
        v30 v30Var = (v30) pl5Var.b(v30.class);
        oy9 oy9Var = (oy9) pl5Var.b(oy9.class);
        if (v30Var == null) {
            op5.i("AviExtractor", "Missing Stream Header");
            return null;
        }
        if (oy9Var == null) {
            op5.i("AviExtractor", "Missing Stream Format");
            return null;
        }
        long jA = v30Var.a();
        k kVar = oy9Var.a;
        k.b bVarB = kVar.b();
        bVarB.R(i);
        int i2 = v30Var.f;
        if (i2 != 0) {
            bVarB.W(i2);
        }
        ry9 ry9Var = (ry9) pl5Var.b(ry9.class);
        if (ry9Var != null) {
            bVarB.U(ry9Var.a);
        }
        int iF = qp6.f(kVar.m);
        if (iF != 1 && iF != 2) {
            return null;
        }
        fva fvaVarTrack = this.d.track(i, iF);
        fvaVarTrack.b(bVarB.E());
        bw0 bw0Var = new bw0(i, iF, jA, v30Var.e, fvaVarTrack);
        this.f = jA;
        return bw0Var;
    }

    public final int k(pk3 pk3Var) {
        if (pk3Var.getPosition() >= this.l) {
            return -1;
        }
        bw0 bw0Var = this.i;
        if (bw0Var == null) {
            e(pk3Var);
            pk3Var.peekFully(this.a.d(), 0, 12);
            this.a.O(0);
            int iP = this.a.p();
            if (iP == 1414744396) {
                this.a.O(8);
                pk3Var.skipFully(this.a.p() != 1769369453 ? 8 : 12);
                pk3Var.resetPeekPosition();
                return 0;
            }
            int iP2 = this.a.p();
            if (iP == 1263424842) {
                this.h = pk3Var.getPosition() + ((long) iP2) + 8;
                return 0;
            }
            pk3Var.skipFully(8);
            pk3Var.resetPeekPosition();
            bw0 bw0VarF = f(iP);
            if (bw0VarF == null) {
                this.h = pk3Var.getPosition() + ((long) iP2);
                return 0;
            }
            bw0VarF.n(iP2);
            this.i = bw0VarF;
        } else if (bw0Var.m(pk3Var)) {
            this.i = null;
        }
        return 0;
    }

    public final boolean l(pk3 pk3Var, id8 id8Var) {
        boolean z;
        if (this.h != -1) {
            long position = pk3Var.getPosition();
            long j = this.h;
            if (j < position || j > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + position) {
                id8Var.a = j;
                z = true;
            } else {
                pk3Var.skipFully((int) (j - position));
                z = false;
            }
        } else {
            z = false;
        }
        this.h = -1L;
        return z;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        this.h = -1L;
        this.i = null;
        for (bw0 bw0Var : this.g) {
            bw0Var.o(j);
        }
        if (j != 0) {
            this.c = 6;
        } else if (this.g.length == 0) {
            this.c = 0;
        } else {
            this.c = 3;
        }
    }
}
