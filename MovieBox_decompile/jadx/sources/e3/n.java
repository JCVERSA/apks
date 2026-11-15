package e3;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import k2.e0;
import k2.l0;
import k2.m0;
import k2.n0;
import k2.q0;
import k2.s0;
import k2.t0;

public final class n implements k2.r, m0 {
    public static final k2.x G = new k2.x() {
        @Override
        public k2.x a(h3.s.a aVar) {
            return k2.w.d(this, aVar);
        }

        @Override
        public k2.x b(int i10) {
            return k2.w.b(this, i10);
        }

        @Override
        public k2.r[] c(Uri uri, Map map) {
            return k2.w.a(this, uri, map);
        }

        @Override
        public final k2.r[] createExtractors() {
            return n.u();
        }

        @Override
        public k2.x d(boolean z10) {
            return k2.w.c(this, z10);
        }
    };
    private a[] A;
    private long[][] B;
    private int C;
    private long D;
    private int E;
    private z2.a F;

    private final h3.s.a f59357a;

    private final int f59358b;

    private final j0 f59359c;

    private final j0 f59360d;

    private final j0 f59361e;

    private final j0 f59362f;

    private final ArrayDeque f59363g;

    private final q f59364h;

    private final List f59365i;

    private ImmutableList f59366j;

    private int f59367k;

    private int f59368l;

    private long f59369m;

    private int f59370n;

    private j0 f59371o;

    private int f59372p;

    private int f59373q;

    private int f59374r;

    private int f59375s;

    private boolean f59376t;

    private boolean f59377u;

    private boolean f59378v;

    private long f59379w;

    private boolean f59380x;

    private long f59381y;

    private k2.t f59382z;

    private static final class a {

        public final t f59383a;

        public final w f59384b;

        public final s0 f59385c;

        public final t0 f59386d;

        public int f59387e;

        public a(t tVar, w wVar, s0 s0Var) {
            this.f59383a = tVar;
            this.f59384b = wVar;
            this.f59385c = s0Var;
            this.f59386d = MimeTypes.AUDIO_TRUEHD.equals(tVar.f59408g.f9849o) ? new t0() : null;
        }
    }

    @Deprecated
    public n() {
        this(h3.s.a.f61264a, 16);
    }

    private static int A(j0 j0Var) {
        j0Var.W(8);
        int iJ = j(j0Var.q());
        if (iJ != 0) {
            return iJ;
        }
        j0Var.X(4);
        while (j0Var.a() > 0) {
            int iJ2 = j(j0Var.q());
            if (iJ2 != 0) {
                return iJ2;
            }
        }
        return 0;
    }

    private void B(androidx.media3.container.d.b bVar) {
        List list;
        androidx.media3.common.x xVar;
        androidx.media3.common.x xVar2;
        int i10;
        String str;
        int i11;
        androidx.media3.container.d.b bVarD = bVar.d(1835365473);
        List arrayList = new ArrayList();
        int i12 = 1;
        if (bVarD != null) {
            androidx.media3.common.x xVarT = b.t(bVarD);
            if (this.f59380x) {
                androidx.media3.common.util.a.i(xVarT);
                w(xVarT);
                arrayList = o(xVarT);
            } else if (J(xVarT)) {
                this.f59378v = true;
                return;
            }
            xVar = xVarT;
            list = arrayList;
        } else {
            list = arrayList;
            xVar = null;
        }
        ArrayList arrayList2 = new ArrayList();
        boolean z10 = this.E == 1;
        e0 e0Var = new e0();
        androidx.media3.container.d.c cVarE = bVar.e(1969517665);
        if (cVarE != null) {
            androidx.media3.common.x xVarH = b.H(cVarE);
            e0Var.c(xVarH);
            xVar2 = xVarH;
        } else {
            xVar2 = null;
        }
        androidx.media3.common.x xVar3 = new androidx.media3.common.x(b.v(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1836476516))).f10275b));
        List listG = b.G(bVar, e0Var, C.TIME_UNSET, null, (this.f59358b & 1) != 0, z10, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return n.t((t) obj);
            }
        });
        if (this.f59380x) {
            androidx.media3.common.util.a.h(list.size() == listG.size(), String.format(Locale.US, "The number of auxiliary track types from metadata (%d) is not same as the number of auxiliary tracks (%d)", Integer.valueOf(list.size()), Integer.valueOf(listG.size())));
        }
        String strB = k.b(listG);
        int i13 = 0;
        int i14 = 0;
        int size = -1;
        long j10 = C.TIME_UNSET;
        while (i13 < listG.size()) {
            w wVar = (w) listG.get(i13);
            if (wVar.f59438b == 0) {
                i10 = i14;
                int i15 = i12;
                str = strB;
                i11 = i15;
            } else {
                t tVar = wVar.f59437a;
                i10 = i14 + 1;
                a aVar = new a(tVar, wVar, this.f59382z.track(i14, tVar.f59403b));
                str = strB;
                long j11 = tVar.f59406e;
                if (j11 == C.TIME_UNSET) {
                    j11 = wVar.f59444h;
                }
                aVar.f59385c.f(j11);
                long jMax = Math.max(j10, j11);
                int i16 = MimeTypes.AUDIO_TRUEHD.equals(tVar.f59408g.f9849o) ? wVar.f59441e * 16 : wVar.f59441e + 30;
                androidx.media3.common.r.b bVarB = tVar.f59408g.b();
                bVarB.k0(i16);
                if (tVar.f59403b == 2) {
                    int i17 = tVar.f59408g.f9840f;
                    if ((this.f59358b & 8) != 0) {
                        i17 |= size == -1 ? 1 : 2;
                    }
                    if (this.f59380x) {
                        i17 |= 32768;
                        bVarB.P(((Integer) list.get(i13)).intValue());
                    }
                    bVarB.s0(i17);
                }
                j.l(tVar.f59403b, e0Var, bVarB);
                j.m(tVar.f59403b, xVar, bVarB, tVar.f59408g.f9846l, this.f59365i.isEmpty() ? null : new androidx.media3.common.x(this.f59365i), xVar2, xVar3);
                bVarB.U(str);
                aVar.f59385c.d(bVarB.N());
                if (tVar.f59403b == 2 && size == -1) {
                    size = arrayList2.size();
                }
                arrayList2.add(aVar);
                j10 = jMax;
                i11 = 1;
            }
            i13 += i11;
            listG = listG;
            i14 = i10;
            String str2 = str;
            i12 = i11;
            strB = str2;
        }
        this.C = size;
        this.D = j10;
        a[] aVarArr = (a[]) arrayList2.toArray(new a[0]);
        this.A = aVarArr;
        this.B = k(aVarArr);
        this.f59382z.endTracks();
        this.f59382z.d(this);
    }

    private void C(long j10) {
        if (this.f59368l == 1836086884) {
            int i10 = this.f59370n;
            this.F = new z2.a(0L, j10, C.TIME_UNSET, j10 + ((long) i10), this.f59369m - ((long) i10));
        }
    }

    private boolean D(k2.s sVar) throws ParserException {
        androidx.media3.container.d.b bVar;
        if (this.f59370n == 0) {
            if (!sVar.readFully(this.f59362f.e(), 0, 8, true)) {
                z();
                return false;
            }
            this.f59370n = 8;
            this.f59362f.W(0);
            this.f59369m = this.f59362f.J();
            this.f59368l = this.f59362f.q();
        }
        long j10 = this.f59369m;
        if (j10 == 1) {
            sVar.readFully(this.f59362f.e(), 8, 8);
            this.f59370n += 8;
            this.f59369m = this.f59362f.O();
        } else if (j10 == 0) {
            long length = sVar.getLength();
            if (length == -1 && (bVar = (androidx.media3.container.d.b) this.f59363g.peek()) != null) {
                length = bVar.f10272b;
            }
            if (length != -1) {
                this.f59369m = (length - sVar.getPosition()) + ((long) this.f59370n);
            }
        }
        if (this.f59369m < this.f59370n) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        if (H(this.f59368l)) {
            long position = sVar.getPosition();
            long j11 = this.f59369m;
            int i10 = this.f59370n;
            long j12 = (position + j11) - ((long) i10);
            if (j11 != i10 && this.f59368l == 1835365473) {
                x(sVar);
            }
            this.f59363g.push(new androidx.media3.container.d.b(this.f59368l, j12));
            if (this.f59369m == this.f59370n) {
                y(j12);
            } else {
                n();
            }
        } else if (I(this.f59368l)) {
            androidx.media3.common.util.a.g(this.f59370n == 8);
            androidx.media3.common.util.a.g(this.f59369m <= 2147483647L);
            j0 j0Var = new j0((int) this.f59369m);
            System.arraycopy(this.f59362f.e(), 0, j0Var.e(), 0, 8);
            this.f59371o = j0Var;
            this.f59367k = 1;
        } else {
            C(sVar.getPosition() - ((long) this.f59370n));
            this.f59371o = null;
            this.f59367k = 1;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006f  */
    private boolean E(k2.s sVar, l0 l0Var) {
        boolean z10;
        long j10 = this.f59369m - ((long) this.f59370n);
        long position = sVar.getPosition() + j10;
        j0 j0Var = this.f59371o;
        if (j0Var == null) {
            if (!this.f59377u && this.f59368l == 1835295092) {
                this.E = 1;
            }
            if (j10 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                sVar.skipFully((int) j10);
            } else {
                l0Var.f63627a = sVar.getPosition() + j10;
                z10 = true;
            }
            y(position);
            if (this.f59378v) {
                this.f59380x = true;
                l0Var.f63627a = this.f59379w;
                this.f59378v = false;
                z10 = true;
            }
            return (z10 || this.f59367k == 2) ? false : true;
        }
        sVar.readFully(j0Var.e(), this.f59370n, (int) j10);
        if (this.f59368l == 1718909296) {
            this.f59377u = true;
            this.E = A(j0Var);
        } else if (!this.f59363g.isEmpty()) {
            ((androidx.media3.container.d.b) this.f59363g.peek()).c(new androidx.media3.container.d.c(this.f59368l, j0Var));
        }
        z10 = false;
        y(position);
        if (this.f59378v) {
            this.f59380x = true;
            l0Var.f63627a = this.f59379w;
            this.f59378v = false;
            z10 = true;
        }
        if (z10) {
        }
    }

    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean, int] */
    private int F(k2.s sVar, l0 l0Var) throws ParserException {
        s0.a aVar;
        ?? r10;
        boolean z10;
        int iO;
        long position = sVar.getPosition();
        if (this.f59372p == -1) {
            int iS = s(position);
            this.f59372p = iS;
            if (iS == -1) {
                return -1;
            }
        }
        a aVar2 = this.A[this.f59372p];
        s0 s0Var = aVar2.f59385c;
        int i10 = aVar2.f59387e;
        w wVar = aVar2.f59384b;
        long j10 = wVar.f59439c[i10] + this.f59381y;
        int i11 = wVar.f59440d[i10];
        t0 t0Var = aVar2.f59386d;
        long j11 = (j10 - position) + ((long) this.f59373q);
        if (j11 < 0 || j11 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            l0Var.f63627a = j10;
            return 1;
        }
        if (aVar2.f59383a.f59409h == 1) {
            j11 += 8;
            i11 -= 8;
        }
        sVar.skipFully((int) j11);
        if (!l(aVar2.f59383a.f59408g)) {
            this.f59376t = true;
        }
        t tVar = aVar2.f59383a;
        if (tVar.f59412k == 0) {
            aVar = null;
            if ("audio/ac4".equals(tVar.f59408g.f9849o)) {
                if (this.f59374r == 0) {
                    k2.c.a(i11, this.f59361e);
                    s0Var.c(this.f59361e, 7);
                    this.f59374r += 7;
                }
                i11 += 7;
            } else if (t0Var != null) {
                t0Var.d(sVar);
            }
            while (true) {
                int i12 = this.f59374r;
                if (i12 >= i11) {
                    break;
                }
                int iE = s0Var.e(sVar, i11 - i12, false);
                this.f59373q += iE;
                this.f59374r += iE;
                this.f59375s -= iE;
            }
        } else {
            byte[] bArrE = this.f59360d.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i13 = 4 - aVar2.f59383a.f59412k;
            i11 += i13;
            while (this.f59374r < i11) {
                int i14 = this.f59375s;
                if (i14 == 0) {
                    t tVar2 = aVar2.f59383a;
                    int i15 = tVar2.f59412k;
                    if (this.f59376t || androidx.media3.container.g.o(tVar2.f59408g) + i15 > aVar2.f59384b.f59440d[i10] - this.f59373q) {
                        iO = 0;
                    } else {
                        iO = androidx.media3.container.g.o(aVar2.f59383a.f59408g);
                        i15 = aVar2.f59383a.f59412k + iO;
                    }
                    sVar.readFully(bArrE, i13, i15);
                    this.f59373q += i15;
                    this.f59360d.W(0);
                    int iQ = this.f59360d.q();
                    if (iQ < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.f59375s = iQ - iO;
                    this.f59359c.W(0);
                    s0Var.c(this.f59359c, 4);
                    this.f59374r += 4;
                    if (iO > 0) {
                        s0Var.c(this.f59360d, iO);
                        this.f59374r += iO;
                        if (androidx.media3.container.g.k(bArrE, 4, iO, aVar2.f59383a.f59408g)) {
                            this.f59376t = true;
                        }
                    }
                } else {
                    int iE2 = s0Var.e(sVar, i14, false);
                    this.f59373q += iE2;
                    this.f59374r += iE2;
                    this.f59375s -= iE2;
                }
            }
            aVar = null;
        }
        int i16 = i11;
        w wVar2 = aVar2.f59384b;
        long j12 = wVar2.f59442f[i10];
        int i17 = wVar2.f59443g[i10];
        if (!this.f59376t) {
            i17 |= 67108864;
        }
        if (t0Var != null) {
            int i18 = i17;
            s0.a aVar3 = aVar;
            z10 = false;
            t0Var.c(s0Var, j12, i18, i16, 0, null);
            if (i10 + 1 == aVar2.f59384b.f59438b) {
                r10 = z10;
                t0Var.a(s0Var, aVar3);
                r10 = z10;
            }
        } else {
            r10 = 0;
            s0Var.b(j12, i17, i16, 0, null);
        }
        r10 = z10;
        aVar2.f59387e++;
        this.f59372p = -1;
        this.f59373q = r10;
        this.f59374r = r10;
        this.f59375s = r10;
        this.f59376t = r10;
        return r10;
    }

    private int G(k2.s sVar, l0 l0Var) throws ParserException {
        int iC = this.f59364h.c(sVar, l0Var, this.f59365i);
        if (iC == 1 && l0Var.f63627a == 0) {
            n();
        }
        return iC;
    }

    private static boolean H(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1701082227 || i10 == 1835365473 || i10 == 1635284069;
    }

    private static boolean I(int i10) {
        return i10 == 1835296868 || i10 == 1836476516 || i10 == 1751411826 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1937011571 || i10 == 1668576371 || i10 == 1701606260 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1953196132 || i10 == 1718909296 || i10 == 1969517665 || i10 == 1801812339 || i10 == 1768715124;
    }

    private boolean J(androidx.media3.common.x xVar) {
        androidx.media3.container.b bVarA;
        if (xVar != null && (this.f59358b & 64) != 0 && (bVarA = j.a(xVar, "auxiliary.tracks.offset")) != null) {
            long jO = new j0(bVarA.f10267b).O();
            if (jO > 0) {
                this.f59379w = jO;
                return true;
            }
        }
        return false;
    }

    private void K(a aVar, long j10) {
        w wVar = aVar.f59384b;
        int iA = wVar.a(j10);
        if (iA == -1) {
            iA = wVar.b(j10);
        }
        aVar.f59387e = iA;
    }

    private static int j(int i10) {
        if (i10 != 1751476579) {
            return i10 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] k(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            jArr[i10] = new long[aVarArr[i10].f59384b.f59438b];
            jArr2[i10] = aVarArr[i10].f59384b.f59442f[0];
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
            w wVar = aVarArr[i12].f59384b;
            j10 += (long) wVar.f59440d[i14];
            int i15 = i14 + 1;
            iArr[i12] = i15;
            if (i15 < jArr3.length) {
                jArr2[i12] = wVar.f59442f[i15];
            } else {
                zArr[i12] = true;
                i11++;
            }
        }
        return jArr;
    }

    private boolean l(androidx.media3.common.r rVar) {
        if (Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H264)) {
            return (this.f59358b & 32) != 0;
        }
        return Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H265) && (this.f59358b & 128) != 0;
    }

    public static int m(int i10) {
        int i11 = (i10 & 1) != 0 ? 32 : 0;
        return (i10 & 2) != 0 ? i11 | 128 : i11;
    }

    private void n() {
        this.f59367k = 0;
        this.f59370n = 0;
    }

    private List o(androidx.media3.common.x xVar) {
        List listB = ((androidx.media3.container.b) androidx.media3.common.util.a.i(j.a(xVar, "auxiliary.tracks.map"))).b();
        ArrayList arrayList = new ArrayList(listB.size());
        for (int i10 = 0; i10 < listB.size(); i10++) {
            int iIntValue = ((Integer) listB.get(i10)).intValue();
            int i11 = 1;
            if (iIntValue != 0) {
                if (iIntValue != 1) {
                    i11 = 3;
                    if (iIntValue != 2) {
                        i11 = iIntValue != 3 ? 0 : 4;
                    }
                } else {
                    i11 = 2;
                }
            }
            arrayList.add(Integer.valueOf(i11));
        }
        return arrayList;
    }

    private static int r(w wVar, long j10) {
        int iA = wVar.a(j10);
        return iA == -1 ? wVar.b(j10) : iA;
    }

    private int s(long j10) {
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        long j11 = Long.MAX_VALUE;
        boolean z10 = true;
        long j12 = Long.MAX_VALUE;
        boolean z11 = true;
        long j13 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.A;
            if (i12 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i12];
            int i13 = aVar.f59387e;
            w wVar = aVar.f59384b;
            if (i13 != wVar.f59438b) {
                long j14 = wVar.f59439c[i13];
                long j15 = ((long[][]) a1.i(this.B))[i12][i13];
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

    public static k2.r[] u() {
        return new k2.r[]{new n(h3.s.a.f61264a, 16)};
    }

    private static long v(w wVar, long j10, long j11) {
        int iR = r(wVar, j10);
        return iR == -1 ? j11 : Math.min(wVar.f59439c[iR], j11);
    }

    private void w(androidx.media3.common.x xVar) {
        androidx.media3.container.b bVarA = j.a(xVar, "auxiliary.tracks.interleaved");
        if (bVarA == null || bVarA.f10267b[0] != 0) {
            return;
        }
        this.f59381y = this.f59379w + 16;
    }

    private void x(k2.s sVar) {
        this.f59361e.S(8);
        sVar.peekFully(this.f59361e.e(), 0, 8);
        b.f(this.f59361e);
        sVar.skipFully(this.f59361e.f());
        sVar.resetPeekPosition();
    }

    private void y(long j10) {
        while (!this.f59363g.isEmpty() && ((androidx.media3.container.d.b) this.f59363g.peek()).f10272b == j10) {
            androidx.media3.container.d.b bVar = (androidx.media3.container.d.b) this.f59363g.pop();
            if (bVar.f10271a == 1836019574) {
                B(bVar);
                this.f59363g.clear();
                if (!this.f59378v) {
                    this.f59367k = 2;
                }
            } else if (!this.f59363g.isEmpty()) {
                ((androidx.media3.container.d.b) this.f59363g.peek()).b(bVar);
            }
        }
        if (this.f59367k != 2) {
            n();
        }
    }

    private void z() {
        if (this.E != 2 || (this.f59358b & 2) == 0) {
            return;
        }
        s0 s0VarTrack = this.f59382z.track(0, 4);
        z2.a aVar = this.F;
        s0VarTrack.d(new androidx.media3.common.r.b().n0(aVar == null ? null : new androidx.media3.common.x(aVar)).N());
        this.f59382z.endTracks();
        this.f59382z.d(new m0.b(C.TIME_UNSET));
    }

    @Override
    public boolean b(k2.s sVar) {
        q0 q0VarD = s.d(sVar, (this.f59358b & 2) != 0);
        this.f59366j = q0VarD != null ? ImmutableList.of(q0VarD) : ImmutableList.of();
        return q0VarD == null;
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) {
        while (true) {
            int i10 = this.f59367k;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return F(sVar, l0Var);
                    }
                    if (i10 == 3) {
                        return G(sVar, l0Var);
                    }
                    throw new IllegalStateException();
                }
                if (E(sVar, l0Var)) {
                    return 1;
                }
            } else if (!D(sVar)) {
                return -1;
            }
        }
    }

    @Override
    public void e(k2.t tVar) {
        if ((this.f59358b & 16) == 0) {
            tVar = new h3.t(tVar, this.f59357a);
        }
        this.f59382z = tVar;
    }

    @Override
    public long getDurationUs() {
        return this.D;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        return p(j10, -1);
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
    public m0.a p(long j10, int i10) {
        long j11;
        long j12;
        long jV;
        long j13;
        int i11;
        a[] aVarArr;
        w wVar;
        int iB;
        a[] aVarArr2 = this.A;
        if (aVarArr2.length == 0) {
            return new m0.a(n0.f63656c);
        }
        int i12 = i10 != -1 ? i10 : this.C;
        if (i12 != -1) {
            w wVar2 = aVarArr2[i12].f59384b;
            int iR = r(wVar2, j10);
            if (iR == -1) {
                return new m0.a(n0.f63656c);
            }
            j12 = wVar2.f59442f[iR];
            j11 = wVar2.f59439c[iR];
            if (j12 < j10 && iR < wVar2.f59438b - 1 && (iB = wVar2.b(j10)) != -1 && iB != iR) {
                j13 = wVar2.f59442f[iB];
                jV = wVar2.f59439c[iB];
            }
            if (i10 == -1) {
                i11 = 0;
                while (true) {
                    aVarArr = this.A;
                    if (i11 < aVarArr.length) {
                        break;
                    }
                    if (i11 != this.C) {
                        wVar = aVarArr[i11].f59384b;
                        long jV2 = v(wVar, j12, j11);
                        if (j13 != C.TIME_UNSET) {
                            jV = v(wVar, j13, jV);
                        }
                        j11 = jV2;
                    }
                    i11++;
                }
            }
            n0 n0Var = new n0(j12, j11);
            return j13 == C.TIME_UNSET ? new m0.a(n0Var) : new m0.a(n0Var, new n0(j13, jV));
        }
        j11 = Long.MAX_VALUE;
        j12 = j10;
        jV = -1;
        j13 = -9223372036854775807L;
        if (i10 == -1) {
            i11 = 0;
            while (true) {
                aVarArr = this.A;
                if (i11 < aVarArr.length) {
                    break;
                    break;
                }
                if (i11 != this.C) {
                    wVar = aVarArr[i11].f59384b;
                    long jV3 = v(wVar, j12, j11);
                    if (j13 != C.TIME_UNSET) {
                        jV = v(wVar, j13, jV);
                    }
                    j11 = jV3;
                }
                i11++;
            }
        }
        n0 n0Var2 = new n0(j12, j11);
        if (j13 == C.TIME_UNSET) {
        }
    }

    @Override
    public ImmutableList f() {
        return this.f59366j;
    }

    @Override
    public void seek(long j10, long j11) {
        this.f59363g.clear();
        this.f59370n = 0;
        this.f59372p = -1;
        this.f59373q = 0;
        this.f59374r = 0;
        this.f59375s = 0;
        this.f59376t = false;
        if (j10 == 0) {
            if (this.f59367k != 3) {
                n();
                return;
            } else {
                this.f59364h.g();
                this.f59365i.clear();
                return;
            }
        }
        for (a aVar : this.A) {
            K(aVar, j11);
            t0 t0Var = aVar.f59386d;
            if (t0Var != null) {
                t0Var.b();
            }
        }
    }

    public n(h3.s.a aVar, int i10) {
        this.f59357a = aVar;
        this.f59358b = i10;
        this.f59366j = ImmutableList.of();
        this.f59367k = (i10 & 4) != 0 ? 3 : 0;
        this.f59364h = new q();
        this.f59365i = new ArrayList();
        this.f59362f = new j0(16);
        this.f59363g = new ArrayDeque();
        this.f59359c = new j0(androidx.media3.container.g.f10281a);
        this.f59360d = new j0(6);
        this.f59361e = new j0();
        this.f59372p = -1;
        this.f59382z = k2.t.f63690j1;
        this.A = new a[0];
    }

    @Override
    public void release() {
    }

    public static t t(t tVar) {
        return tVar;
    }
}
