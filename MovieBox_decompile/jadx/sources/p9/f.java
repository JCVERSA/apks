package p9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.a0;
import i9.e0;
import i9.k;
import i9.l;
import i9.m;
import i9.n;
import i9.q;
import i9.r;
import i9.x;
import i9.y;
import java.io.EOFException;
import java.util.Map;

public final class f implements l {

    public static final r f69084u = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return f.n();
        }
    };

    private static final com.google.android.exoplayer2.metadata.id3.b.a f69085v = new com.google.android.exoplayer2.metadata.id3.b.a() {
        @Override
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            return f.o(i10, i11, i12, i13, i14);
        }
    };

    private final int f69086a;

    private final long f69087b;

    private final d0 f69088c;

    private final b0.a f69089d;

    private final x f69090e;

    private final y f69091f;

    private final e0 f69092g;

    private n f69093h;

    private e0 f69094i;

    private e0 f69095j;

    private int f69096k;

    private Metadata f69097l;

    private long f69098m;

    private long f69099n;

    private long f69100o;

    private int f69101p;

    private g f69102q;

    private boolean f69103r;

    private boolean f69104s;

    private long f69105t;

    public f() {
        this(0);
    }

    private void f() {
        com.google.android.exoplayer2.util.a.i(this.f69094i);
        p0.j(this.f69093h);
    }

    private g g(m mVar) {
        long jK;
        long jA;
        g gVarQ = q(mVar);
        c cVarP = p(this.f69097l, mVar.getPosition());
        if (this.f69103r) {
            return new g.a();
        }
        if ((this.f69086a & 4) != 0) {
            if (cVarP != null) {
                jK = cVarP.getDurationUs();
                jA = cVarP.a();
            } else if (gVarQ != null) {
                jK = gVarQ.getDurationUs();
                jA = gVarQ.a();
            } else {
                jK = k(this.f69097l);
                jA = -1;
            }
            gVarQ = new b(jK, mVar.getPosition(), jA);
        } else if (cVarP != null) {
            gVarQ = cVarP;
        } else if (gVarQ == null) {
            gVarQ = null;
        }
        if (gVarQ == null || !(gVarQ.isSeekable() || (this.f69086a & 1) == 0)) {
            return j(mVar, (this.f69086a & 2) != 0);
        }
        return gVarQ;
    }

    private long h(long j10) {
        return this.f69098m + ((j10 * 1000000) / ((long) this.f69089d.f23932d));
    }

    private g j(m mVar, boolean z10) {
        mVar.peekFully(this.f69088c.d(), 0, 4);
        this.f69088c.P(0);
        this.f69089d.a(this.f69088c.n());
        return new a(mVar.getLength(), mVar.getPosition(), this.f69089d, z10);
    }

    private static long k(Metadata metadata) {
        if (metadata == null) {
            return C.TIME_UNSET;
        }
        int length = metadata.length();
        for (int i10 = 0; i10 < length; i10++) {
            Metadata.Entry entry = metadata.get(i10);
            if (entry instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                if (textInformationFrame.f24796id.equals("TLEN")) {
                    return p0.B0(Long.parseLong(textInformationFrame.value));
                }
            }
        }
        return C.TIME_UNSET;
    }

    private static int l(d0 d0Var, int i10) {
        if (d0Var.f() >= i10 + 4) {
            d0Var.P(i10);
            int iN = d0Var.n();
            if (iN == 1483304551 || iN == 1231971951) {
                return iN;
            }
        }
        if (d0Var.f() < 40) {
            return 0;
        }
        d0Var.P(36);
        return d0Var.n() == 1447187017 ? 1447187017 : 0;
    }

    private static boolean m(int i10, long j10) {
        return ((long) (i10 & (-128000))) == (j10 & (-128000));
    }

    public static l[] n() {
        return new l[]{new f()};
    }

    public static boolean o(int i10, int i11, int i12, int i13, int i14) {
        return (i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2));
    }

    private static c p(Metadata metadata, long j10) {
        if (metadata == null) {
            return null;
        }
        int length = metadata.length();
        for (int i10 = 0; i10 < length; i10++) {
            Metadata.Entry entry = metadata.get(i10);
            if (entry instanceof MlltFrame) {
                return c.b(j10, (MlltFrame) entry, k(metadata));
            }
        }
        return null;
    }

    private g q(m mVar) {
        d0 d0Var = new d0(this.f69089d.f23931c);
        mVar.peekFully(d0Var.d(), 0, this.f69089d.f23931c);
        b0.a aVar = this.f69089d;
        int i10 = 21;
        if ((aVar.f23929a & 1) != 0) {
            if (aVar.f23933e != 1) {
                i10 = 36;
            }
        } else if (aVar.f23933e == 1) {
            i10 = 13;
        }
        int i11 = i10;
        int iL = l(d0Var, i11);
        if (iL != 1483304551 && iL != 1231971951) {
            if (iL != 1447187017) {
                mVar.resetPeekPosition();
                return null;
            }
            h hVarB = h.b(mVar.getLength(), mVar.getPosition(), this.f69089d, d0Var);
            mVar.skipFully(this.f69089d.f23931c);
            return hVarB;
        }
        i iVarB = i.b(mVar.getLength(), mVar.getPosition(), this.f69089d, d0Var);
        if (iVarB != null && !this.f69090e.a()) {
            mVar.resetPeekPosition();
            mVar.advancePeekPosition(i11 + 141);
            mVar.peekFully(this.f69088c.d(), 0, 3);
            this.f69088c.P(0);
            this.f69090e.d(this.f69088c.G());
        }
        mVar.skipFully(this.f69089d.f23931c);
        return (iVarB == null || iVarB.isSeekable() || iL != 1231971951) ? iVarB : j(mVar, false);
    }

    private boolean r(m mVar) {
        g gVar = this.f69102q;
        if (gVar != null) {
            long jA = gVar.a();
            if (jA != -1 && mVar.getPeekPosition() > jA - 4) {
                return true;
            }
        }
        try {
            return !mVar.peekFully(this.f69088c.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int s(m mVar) throws ParserException {
        if (this.f69096k == 0) {
            try {
                u(mVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f69102q == null) {
            g gVarG = g(mVar);
            this.f69102q = gVarG;
            this.f69093h.g(gVarG);
            this.f69095j.d(new p1.b().e0(this.f69089d.f23930b).W(4096).H(this.f69089d.f23933e).f0(this.f69089d.f23932d).N(this.f69090e.f61990a).O(this.f69090e.f61991b).X((this.f69086a & 8) != 0 ? null : this.f69097l).E());
            this.f69100o = mVar.getPosition();
        } else if (this.f69100o != 0) {
            long position = mVar.getPosition();
            long j10 = this.f69100o;
            if (position < j10) {
                mVar.skipFully((int) (j10 - position));
            }
        }
        return t(mVar);
    }

    private int t(m mVar) {
        if (this.f69101p == 0) {
            mVar.resetPeekPosition();
            if (r(mVar)) {
                return -1;
            }
            this.f69088c.P(0);
            int iN = this.f69088c.n();
            if (!m(iN, this.f69096k) || b0.j(iN) == -1) {
                mVar.skipFully(1);
                this.f69096k = 0;
                return 0;
            }
            this.f69089d.a(iN);
            if (this.f69098m == C.TIME_UNSET) {
                this.f69098m = this.f69102q.getTimeUs(mVar.getPosition());
                if (this.f69087b != C.TIME_UNSET) {
                    this.f69098m += this.f69087b - this.f69102q.getTimeUs(0L);
                }
            }
            b0.a aVar = this.f69089d;
            this.f69101p = aVar.f23931c;
            g gVar = this.f69102q;
            if (gVar instanceof b) {
                b bVar = (b) gVar;
                bVar.c(h(this.f69099n + ((long) aVar.f23935g)), mVar.getPosition() + ((long) this.f69089d.f23931c));
                if (this.f69104s && bVar.b(this.f69105t)) {
                    this.f69104s = false;
                    this.f69095j = this.f69094i;
                }
            }
        }
        int iB = this.f69095j.b(mVar, this.f69101p, true);
        if (iB == -1) {
            return -1;
        }
        int i10 = this.f69101p - iB;
        this.f69101p = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f69095j.e(h(this.f69099n), 1, this.f69089d.f23931c, 0, null);
        this.f69099n += (long) this.f69089d.f23935g;
        this.f69101p = 0;
        return 0;
    }

    private boolean u(m mVar, boolean z10) throws ParserException, EOFException {
        int peekPosition;
        int i10;
        int iJ;
        int i11 = z10 ? 32768 : 131072;
        mVar.resetPeekPosition();
        if (mVar.getPosition() == 0) {
            Metadata metadataA = this.f69091f.a(mVar, (this.f69086a & 8) == 0 ? null : f69085v);
            this.f69097l = metadataA;
            if (metadataA != null) {
                this.f69090e.c(metadataA);
            }
            peekPosition = (int) mVar.getPeekPosition();
            if (!z10) {
                mVar.skipFully(peekPosition);
            }
            i10 = 0;
        } else {
            peekPosition = 0;
            i10 = 0;
        }
        int i12 = i10;
        int i13 = i12;
        while (true) {
            if (r(mVar)) {
                if (i12 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.f69088c.P(0);
            int iN = this.f69088c.n();
            if ((i10 == 0 || m(iN, i10)) && (iJ = b0.j(iN)) != -1) {
                i12++;
                if (i12 != 1) {
                    if (i12 == 4) {
                        break;
                    }
                } else {
                    this.f69089d.a(iN);
                    i10 = iN;
                }
                mVar.advancePeekPosition(iJ - 4);
            } else {
                int i14 = i13 + 1;
                if (i13 == i11) {
                    if (z10) {
                        return false;
                    }
                    throw ParserException.createForMalformedContainer("Searched too many bytes.", null);
                }
                if (z10) {
                    mVar.resetPeekPosition();
                    mVar.advancePeekPosition(peekPosition + i14);
                } else {
                    mVar.skipFully(1);
                }
                i12 = 0;
                i13 = i14;
                i10 = 0;
            }
        }
        if (z10) {
            mVar.skipFully(peekPosition + i13);
        } else {
            mVar.resetPeekPosition();
        }
        this.f69096k = i10;
        return true;
    }

    @Override
    public void b(n nVar) {
        this.f69093h = nVar;
        e0 e0VarTrack = nVar.track(0, 1);
        this.f69094i = e0VarTrack;
        this.f69095j = e0VarTrack;
        this.f69093h.endTracks();
    }

    @Override
    public boolean c(m mVar) {
        return u(mVar, true);
    }

    @Override
    public int d(m mVar, a0 a0Var) throws ParserException {
        f();
        int iS = s(mVar);
        if (iS == -1 && (this.f69102q instanceof b)) {
            long jH = h(this.f69099n);
            if (this.f69102q.getDurationUs() != jH) {
                ((b) this.f69102q).d(jH);
                this.f69093h.g(this.f69102q);
            }
        }
        return iS;
    }

    public void i() {
        this.f69103r = true;
    }

    @Override
    public void seek(long j10, long j11) {
        this.f69096k = 0;
        this.f69098m = C.TIME_UNSET;
        this.f69099n = 0L;
        this.f69101p = 0;
        this.f69105t = j11;
        g gVar = this.f69102q;
        if (!(gVar instanceof b) || ((b) gVar).b(j11)) {
            return;
        }
        this.f69104s = true;
        this.f69095j = this.f69092g;
    }

    public f(int i10) {
        this(i10, C.TIME_UNSET);
    }

    public f(int i10, long j10) {
        this.f69086a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f69087b = j10;
        this.f69088c = new d0(10);
        this.f69089d = new b0.a();
        this.f69090e = new x();
        this.f69098m = C.TIME_UNSET;
        this.f69091f = new y();
        k kVar = new k();
        this.f69092g = kVar;
        this.f69095j = kVar;
    }

    @Override
    public void release() {
    }
}
