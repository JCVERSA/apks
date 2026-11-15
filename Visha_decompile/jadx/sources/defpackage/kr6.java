package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import java.io.EOFException;

public final class kr6 implements nk3 {
    public static final uk3 u = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return kr6.n();
        }
    };
    public static final lx4.a v = new lx4.a() {
        @Override
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            return kr6.o(i, i2, i3, i4, i5);
        }
    };
    public final int a;
    public final long b;
    public final qw7 c;
    public final ur6.a d;
    public final ed4 e;
    public final mx4 f;
    public final fva g;
    public qk3 h;
    public fva i;
    public fva j;
    public int k;
    public Metadata l;
    public long m;
    public long n;
    public long o;
    public int p;
    public ma9 q;
    public boolean r;
    public boolean s;
    public long t;

    public kr6() {
        this(0);
    }

    private void f() {
        zi.i(this.i);
        blb.j(this.h);
    }

    public static long k(Metadata metadata) {
        if (metadata == null) {
            return C.TIME_UNSET;
        }
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                if (textInformationFrame.id.equals("TLEN")) {
                    return blb.t0(Long.parseLong(textInformationFrame.value));
                }
            }
        }
        return C.TIME_UNSET;
    }

    public static int l(qw7 qw7Var, int i) {
        if (qw7Var.f() >= i + 4) {
            qw7Var.O(i);
            int iN = qw7Var.n();
            if (iN == 1483304551 || iN == 1231971951) {
                return iN;
            }
        }
        if (qw7Var.f() < 40) {
            return 0;
        }
        qw7Var.O(36);
        return qw7Var.n() == 1447187017 ? 1447187017 : 0;
    }

    public static boolean m(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    public static nk3[] n() {
        return new nk3[]{new kr6()};
    }

    public static boolean o(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    public static bq6 p(Metadata metadata, long j) {
        if (metadata == null) {
            return null;
        }
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof MlltFrame) {
                return bq6.a(j, (MlltFrame) entry, k(metadata));
            }
        }
        return null;
    }

    private int t(pk3 pk3Var) {
        if (this.p == 0) {
            pk3Var.resetPeekPosition();
            if (r(pk3Var)) {
                return -1;
            }
            this.c.O(0);
            int iN = this.c.n();
            if (!m(iN, this.k) || ur6.j(iN) == -1) {
                pk3Var.skipFully(1);
                this.k = 0;
                return 0;
            }
            this.d.a(iN);
            if (this.m == C.TIME_UNSET) {
                this.m = this.q.getTimeUs(pk3Var.getPosition());
                if (this.b != C.TIME_UNSET) {
                    this.m += this.b - this.q.getTimeUs(0L);
                }
            }
            ur6.a aVar = this.d;
            this.p = aVar.c;
            ma9 ma9Var = this.q;
            if (ma9Var instanceof kz4) {
                kz4 kz4Var = (kz4) ma9Var;
                kz4Var.b(h(this.n + ((long) aVar.g)), pk3Var.getPosition() + ((long) this.d.c));
                if (this.s && kz4Var.a(this.t)) {
                    this.s = false;
                    this.j = this.i;
                }
            }
        }
        int iC = this.j.c(pk3Var, this.p, true);
        if (iC == -1) {
            return -1;
        }
        int i = this.p - iC;
        this.p = i;
        if (i > 0) {
            return 0;
        }
        this.j.e(h(this.n), 1, this.d.c, 0, null);
        this.n += (long) this.d.g;
        this.p = 0;
        return 0;
    }

    @Override
    public void a(qk3 qk3Var) {
        this.h = qk3Var;
        fva fvaVarTrack = qk3Var.track(0, 1);
        this.i = fvaVarTrack;
        this.j = fvaVarTrack;
        this.h.endTracks();
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        f();
        int iS = s(pk3Var);
        if (iS == -1 && (this.q instanceof kz4)) {
            long jH = h(this.n);
            if (this.q.getDurationUs() != jH) {
                ((kz4) this.q).c(jH);
                this.h.d(this.q);
            }
        }
        return iS;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        return u(pk3Var, true);
    }

    public final ma9 g(pk3 pk3Var) {
        long jK;
        long dataEndPosition;
        ma9 ma9VarQ = q(pk3Var);
        bq6 bq6VarP = p(this.l, pk3Var.getPosition());
        if (this.r) {
            return new ma9.a();
        }
        if ((this.a & 4) != 0) {
            if (bq6VarP != null) {
                jK = bq6VarP.getDurationUs();
                dataEndPosition = bq6VarP.getDataEndPosition();
            } else if (ma9VarQ != null) {
                jK = ma9VarQ.getDurationUs();
                dataEndPosition = ma9VarQ.getDataEndPosition();
            } else {
                jK = k(this.l);
                dataEndPosition = -1;
            }
            ma9VarQ = new kz4(jK, pk3Var.getPosition(), dataEndPosition);
        } else if (bq6VarP != null) {
            ma9VarQ = bq6VarP;
        } else if (ma9VarQ == null) {
            ma9VarQ = null;
        }
        if (ma9VarQ == null || !(ma9VarQ.isSeekable() || (this.a & 1) == 0)) {
            return j(pk3Var, (this.a & 2) != 0);
        }
        return ma9VarQ;
    }

    public final long h(long j) {
        return this.m + ((j * 1000000) / ((long) this.d.d));
    }

    public void i() {
        this.r = true;
    }

    public final ma9 j(pk3 pk3Var, boolean z) {
        pk3Var.peekFully(this.c.d(), 0, 4);
        this.c.O(0);
        this.d.a(this.c.n());
        return new mf1(pk3Var.getLength(), pk3Var.getPosition(), this.d, z);
    }

    public final ma9 q(pk3 pk3Var) {
        qw7 qw7Var = new qw7(this.d.c);
        pk3Var.peekFully(qw7Var.d(), 0, this.d.c);
        ur6.a aVar = this.d;
        int i = 21;
        if ((aVar.a & 1) != 0) {
            if (aVar.e != 1) {
                i = 36;
            }
        } else if (aVar.e == 1) {
            i = 13;
        }
        int i2 = i;
        int iL = l(qw7Var, i2);
        if (iL != 1483304551 && iL != 1231971951) {
            if (iL != 1447187017) {
                pk3Var.resetPeekPosition();
                return null;
            }
            hob hobVarA = hob.a(pk3Var.getLength(), pk3Var.getPosition(), this.d, qw7Var);
            pk3Var.skipFully(this.d.c);
            return hobVarA;
        }
        vrc vrcVarA = vrc.a(pk3Var.getLength(), pk3Var.getPosition(), this.d, qw7Var);
        if (vrcVarA != null && !this.e.a()) {
            pk3Var.resetPeekPosition();
            pk3Var.advancePeekPosition(i2 + 141);
            pk3Var.peekFully(this.c.d(), 0, 3);
            this.c.O(0);
            this.e.d(this.c.F());
        }
        pk3Var.skipFully(this.d.c);
        return (vrcVarA == null || vrcVarA.isSeekable() || iL != 1231971951) ? vrcVarA : j(pk3Var, false);
    }

    public final boolean r(pk3 pk3Var) {
        ma9 ma9Var = this.q;
        if (ma9Var != null) {
            long dataEndPosition = ma9Var.getDataEndPosition();
            if (dataEndPosition != -1 && pk3Var.getPeekPosition() > dataEndPosition - 4) {
                return true;
            }
        }
        try {
            return !pk3Var.peekFully(this.c.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    @Override
    public void release() {
    }

    public final int s(pk3 pk3Var) throws ParserException {
        if (this.k == 0) {
            try {
                u(pk3Var, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.q == null) {
            ma9 ma9VarG = g(pk3Var);
            this.q = ma9VarG;
            this.h.d(ma9VarG);
            this.j.b(new k.b().e0(this.d.b).W(4096).H(this.d.e).f0(this.d.d).N(this.e.a).O(this.e.b).X((this.a & 8) != 0 ? null : this.l).E());
            this.o = pk3Var.getPosition();
        } else if (this.o != 0) {
            long position = pk3Var.getPosition();
            long j = this.o;
            if (position < j) {
                pk3Var.skipFully((int) (j - position));
            }
        }
        return t(pk3Var);
    }

    @Override
    public void seek(long j, long j2) {
        this.k = 0;
        this.m = C.TIME_UNSET;
        this.n = 0L;
        this.p = 0;
        this.t = j2;
        ma9 ma9Var = this.q;
        if (!(ma9Var instanceof kz4) || ((kz4) ma9Var).a(j2)) {
            return;
        }
        this.s = true;
        this.j = this.g;
    }

    public final boolean u(pk3 pk3Var, boolean z) throws ParserException, EOFException {
        int peekPosition;
        int i;
        int iJ;
        int i2 = z ? 32768 : 131072;
        pk3Var.resetPeekPosition();
        if (pk3Var.getPosition() == 0) {
            Metadata metadataA = this.f.a(pk3Var, (this.a & 8) == 0 ? null : v);
            this.l = metadataA;
            if (metadataA != null) {
                this.e.c(metadataA);
            }
            peekPosition = (int) pk3Var.getPeekPosition();
            if (!z) {
                pk3Var.skipFully(peekPosition);
            }
            i = 0;
        } else {
            peekPosition = 0;
            i = 0;
        }
        int i3 = i;
        int i4 = i3;
        while (true) {
            if (r(pk3Var)) {
                if (i3 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.c.O(0);
            int iN = this.c.n();
            if ((i == 0 || m(iN, i)) && (iJ = ur6.j(iN)) != -1) {
                i3++;
                if (i3 != 1) {
                    if (i3 == 4) {
                        break;
                    }
                } else {
                    this.d.a(iN);
                    i = iN;
                }
                pk3Var.advancePeekPosition(iJ - 4);
            } else {
                int i5 = i4 + 1;
                if (i4 == i2) {
                    if (z) {
                        return false;
                    }
                    throw ParserException.createForMalformedContainer("Searched too many bytes.", null);
                }
                if (z) {
                    pk3Var.resetPeekPosition();
                    pk3Var.advancePeekPosition(peekPosition + i5);
                } else {
                    pk3Var.skipFully(1);
                }
                i3 = 0;
                i4 = i5;
                i = 0;
            }
        }
        if (z) {
            pk3Var.skipFully(peekPosition + i4);
        } else {
            pk3Var.resetPeekPosition();
        }
        this.k = i;
        return true;
    }

    public kr6(int i) {
        this(i, C.TIME_UNSET);
    }

    public kr6(int i, long j) {
        this.a = (i & 2) != 0 ? i | 1 : i;
        this.b = j;
        this.c = new qw7(10);
        this.d = new ur6.a();
        this.e = new ed4();
        this.m = C.TIME_UNSET;
        this.f = new mx4();
        s33 s33Var = new s33();
        this.g = s33Var;
        this.j = s33Var;
    }
}
