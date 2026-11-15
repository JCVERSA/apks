package d3;

import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import h3.s;
import java.io.EOFException;
import java.math.RoundingMode;
import java.util.List;
import java.util.Map;
import k2.e0;
import k2.g0;
import k2.i0;
import k2.l0;
import k2.q;
import k2.r;
import k2.s0;
import k2.t;
import k2.w;
import k2.x;
import y2.l;
import y2.n;

public final class f implements r {

    public static final x f58856v = new x() {
        @Override
        public x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override
        public x b(int i10) {
            return w.b(this, i10);
        }

        @Override
        public r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override
        public final r[] createExtractors() {
            return f.q();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    private static final y2.h.a f58857w = new y2.h.a() {
        @Override
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            return f.r(i10, i11, i12, i13, i14);
        }
    };

    private final int f58858a;

    private final long f58859b;

    private final j0 f58860c;

    private final i0.a f58861d;

    private final e0 f58862e;

    private final g0 f58863f;

    private final s0 f58864g;

    private t f58865h;

    private s0 f58866i;

    private s0 f58867j;

    private int f58868k;

    private androidx.media3.common.x f58869l;

    private long f58870m;

    private long f58871n;

    private long f58872o;

    private long f58873p;

    private int f58874q;

    private g f58875r;

    private boolean f58876s;

    private boolean f58877t;

    private long f58878u;

    public f() {
        this(0);
    }

    private void h() {
        androidx.media3.common.util.a.i(this.f58866i);
        a1.i(this.f58865h);
    }

    private g i(k2.s sVar) {
        long jN;
        long jA;
        g gVarT = t(sVar);
        c cVarS = s(this.f58869l, sVar.getPosition());
        if (this.f58876s) {
            return new g.a();
        }
        if ((this.f58858a & 4) != 0) {
            if (cVarS != null) {
                jN = cVarS.getDurationUs();
                jA = cVarS.a();
            } else if (gVarT != null) {
                jN = gVarT.getDurationUs();
                jA = gVarT.a();
            } else {
                jN = n(this.f58869l);
                jA = -1;
            }
            gVarT = new b(jN, sVar.getPosition(), jA);
        } else if (cVarS != null) {
            gVarT = cVarS;
        } else if (gVarT == null) {
            gVarT = null;
        }
        if (gVarT == null || (!gVarT.isSeekable() && (this.f58858a & 1) != 0)) {
            gVarT = m(sVar, (this.f58858a & 2) != 0);
        }
        if (gVarT != null) {
            this.f58866i.f(gVarT.getDurationUs());
        }
        return gVarT;
    }

    private long j(long j10) {
        return this.f58870m + ((j10 * 1000000) / ((long) this.f58861d.f63616d));
    }

    private g l(long j10, i iVar, long j11) {
        long j12;
        long j13;
        long jA = iVar.a();
        if (jA == C.TIME_UNSET) {
            return null;
        }
        long j14 = iVar.f58886c;
        if (j14 != -1) {
            long j15 = j10 + j14;
            j12 = j14 - ((long) iVar.f58884a.f63615c);
            j13 = j15;
        } else {
            if (j11 == -1) {
                return null;
            }
            j12 = (j11 - j10) - ((long) iVar.f58884a.f63615c);
            j13 = j11;
        }
        long j16 = j12;
        RoundingMode roundingMode = RoundingMode.HALF_UP;
        return new a(j13, j10 + ((long) iVar.f58884a.f63615c), Ints.d(a1.g1(j16, 8000000L, jA, roundingMode)), Ints.d(com.google.common.math.f.c(j16, iVar.f58885b, roundingMode)), false);
    }

    private g m(k2.s sVar, boolean z10) {
        sVar.peekFully(this.f58860c.e(), 0, 4);
        this.f58860c.W(0);
        this.f58861d.a(this.f58860c.q());
        return new a(sVar.getLength(), sVar.getPosition(), this.f58861d, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static long n(androidx.media3.common.x xVar) {
        if (xVar == null) {
            return C.TIME_UNSET;
        }
        int iE = xVar.e();
        for (int i10 = 0; i10 < iE; i10++) {
            androidx.media3.common.x.a aVarD = xVar.d(i10);
            if (aVarD instanceof n) {
                n nVar = (n) aVarD;
                if (nVar.f76117a.equals("TLEN")) {
                    return a1.R0(Long.parseLong((String) nVar.f76131d.get(0)));
                }
            }
        }
        return C.TIME_UNSET;
    }

    private static int o(j0 j0Var, int i10) {
        if (j0Var.g() >= i10 + 4) {
            j0Var.W(i10);
            int iQ = j0Var.q();
            if (iQ == 1483304551 || iQ == 1231971951) {
                return iQ;
            }
        }
        if (j0Var.g() < 40) {
            return 0;
        }
        j0Var.W(36);
        return j0Var.q() == 1447187017 ? 1447187017 : 0;
    }

    private static boolean p(int i10, long j10) {
        return ((long) (i10 & (-128000))) == (j10 & (-128000));
    }

    public static r[] q() {
        return new r[]{new f()};
    }

    public static boolean r(int i10, int i11, int i12, int i13, int i14) {
        return (i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2));
    }

    private static c s(androidx.media3.common.x xVar, long j10) {
        if (xVar == null) {
            return null;
        }
        int iE = xVar.e();
        for (int i10 = 0; i10 < iE; i10++) {
            androidx.media3.common.x.a aVarD = xVar.d(i10);
            if (aVarD instanceof l) {
                return c.b(j10, (l) aVarD, n(xVar));
            }
        }
        return null;
    }

    private g t(k2.s sVar) {
        int i10;
        int i11;
        j0 j0Var = new j0(this.f58861d.f63615c);
        sVar.peekFully(j0Var.e(), 0, this.f58861d.f63615c);
        i0.a aVar = this.f58861d;
        int i12 = 21;
        if ((aVar.f63613a & 1) != 0) {
            if (aVar.f63617e != 1) {
                i12 = 36;
            }
        } else if (aVar.f63617e == 1) {
            i12 = 13;
        }
        int iO = o(j0Var, i12);
        if (iO != 1231971951) {
            if (iO == 1447187017) {
                h hVarB = h.b(sVar.getLength(), sVar.getPosition(), this.f58861d, j0Var);
                sVar.skipFully(this.f58861d.f63615c);
                return hVarB;
            }
            if (iO != 1483304551) {
                sVar.resetPeekPosition();
                return null;
            }
        }
        i iVarB = i.b(this.f58861d, j0Var);
        if (!this.f58862e.a() && (i10 = iVarB.f58887d) != -1 && (i11 = iVarB.f58888e) != -1) {
            e0 e0Var = this.f58862e;
            e0Var.f63572a = i10;
            e0Var.f63573b = i11;
        }
        long position = sVar.getPosition();
        if (sVar.getLength() != -1 && iVarB.f58886c != -1 && sVar.getLength() != iVarB.f58886c + position) {
            u.f("Mp3Extractor", "Data size mismatch between stream (" + sVar.getLength() + ") and Xing frame (" + (iVarB.f58886c + position) + "), using Xing value.");
        }
        sVar.skipFully(this.f58861d.f63615c);
        return iO == 1483304551 ? j.b(iVarB, position) : l(position, iVarB, sVar.getLength());
    }

    private void u() {
        g gVar = this.f58875r;
        if ((gVar instanceof a) && gVar.isSeekable()) {
            long j10 = this.f58873p;
            if (j10 == -1 || j10 == this.f58875r.a()) {
                return;
            }
            this.f58875r = ((a) this.f58875r).e(this.f58873p);
            ((t) androidx.media3.common.util.a.e(this.f58865h)).d(this.f58875r);
            ((s0) androidx.media3.common.util.a.e(this.f58866i)).f(this.f58875r.getDurationUs());
        }
    }

    private boolean v(k2.s sVar) {
        g gVar = this.f58875r;
        if (gVar != null) {
            long jA = gVar.a();
            if (jA != -1 && sVar.getPeekPosition() > jA - 4) {
                return true;
            }
        }
        try {
            return !sVar.peekFully(this.f58860c.e(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int w(k2.s sVar) {
        if (this.f58868k == 0) {
            try {
                y(sVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f58875r == null) {
            g gVarI = i(sVar);
            this.f58875r = gVarI;
            this.f58865h.d(gVarI);
            androidx.media3.common.r.b bVarN0 = new androidx.media3.common.r.b().U(MimeTypes.AUDIO_MPEG).u0(this.f58861d.f63614b).k0(4096).R(this.f58861d.f63617e).v0(this.f58861d.f63616d).Z(this.f58862e.f63572a).a0(this.f58862e.f63573b).n0((this.f58858a & 8) != 0 ? null : this.f58869l);
            if (this.f58875r.g() != -2147483647) {
                bVarN0.Q(this.f58875r.g());
            }
            this.f58867j.d(bVarN0.N());
            this.f58872o = sVar.getPosition();
        } else if (this.f58872o != 0) {
            long position = sVar.getPosition();
            long j10 = this.f58872o;
            if (position < j10) {
                sVar.skipFully((int) (j10 - position));
            }
        }
        return x(sVar);
    }

    private int x(k2.s sVar) {
        if (this.f58874q == 0) {
            sVar.resetPeekPosition();
            if (v(sVar)) {
                return -1;
            }
            this.f58860c.W(0);
            int iQ = this.f58860c.q();
            if (!p(iQ, this.f58868k) || i0.j(iQ) == -1) {
                sVar.skipFully(1);
                this.f58868k = 0;
                return 0;
            }
            this.f58861d.a(iQ);
            if (this.f58870m == C.TIME_UNSET) {
                this.f58870m = this.f58875r.getTimeUs(sVar.getPosition());
                if (this.f58859b != C.TIME_UNSET) {
                    this.f58870m += this.f58859b - this.f58875r.getTimeUs(0L);
                }
            }
            this.f58874q = this.f58861d.f63615c;
            long position = sVar.getPosition();
            i0.a aVar = this.f58861d;
            this.f58873p = position + ((long) aVar.f63615c);
            g gVar = this.f58875r;
            if (gVar instanceof b) {
                b bVar = (b) gVar;
                bVar.c(j(this.f58871n + ((long) aVar.f63619g)), this.f58873p);
                if (this.f58877t && bVar.b(this.f58878u)) {
                    this.f58877t = false;
                    this.f58867j = this.f58866i;
                }
            }
        }
        int iE = this.f58867j.e(sVar, this.f58874q, true);
        if (iE == -1) {
            return -1;
        }
        int i10 = this.f58874q - iE;
        this.f58874q = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f58867j.b(j(this.f58871n), 1, this.f58861d.f63615c, 0, null);
        this.f58871n += (long) this.f58861d.f63619g;
        this.f58874q = 0;
        return 0;
    }

    private boolean y(k2.s sVar, boolean z10) throws EOFException {
        int peekPosition;
        int i10;
        int iJ;
        int i11 = z10 ? 32768 : 131072;
        sVar.resetPeekPosition();
        if (sVar.getPosition() == 0) {
            androidx.media3.common.x xVarA = this.f58863f.a(sVar, (this.f58858a & 8) == 0 ? null : f58857w);
            this.f58869l = xVarA;
            if (xVarA != null) {
                this.f58862e.c(xVarA);
            }
            peekPosition = (int) sVar.getPeekPosition();
            if (!z10) {
                sVar.skipFully(peekPosition);
            }
            i10 = 0;
        } else {
            peekPosition = 0;
            i10 = 0;
        }
        int i12 = i10;
        int i13 = i12;
        while (true) {
            if (v(sVar)) {
                if (i12 > 0) {
                    break;
                }
                u();
                throw new EOFException();
            }
            this.f58860c.W(0);
            int iQ = this.f58860c.q();
            if ((i10 == 0 || p(iQ, i10)) && (iJ = i0.j(iQ)) != -1) {
                i12++;
                if (i12 != 1) {
                    if (i12 == 4) {
                        break;
                    }
                } else {
                    this.f58861d.a(iQ);
                    i10 = iQ;
                }
                sVar.advancePeekPosition(iJ - 4);
            } else {
                int i14 = i13 + 1;
                if (i13 == i11) {
                    if (z10) {
                        return false;
                    }
                    u();
                    throw new EOFException();
                }
                if (z10) {
                    sVar.resetPeekPosition();
                    sVar.advancePeekPosition(peekPosition + i14);
                } else {
                    sVar.skipFully(1);
                }
                i12 = 0;
                i13 = i14;
                i10 = 0;
            }
        }
        if (z10) {
            sVar.skipFully(peekPosition + i13);
        } else {
            sVar.resetPeekPosition();
        }
        this.f58868k = i10;
        return true;
    }

    @Override
    public boolean b(k2.s sVar) {
        return y(sVar, true);
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) {
        h();
        int iW = w(sVar);
        if (iW == -1 && (this.f58875r instanceof b)) {
            long j10 = j(this.f58871n);
            if (this.f58875r.getDurationUs() != j10) {
                ((b) this.f58875r).d(j10);
                this.f58865h.d(this.f58875r);
                this.f58866i.f(this.f58875r.getDurationUs());
            }
        }
        return iW;
    }

    @Override
    public void e(t tVar) {
        this.f58865h = tVar;
        s0 s0VarTrack = tVar.track(0, 1);
        this.f58866i = s0VarTrack;
        this.f58867j = s0VarTrack;
        this.f58865h.endTracks();
    }

    @Override
    public List f() {
        return q.a(this);
    }

    public void k() {
        this.f58876s = true;
    }

    @Override
    public void seek(long j10, long j11) {
        this.f58868k = 0;
        this.f58870m = C.TIME_UNSET;
        this.f58871n = 0L;
        this.f58874q = 0;
        this.f58878u = j11;
        g gVar = this.f58875r;
        if (!(gVar instanceof b) || ((b) gVar).b(j11)) {
            return;
        }
        this.f58877t = true;
        this.f58867j = this.f58864g;
    }

    public f(int i10) {
        this(i10, C.TIME_UNSET);
    }

    public f(int i10, long j10) {
        this.f58858a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f58859b = j10;
        this.f58860c = new j0(10);
        this.f58861d = new i0.a();
        this.f58862e = new e0();
        this.f58870m = C.TIME_UNSET;
        this.f58863f = new g0();
        k2.n nVar = new k2.n();
        this.f58864g = nVar;
        this.f58867j = nVar;
        this.f58873p = -1L;
    }

    @Override
    public void release() {
    }
}
