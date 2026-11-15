package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

public final class qr6 implements nk3, ja9 {
    public static final uk3 y = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return qr6.m();
        }
    };
    public final int a;
    public final qw7 b;
    public final qw7 c;
    public final qw7 d;
    public final qw7 e;
    public final ArrayDeque f;
    public final na9 g;
    public final List h;
    public int i;
    public int j;
    public long k;
    public int l;
    public qw7 m;
    public int n;
    public int o;
    public int p;
    public int q;
    public qk3 r;
    public a[] s;
    public long[][] t;
    public int u;
    public long v;
    public int w;
    public MotionPhotoMetadata x;

    public static final class a {
        public final tua a;
        public final gva b;
        public final fva c;
        public final fab d;
        public int e;

        public a(tua tuaVar, gva gvaVar, fva fvaVar) {
            this.a = tuaVar;
            this.b = gvaVar;
            this.c = fvaVar;
            this.d = MimeTypes.AUDIO_TRUEHD.equals(tuaVar.f.m) ? new fab() : null;
        }
    }

    public qr6() {
        this(0);
    }

    public static int f(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    public static long[][] g(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            jArr[i] = new long[aVarArr[i].b.b];
            jArr2[i] = aVarArr[i].b.f[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < aVarArr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int i4 = 0; i4 < aVarArr.length; i4++) {
                if (!zArr[i4]) {
                    long j3 = jArr2[i4];
                    if (j3 <= j2) {
                        i3 = i4;
                        j2 = j3;
                    }
                }
            }
            int i5 = iArr[i3];
            long[] jArr3 = jArr[i3];
            jArr3[i5] = j;
            gva gvaVar = aVarArr[i3].b;
            j += (long) gvaVar.d[i5];
            int i6 = i5 + 1;
            iArr[i3] = i6;
            if (i6 < jArr3.length) {
                jArr2[i3] = gvaVar.f[i6];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    public static int j(gva gvaVar, long j) {
        int iA = gvaVar.a(j);
        return iA == -1 ? gvaVar.b(j) : iA;
    }

    public static tua l(tua tuaVar) {
        return tuaVar;
    }

    public static nk3[] m() {
        return new nk3[]{new qr6()};
    }

    public static long n(gva gvaVar, long j, long j2) {
        int iJ = j(gvaVar, j);
        return iJ == -1 ? j2 : Math.min(gvaVar.c[iJ], j2);
    }

    public static int r(qw7 qw7Var) {
        qw7Var.O(8);
        int iF = f(qw7Var.n());
        if (iF != 0) {
            return iF;
        }
        qw7Var.P(4);
        while (qw7Var.a() > 0) {
            int iF2 = f(qw7Var.n());
            if (iF2 != 0) {
                return iF2;
            }
        }
        return 0;
    }

    public static boolean y(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    public static boolean z(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    public final void A(a aVar, long j) {
        gva gvaVar = aVar.b;
        int iA = gvaVar.a(j);
        if (iA == -1) {
            iA = gvaVar.b(j);
        }
        aVar.e = iA;
    }

    @Override
    public void a(qk3 qk3Var) {
        this.r = qk3Var;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) {
        while (true) {
            int i = this.i;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return w(pk3Var, id8Var);
                    }
                    if (i == 3) {
                        return x(pk3Var, id8Var);
                    }
                    throw new IllegalStateException();
                }
                if (v(pk3Var, id8Var)) {
                    return 1;
                }
            } else if (!u(pk3Var)) {
                return -1;
            }
        }
    }

    @Override
    public boolean c(pk3 pk3Var) {
        return lr9.d(pk3Var, (this.a & 2) != 0);
    }

    @Override
    public long getDurationUs() {
        return this.v;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        return i(j, -1);
    }

    public final void h() {
        this.i = 0;
        this.l = 0;
    }

    public ja9.a i(long j, int i) {
        long j2;
        long jN;
        long j3;
        long j4;
        int iB;
        long j5 = j;
        a[] aVarArr = this.s;
        if (aVarArr.length == 0) {
            return new ja9.a(la9.c);
        }
        int i2 = i != -1 ? i : this.u;
        if (i2 != -1) {
            gva gvaVar = aVarArr[i2].b;
            int iJ = j(gvaVar, j5);
            if (iJ == -1) {
                return new ja9.a(la9.c);
            }
            long j6 = gvaVar.f[iJ];
            j2 = gvaVar.c[iJ];
            if (j6 >= j5 || iJ >= gvaVar.b - 1 || (iB = gvaVar.b(j5)) == -1 || iB == iJ) {
                j4 = -1;
                j3 = -9223372036854775807L;
            } else {
                j3 = gvaVar.f[iB];
                j4 = gvaVar.c[iB];
            }
            long j7 = j4;
            j5 = j6;
            jN = j7;
        } else {
            j2 = Long.MAX_VALUE;
            jN = -1;
            j3 = -9223372036854775807L;
        }
        if (i == -1) {
            int i3 = 0;
            while (true) {
                a[] aVarArr2 = this.s;
                if (i3 >= aVarArr2.length) {
                    break;
                }
                if (i3 != this.u) {
                    gva gvaVar2 = aVarArr2[i3].b;
                    long jN2 = n(gvaVar2, j5, j2);
                    if (j3 != C.TIME_UNSET) {
                        jN = n(gvaVar2, j3, jN);
                    }
                    j2 = jN2;
                }
                i3++;
            }
        }
        la9 la9Var = new la9(j5, j2);
        return j3 == C.TIME_UNSET ? new ja9.a(la9Var) : new ja9.a(la9Var, new la9(j3, jN));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }

    public final int k(long j) {
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        long j3 = Long.MAX_VALUE;
        boolean z2 = true;
        long j4 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.s;
            if (i3 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i3];
            int i4 = aVar.e;
            gva gvaVar = aVar.b;
            if (i4 != gvaVar.b) {
                long j5 = gvaVar.c[i4];
                long j6 = ((long[][]) blb.j(this.t))[i3][i4];
                long j7 = j5 - j;
                boolean z3 = j7 < 0 || j7 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                if ((!z3 && z2) || (z3 == z2 && j7 < j4)) {
                    j4 = j7;
                    z2 = z3;
                    i2 = i3;
                    j3 = j6;
                }
                if (j6 < j2) {
                    z = z3;
                    i = i3;
                    j2 = j6;
                }
            }
            i3++;
        }
        return (j2 == Long.MAX_VALUE || !z || j3 < j2 + 10485760) ? i2 : i;
    }

    public final void o(pk3 pk3Var) {
        this.d.K(8);
        pk3Var.peekFully(this.d.d(), 0, 8);
        yk.e(this.d);
        pk3Var.skipFully(this.d.e());
        pk3Var.resetPeekPosition();
    }

    public final void p(long j) {
        while (!this.f.isEmpty() && ((xk.a) this.f.peek()).b == j) {
            xk.a aVar = (xk.a) this.f.pop();
            if (aVar.a == 1836019574) {
                s(aVar);
                this.f.clear();
                this.i = 2;
            } else if (!this.f.isEmpty()) {
                ((xk.a) this.f.peek()).d(aVar);
            }
        }
        if (this.i != 2) {
            h();
        }
    }

    public final void q() {
        if (this.w != 2 || (this.a & 2) == 0) {
            return;
        }
        this.r.track(0, 4).b(new k.b().X(this.x == null ? null : new Metadata(this.x)).E());
        this.r.endTracks();
        this.r.d(new ja9.b(C.TIME_UNSET));
    }

    @Override
    public void release() {
    }

    public final void s(xk.a aVar) {
        Metadata metadata;
        Metadata metadata2;
        ArrayList arrayList = new ArrayList();
        boolean z = this.w == 1;
        ed4 ed4Var = new ed4();
        xk.b bVarG = aVar.g(Mp4Box.TYPE_udta);
        if (bVarG != null) {
            Pair pairB = yk.B(bVarG);
            Metadata metadata3 = (Metadata) pairB.first;
            Metadata metadata4 = (Metadata) pairB.second;
            if (metadata3 != null) {
                ed4Var.c(metadata3);
            }
            metadata = metadata4;
            metadata2 = metadata3;
        } else {
            metadata = null;
            metadata2 = null;
        }
        xk.a aVarF = aVar.f(Mp4Box.TYPE_meta);
        Metadata metadataN = aVarF != null ? yk.n(aVarF) : null;
        List listA = yk.A(aVar, ed4Var, C.TIME_UNSET, null, (this.a & 1) != 0, z, new o74() {
            @Override
            public final Object apply(Object obj) {
                return qr6.l((tua) obj);
            }
        });
        int size = listA.size();
        long j = C.TIME_UNSET;
        long j2 = -9223372036854775807L;
        int i = 0;
        int size2 = -1;
        while (i < size) {
            gva gvaVar = (gva) listA.get(i);
            if (gvaVar.b != 0) {
                tua tuaVar = gvaVar.a;
                long j3 = tuaVar.e;
                if (j3 == j) {
                    j3 = gvaVar.h;
                }
                long jMax = Math.max(j2, j3);
                a aVar2 = new a(tuaVar, gvaVar, this.r.track(i, tuaVar.b));
                int i2 = MimeTypes.AUDIO_TRUEHD.equals(tuaVar.f.m) ? gvaVar.e * 16 : gvaVar.e + 30;
                k.b bVarB = tuaVar.f.b();
                bVarB.W(i2);
                if (tuaVar.b == 2 && j3 > 0) {
                    int i3 = gvaVar.b;
                    if (i3 > 1) {
                        bVarB.P(i3 / (j3 / 1000000.0f));
                    }
                }
                go6.k(tuaVar.b, ed4Var, bVarB);
                go6.l(tuaVar.b, metadata2, metadataN, bVarB, metadata, this.h.isEmpty() ? null : new Metadata((List<? extends Metadata.Entry>) this.h));
                aVar2.c.b(bVarB.E());
                if (tuaVar.b == 2 && size2 == -1) {
                    size2 = arrayList.size();
                }
                arrayList.add(aVar2);
                j2 = jMax;
            }
            i++;
            listA = listA;
            size = size;
            j = C.TIME_UNSET;
        }
        this.u = size2;
        this.v = j2;
        a[] aVarArr = (a[]) arrayList.toArray(new a[0]);
        this.s = aVarArr;
        this.t = g(aVarArr);
        this.r.endTracks();
        this.r.d(this);
    }

    @Override
    public void seek(long j, long j2) {
        this.f.clear();
        this.l = 0;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        if (j == 0) {
            if (this.i != 3) {
                h();
                return;
            } else {
                this.g.g();
                this.h.clear();
                return;
            }
        }
        for (a aVar : this.s) {
            A(aVar, j2);
            fab fabVar = aVar.d;
            if (fabVar != null) {
                fabVar.b();
            }
        }
    }

    public final void t(long j) {
        if (this.j == 1836086884) {
            int i = this.l;
            this.x = new MotionPhotoMetadata(0L, j, C.TIME_UNSET, j + ((long) i), this.k - ((long) i));
        }
    }

    public final boolean u(pk3 pk3Var) throws ParserException {
        xk.a aVar;
        if (this.l == 0) {
            if (!pk3Var.readFully(this.e.d(), 0, 8, true)) {
                q();
                return false;
            }
            this.l = 8;
            this.e.O(0);
            this.k = this.e.E();
            this.j = this.e.n();
        }
        long j = this.k;
        if (j == 1) {
            pk3Var.readFully(this.e.d(), 8, 8);
            this.l += 8;
            this.k = this.e.H();
        } else if (j == 0) {
            long length = pk3Var.getLength();
            if (length == -1 && (aVar = (xk.a) this.f.peek()) != null) {
                length = aVar.b;
            }
            if (length != -1) {
                this.k = (length - pk3Var.getPosition()) + ((long) this.l);
            }
        }
        if (this.k < this.l) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        if (y(this.j)) {
            long position = pk3Var.getPosition();
            long j2 = this.k;
            int i = this.l;
            long j3 = (position + j2) - ((long) i);
            if (j2 != i && this.j == 1835365473) {
                o(pk3Var);
            }
            this.f.push(new xk.a(this.j, j3));
            if (this.k == this.l) {
                p(j3);
            } else {
                h();
            }
        } else if (z(this.j)) {
            zi.g(this.l == 8);
            zi.g(this.k <= 2147483647L);
            qw7 qw7Var = new qw7((int) this.k);
            System.arraycopy(this.e.d(), 0, qw7Var.d(), 0, 8);
            this.m = qw7Var;
            this.i = 1;
        } else {
            t(pk3Var.getPosition() - ((long) this.l));
            this.m = null;
            this.i = 1;
        }
        return true;
    }

    public final boolean v(pk3 pk3Var, id8 id8Var) {
        boolean z;
        long j = this.k - ((long) this.l);
        long position = pk3Var.getPosition() + j;
        qw7 qw7Var = this.m;
        if (qw7Var == null) {
            if (j < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                pk3Var.skipFully((int) j);
            } else {
                id8Var.a = pk3Var.getPosition() + j;
                z = true;
            }
            p(position);
            return (z || this.i == 2) ? false : true;
        }
        pk3Var.readFully(qw7Var.d(), this.l, (int) j);
        if (this.j == 1718909296) {
            this.w = r(qw7Var);
        } else if (!this.f.isEmpty()) {
            ((xk.a) this.f.peek()).e(new xk.b(this.j, qw7Var));
        }
        z = false;
        p(position);
        if (z) {
        }
    }

    public final int w(pk3 pk3Var, id8 id8Var) throws ParserException {
        long position = pk3Var.getPosition();
        if (this.n == -1) {
            int iK = k(position);
            this.n = iK;
            if (iK == -1) {
                return -1;
            }
        }
        a aVar = this.s[this.n];
        fva fvaVar = aVar.c;
        int i = aVar.e;
        gva gvaVar = aVar.b;
        long j = gvaVar.c[i];
        int i2 = gvaVar.d[i];
        fab fabVar = aVar.d;
        long j2 = (j - position) + ((long) this.o);
        if (j2 < 0 || j2 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            id8Var.a = j;
            return 1;
        }
        if (aVar.a.g == 1) {
            j2 += 8;
            i2 -= 8;
        }
        pk3Var.skipFully((int) j2);
        tua tuaVar = aVar.a;
        if (tuaVar.j == 0) {
            if (MimeTypes.AUDIO_AC4.equals(tuaVar.f.m)) {
                if (this.p == 0) {
                    s4.a(i2, this.d);
                    fvaVar.d(this.d, 7);
                    this.p += 7;
                }
                i2 += 7;
            } else if (fabVar != null) {
                fabVar.d(pk3Var);
            }
            while (true) {
                int i3 = this.p;
                if (i3 >= i2) {
                    break;
                }
                int iC = fvaVar.c(pk3Var, i2 - i3, false);
                this.o += iC;
                this.p += iC;
                this.q -= iC;
            }
        } else {
            byte[] bArrD = this.c.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i4 = aVar.a.j;
            int i5 = 4 - i4;
            while (this.p < i2) {
                int i6 = this.q;
                if (i6 == 0) {
                    pk3Var.readFully(bArrD, i5, i4);
                    this.o += i4;
                    this.c.O(0);
                    int iN = this.c.n();
                    if (iN < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.q = iN;
                    this.b.O(0);
                    fvaVar.d(this.b, 4);
                    this.p += 4;
                    i2 += i5;
                } else {
                    int iC2 = fvaVar.c(pk3Var, i6, false);
                    this.o += iC2;
                    this.p += iC2;
                    this.q -= iC2;
                }
            }
        }
        int i7 = i2;
        gva gvaVar2 = aVar.b;
        long j3 = gvaVar2.f[i];
        int i8 = gvaVar2.g[i];
        if (fabVar != null) {
            fabVar.c(fvaVar, j3, i8, i7, 0, null);
            if (i + 1 == aVar.b.b) {
                fabVar.a(fvaVar, null);
            }
        } else {
            fvaVar.e(j3, i8, i7, 0, null);
        }
        aVar.e++;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        return 0;
    }

    public final int x(pk3 pk3Var, id8 id8Var) throws ParserException {
        int iC = this.g.c(pk3Var, id8Var, this.h);
        if (iC == 1 && id8Var.a == 0) {
            h();
        }
        return iC;
    }

    public qr6(int i) {
        this.a = i;
        this.i = (i & 4) != 0 ? 3 : 0;
        this.g = new na9();
        this.h = new ArrayList();
        this.e = new qw7(16);
        this.f = new ArrayDeque();
        this.b = new qw7(ay6.a);
        this.c = new qw7(4);
        this.d = new qw7();
        this.n = -1;
        this.r = qk3.C1;
        this.s = new a[0];
    }
}
