package q9;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.a0;
import i9.b0;
import i9.c0;
import i9.e0;
import i9.f0;
import i9.x;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class k implements i9.l, b0 {

    public static final i9.r f69493y = new i9.r() {
        @Override
        public i9.l[] c(Uri uri, Map map) {
            return i9.q.a(this, uri, map);
        }

        @Override
        public final i9.l[] createExtractors() {
            return k.n();
        }
    };

    private final int f69494a;

    private final d0 f69495b;

    private final d0 f69496c;

    private final d0 f69497d;

    private final d0 f69498e;

    private final ArrayDeque f69499f;

    private final m f69500g;

    private final List f69501h;

    private int f69502i;

    private int f69503j;

    private long f69504k;

    private int f69505l;

    private d0 f69506m;

    private int f69507n;

    private int f69508o;

    private int f69509p;

    private int f69510q;

    private i9.n f69511r;

    private a[] f69512s;

    private long[][] f69513t;

    private int f69514u;

    private long f69515v;

    private int f69516w;

    private MotionPhotoMetadata f69517x;

    private static final class a {

        public final o f69518a;

        public final r f69519b;

        public final e0 f69520c;

        public final f0 f69521d;

        public int f69522e;

        public a(o oVar, r rVar, e0 e0Var) {
            this.f69518a = oVar;
            this.f69519b = rVar;
            this.f69520c = e0Var;
            this.f69521d = MimeTypes.AUDIO_TRUEHD.equals(oVar.f69540f.f24901l) ? new f0() : null;
        }
    }

    public k() {
        this(0);
    }

    private static boolean A(int i10) {
        return i10 == 1835296868 || i10 == 1836476516 || i10 == 1751411826 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1937011571 || i10 == 1668576371 || i10 == 1701606260 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1953196132 || i10 == 1718909296 || i10 == 1969517665 || i10 == 1801812339 || i10 == 1768715124;
    }

    private void B(a aVar, long j10) {
        r rVar = aVar.f69519b;
        int iA = rVar.a(j10);
        if (iA == -1) {
            iA = rVar.b(j10);
        }
        aVar.f69522e = iA;
    }

    private static int g(int i10) {
        if (i10 != 1751476579) {
            return i10 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] h(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            jArr[i10] = new long[aVarArr[i10].f69519b.f69570b];
            jArr2[i10] = aVarArr[i10].f69519b.f69574f[0];
        }
        long j10 = 0;
        int i11 = 0;
        while (i11 < aVarArr.length) {
            long j11 = Long.MAX_VALUE;
            int i12 = -1;
            for (int i13 = 0; i13 < aVarArr.length; i13++) {
                if (!zArr[i13]) {
                    long j12 = jArr2[i13];
                    if (j12 <= j11) {
                        i12 = i13;
                        j11 = j12;
                    }
                }
            }
            int i14 = iArr[i12];
            long[] jArr3 = jArr[i12];
            jArr3[i14] = j10;
            r rVar = aVarArr[i12].f69519b;
            j10 += (long) rVar.f69572d[i14];
            int i15 = i14 + 1;
            iArr[i12] = i15;
            if (i15 < jArr3.length) {
                jArr2[i12] = rVar.f69574f[i15];
            } else {
                zArr[i12] = true;
                i11++;
            }
        }
        return jArr;
    }

    private void i() {
        this.f69502i = 0;
        this.f69505l = 0;
    }

    private static int k(r rVar, long j10) {
        int iA = rVar.a(j10);
        return iA == -1 ? rVar.b(j10) : iA;
    }

    private int l(long j10) {
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        long j11 = Long.MAX_VALUE;
        boolean z10 = true;
        long j12 = Long.MAX_VALUE;
        boolean z11 = true;
        long j13 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.f69512s;
            if (i12 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i12];
            int i13 = aVar.f69522e;
            r rVar = aVar.f69519b;
            if (i13 != rVar.f69570b) {
                long j14 = rVar.f69571c[i13];
                long j15 = ((long[][]) p0.j(this.f69513t))[i12][i13];
                long j16 = j14 - j10;
                boolean z12 = j16 < 0 || j16 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                if ((!z12 && z11) || (z12 == z11 && j16 < j13)) {
                    z11 = z12;
                    j13 = j16;
                    i11 = i12;
                    j12 = j15;
                }
                if (j15 < j11) {
                    z10 = z12;
                    i10 = i12;
                    j11 = j15;
                }
            }
            i12++;
        }
        return (j11 == Long.MAX_VALUE || !z10 || j12 < j11 + 10485760) ? i11 : i10;
    }

    public static i9.l[] n() {
        return new i9.l[]{new k()};
    }

    private static long o(r rVar, long j10, long j11) {
        int iK = k(rVar, j10);
        return iK == -1 ? j11 : Math.min(rVar.f69571c[iK], j11);
    }

    private void p(i9.m mVar) {
        this.f69497d.L(8);
        mVar.peekFully(this.f69497d.d(), 0, 8);
        b.e(this.f69497d);
        mVar.skipFully(this.f69497d.e());
        mVar.resetPeekPosition();
    }

    private void q(long j10) {
        while (!this.f69499f.isEmpty() && ((q9.a.C0859a) this.f69499f.peek()).f69407b == j10) {
            q9.a.C0859a c0859a = (q9.a.C0859a) this.f69499f.pop();
            if (c0859a.f69406a == 1836019574) {
                t(c0859a);
                this.f69499f.clear();
                this.f69502i = 2;
            } else if (!this.f69499f.isEmpty()) {
                ((q9.a.C0859a) this.f69499f.peek()).d(c0859a);
            }
        }
        if (this.f69502i != 2) {
            i();
        }
    }

    private void r() {
        if (this.f69516w != 2 || (this.f69494a & 2) == 0) {
            return;
        }
        this.f69511r.track(0, 4).d(new p1.b().X(this.f69517x == null ? null : new Metadata(this.f69517x)).E());
        this.f69511r.endTracks();
        this.f69511r.g(new b0.b(C.TIME_UNSET));
    }

    private static int s(d0 d0Var) {
        d0Var.P(8);
        int iG = g(d0Var.n());
        if (iG != 0) {
            return iG;
        }
        d0Var.Q(4);
        while (d0Var.a() > 0) {
            int iG2 = g(d0Var.n());
            if (iG2 != 0) {
                return iG2;
            }
        }
        return 0;
    }

    private void t(q9.a.C0859a c0859a) {
        Metadata metadata;
        Metadata metadata2;
        Metadata metadata3;
        ArrayList arrayList;
        int i10;
        int i11;
        ArrayList arrayList2 = new ArrayList();
        boolean z10 = this.f69516w == 1;
        x xVar = new x();
        q9.a.b bVarG = c0859a.g(1969517665);
        if (bVarG != null) {
            Pair pairB = b.B(bVarG);
            Metadata metadata4 = (Metadata) pairB.first;
            Metadata metadata5 = (Metadata) pairB.second;
            if (metadata4 != null) {
                xVar.c(metadata4);
            }
            metadata2 = metadata5;
            metadata = metadata4;
        } else {
            metadata = null;
            metadata2 = null;
        }
        q9.a.C0859a c0859aF = c0859a.f(1835365473);
        Metadata metadataN = c0859aF != null ? b.n(c0859aF) : null;
        Metadata metadata6 = metadata;
        List listA = b.A(c0859a, xVar, C.TIME_UNSET, null, (this.f69494a & 1) != 0, z10, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return k.m((o) obj);
            }
        });
        int size = listA.size();
        long j10 = C.TIME_UNSET;
        long jMax = -9223372036854775807L;
        int i12 = 0;
        int size2 = -1;
        while (i12 < size) {
            r rVar = (r) listA.get(i12);
            if (rVar.f69570b == 0) {
                arrayList = arrayList2;
                metadata3 = metadata6;
                i10 = 1;
            } else {
                o oVar = rVar.f69569a;
                ArrayList arrayList3 = arrayList2;
                long j11 = oVar.f69539e;
                if (j11 == j10) {
                    j11 = rVar.f69576h;
                }
                jMax = Math.max(jMax, j11);
                a aVar = new a(oVar, rVar, this.f69511r.track(i12, oVar.f69536b));
                int i13 = MimeTypes.AUDIO_TRUEHD.equals(oVar.f69540f.f24901l) ? rVar.f69573e * 16 : rVar.f69573e + 30;
                p1.b bVarB = oVar.f69540f.b();
                bVarB.W(i13);
                if (oVar.f69536b == 2 && j11 > 0 && (i11 = rVar.f69570b) > 1) {
                    bVarB.P(i11 / (j11 / 1000000.0f));
                }
                h.k(oVar.f69536b, xVar, bVarB);
                metadata3 = metadata6;
                h.l(oVar.f69536b, metadata3, metadataN, bVarB, metadata2, this.f69501h.isEmpty() ? null : new Metadata((List<? extends Metadata.Entry>) this.f69501h));
                aVar.f69520c.d(bVarB.E());
                if (oVar.f69536b == 2 && size2 == -1) {
                    size2 = arrayList3.size();
                }
                arrayList = arrayList3;
                arrayList.add(aVar);
                i10 = 1;
            }
            i12 += i10;
            metadata6 = metadata3;
            arrayList2 = arrayList;
            listA = listA;
            size = size;
            j10 = C.TIME_UNSET;
        }
        this.f69514u = size2;
        this.f69515v = jMax;
        a[] aVarArr = (a[]) arrayList2.toArray(new a[0]);
        this.f69512s = aVarArr;
        this.f69513t = h(aVarArr);
        this.f69511r.endTracks();
        this.f69511r.g(this);
    }

    private void u(long j10) {
        if (this.f69503j == 1836086884) {
            int i10 = this.f69505l;
            this.f69517x = new MotionPhotoMetadata(0L, j10, C.TIME_UNSET, j10 + ((long) i10), this.f69504k - ((long) i10));
        }
    }

    private boolean v(i9.m mVar) throws ParserException {
        q9.a.C0859a c0859a;
        if (this.f69505l == 0) {
            if (!mVar.readFully(this.f69498e.d(), 0, 8, true)) {
                r();
                return false;
            }
            this.f69505l = 8;
            this.f69498e.P(0);
            this.f69504k = this.f69498e.F();
            this.f69503j = this.f69498e.n();
        }
        long j10 = this.f69504k;
        if (j10 == 1) {
            mVar.readFully(this.f69498e.d(), 8, 8);
            this.f69505l += 8;
            this.f69504k = this.f69498e.I();
        } else if (j10 == 0) {
            long length = mVar.getLength();
            if (length == -1 && (c0859a = (q9.a.C0859a) this.f69499f.peek()) != null) {
                length = c0859a.f69407b;
            }
            if (length != -1) {
                this.f69504k = (length - mVar.getPosition()) + ((long) this.f69505l);
            }
        }
        if (this.f69504k < this.f69505l) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        if (z(this.f69503j)) {
            long position = mVar.getPosition();
            long j11 = this.f69504k;
            int i10 = this.f69505l;
            long j12 = (position + j11) - ((long) i10);
            if (j11 != i10 && this.f69503j == 1835365473) {
                p(mVar);
            }
            this.f69499f.push(new q9.a.C0859a(this.f69503j, j12));
            if (this.f69504k == this.f69505l) {
                q(j12);
            } else {
                i();
            }
        } else if (A(this.f69503j)) {
            com.google.android.exoplayer2.util.a.g(this.f69505l == 8);
            com.google.android.exoplayer2.util.a.g(this.f69504k <= 2147483647L);
            d0 d0Var = new d0((int) this.f69504k);
            System.arraycopy(this.f69498e.d(), 0, d0Var.d(), 0, 8);
            this.f69506m = d0Var;
            this.f69502i = 1;
        } else {
            u(mVar.getPosition() - ((long) this.f69505l));
            this.f69506m = null;
            this.f69502i = 1;
        }
        return true;
    }

    private boolean w(i9.m mVar, a0 a0Var) {
        boolean z10;
        long j10 = this.f69504k - ((long) this.f69505l);
        long position = mVar.getPosition() + j10;
        d0 d0Var = this.f69506m;
        if (d0Var == null) {
            if (j10 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                mVar.skipFully((int) j10);
            } else {
                a0Var.f61884a = mVar.getPosition() + j10;
                z10 = true;
            }
            q(position);
            return (z10 || this.f69502i == 2) ? false : true;
        }
        mVar.readFully(d0Var.d(), this.f69505l, (int) j10);
        if (this.f69503j == 1718909296) {
            this.f69516w = s(d0Var);
        } else if (!this.f69499f.isEmpty()) {
            ((q9.a.C0859a) this.f69499f.peek()).e(new q9.a.b(this.f69503j, d0Var));
        }
        z10 = false;
        q(position);
        if (z10) {
        }
    }

    private int x(i9.m mVar, a0 a0Var) throws ParserException {
        long position = mVar.getPosition();
        if (this.f69507n == -1) {
            int iL = l(position);
            this.f69507n = iL;
            if (iL == -1) {
                return -1;
            }
        }
        a aVar = this.f69512s[this.f69507n];
        e0 e0Var = aVar.f69520c;
        int i10 = aVar.f69522e;
        r rVar = aVar.f69519b;
        long j10 = rVar.f69571c[i10];
        int i11 = rVar.f69572d[i10];
        f0 f0Var = aVar.f69521d;
        long j11 = (j10 - position) + ((long) this.f69508o);
        if (j11 < 0 || j11 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            a0Var.f61884a = j10;
            return 1;
        }
        if (aVar.f69518a.f69541g == 1) {
            j11 += 8;
            i11 -= 8;
        }
        mVar.skipFully((int) j11);
        o oVar = aVar.f69518a;
        if (oVar.f69544j == 0) {
            if ("audio/ac4".equals(oVar.f69540f.f24901l)) {
                if (this.f69509p == 0) {
                    com.google.android.exoplayer2.audio.c.a(i11, this.f69497d);
                    e0Var.c(this.f69497d, 7);
                    this.f69509p += 7;
                }
                i11 += 7;
            } else if (f0Var != null) {
                f0Var.d(mVar);
            }
            while (true) {
                int i12 = this.f69509p;
                if (i12 >= i11) {
                    break;
                }
                int iB = e0Var.b(mVar, i11 - i12, false);
                this.f69508o += iB;
                this.f69509p += iB;
                this.f69510q -= iB;
            }
        } else {
            byte[] bArrD = this.f69496c.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i13 = aVar.f69518a.f69544j;
            int i14 = 4 - i13;
            while (this.f69509p < i11) {
                int i15 = this.f69510q;
                if (i15 == 0) {
                    mVar.readFully(bArrD, i14, i13);
                    this.f69508o += i13;
                    this.f69496c.P(0);
                    int iN = this.f69496c.n();
                    if (iN < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.f69510q = iN;
                    this.f69495b.P(0);
                    e0Var.c(this.f69495b, 4);
                    this.f69509p += 4;
                    i11 += i14;
                } else {
                    int iB2 = e0Var.b(mVar, i15, false);
                    this.f69508o += iB2;
                    this.f69509p += iB2;
                    this.f69510q -= iB2;
                }
            }
        }
        int i16 = i11;
        r rVar2 = aVar.f69519b;
        long j12 = rVar2.f69574f[i10];
        int i17 = rVar2.f69575g[i10];
        if (f0Var != null) {
            f0Var.c(e0Var, j12, i17, i16, 0, null);
            if (i10 + 1 == aVar.f69519b.f69570b) {
                f0Var.a(e0Var, null);
            }
        } else {
            e0Var.e(j12, i17, i16, 0, null);
        }
        aVar.f69522e++;
        this.f69507n = -1;
        this.f69508o = 0;
        this.f69509p = 0;
        this.f69510q = 0;
        return 0;
    }

    private int y(i9.m mVar, a0 a0Var) throws ParserException {
        int iC = this.f69500g.c(mVar, a0Var, this.f69501h);
        if (iC == 1 && a0Var.f61884a == 0) {
            i();
        }
        return iC;
    }

    private static boolean z(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1701082227 || i10 == 1835365473;
    }

    @Override
    public void b(i9.n nVar) {
        this.f69511r = nVar;
    }

    @Override
    public boolean c(i9.m mVar) {
        return n.d(mVar, (this.f69494a & 2) != 0);
    }

    @Override
    public int d(i9.m mVar, a0 a0Var) {
        while (true) {
            int i10 = this.f69502i;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return x(mVar, a0Var);
                    }
                    if (i10 == 3) {
                        return y(mVar, a0Var);
                    }
                    throw new IllegalStateException();
                }
                if (w(mVar, a0Var)) {
                    return 1;
                }
            } else if (!v(mVar)) {
                return -1;
            }
        }
    }

    @Override
    public long getDurationUs() {
        return this.f69515v;
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        return j(j10, -1);
    }

    @Override
    public boolean isSeekable() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
    /* JADX WARN: Code duplicated, block: B:30:0x0068  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0078  */
    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:41:0x008f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0080 A[EDGE_INSN: B:43:0x0080->B:37:0x0080 BREAK  A[LOOP:0: B:28:0x0063->B:36:0x007d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x007d A[SYNTHETIC] */
    public b0.a j(long j10, int i10) {
        long j11;
        long j12;
        long jO;
        long j13;
        int i11;
        a[] aVarArr;
        r rVar;
        int iB;
        a[] aVarArr2 = this.f69512s;
        if (aVarArr2.length == 0) {
            return new b0.a(c0.f61889c);
        }
        int i12 = i10 != -1 ? i10 : this.f69514u;
        if (i12 != -1) {
            r rVar2 = aVarArr2[i12].f69519b;
            int iK = k(rVar2, j10);
            if (iK == -1) {
                return new b0.a(c0.f61889c);
            }
            j12 = rVar2.f69574f[iK];
            j11 = rVar2.f69571c[iK];
            if (j12 < j10 && iK < rVar2.f69570b - 1 && (iB = rVar2.b(j10)) != -1 && iB != iK) {
                j13 = rVar2.f69574f[iB];
                jO = rVar2.f69571c[iB];
            }
            if (i10 == -1) {
                i11 = 0;
                while (true) {
                    aVarArr = this.f69512s;
                    if (i11 < aVarArr.length) {
                        break;
                    }
                    if (i11 != this.f69514u) {
                        rVar = aVarArr[i11].f69519b;
                        long jO2 = o(rVar, j12, j11);
                        if (j13 != C.TIME_UNSET) {
                            jO = o(rVar, j13, jO);
                        }
                        j11 = jO2;
                    }
                    i11++;
                }
            }
            c0 c0Var = new c0(j12, j11);
            return j13 == C.TIME_UNSET ? new b0.a(c0Var) : new b0.a(c0Var, new c0(j13, jO));
        }
        j11 = Long.MAX_VALUE;
        j12 = j10;
        jO = -1;
        j13 = -9223372036854775807L;
        if (i10 == -1) {
            i11 = 0;
            while (true) {
                aVarArr = this.f69512s;
                if (i11 < aVarArr.length) {
                    break;
                    break;
                }
                if (i11 != this.f69514u) {
                    rVar = aVarArr[i11].f69519b;
                    long jO3 = o(rVar, j12, j11);
                    if (j13 != C.TIME_UNSET) {
                        jO = o(rVar, j13, jO);
                    }
                    j11 = jO3;
                }
                i11++;
            }
        }
        c0 c0Var2 = new c0(j12, j11);
        if (j13 == C.TIME_UNSET) {
        }
    }

    @Override
    public void seek(long j10, long j11) {
        this.f69499f.clear();
        this.f69505l = 0;
        this.f69507n = -1;
        this.f69508o = 0;
        this.f69509p = 0;
        this.f69510q = 0;
        if (j10 == 0) {
            if (this.f69502i != 3) {
                i();
                return;
            } else {
                this.f69500g.g();
                this.f69501h.clear();
                return;
            }
        }
        for (a aVar : this.f69512s) {
            B(aVar, j11);
            f0 f0Var = aVar.f69521d;
            if (f0Var != null) {
                f0Var.b();
            }
        }
    }

    public k(int i10) {
        this.f69494a = i10;
        this.f69502i = (i10 & 4) != 0 ? 3 : 0;
        this.f69500g = new m();
        this.f69501h = new ArrayList();
        this.f69498e = new d0(16);
        this.f69499f = new ArrayDeque();
        this.f69495b = new d0(com.google.android.exoplayer2.util.x.f26892a);
        this.f69496c = new d0(4);
        this.f69497d = new d0();
        this.f69507n = -1;
        this.f69511r = i9.n.f61968i1;
        this.f69512s = new a[0];
    }

    @Override
    public void release() {
    }

    public static o m(o oVar) {
        return oVar;
    }
}
