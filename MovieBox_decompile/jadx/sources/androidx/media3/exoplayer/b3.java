package androidx.media3.exoplayer;

import android.util.Pair;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

final class b3 {

    private final x1.a f11008c;

    private final androidx.media3.common.util.p f11009d;

    private final y2.a f11010e;

    private long f11011f;

    private int f11012g;

    private boolean f11013h;

    private ExoPlayer.c f11014i;

    private y2 f11015j;

    private y2 f11016k;

    private y2 f11017l;

    private y2 f11018m;

    private y2 f11019n;

    private int f11020o;

    private Object f11021p;

    private long f11022q;

    private final androidx.media3.common.e0.b f11006a = new androidx.media3.common.e0.b();

    private final androidx.media3.common.e0.c f11007b = new androidx.media3.common.e0.c();

    private List f11023r = new ArrayList();

    public b3(x1.a aVar, androidx.media3.common.util.p pVar, y2.a aVar2, ExoPlayer.c cVar) {
        this.f11008c = aVar;
        this.f11009d = pVar;
        this.f11010e = aVar2;
        this.f11014i = cVar;
    }

    private boolean A(Object obj, androidx.media3.common.e0 e0Var) {
        int iC = e0Var.h(obj, this.f11006a).c();
        int iP = this.f11006a.p();
        return iC > 0 && this.f11006a.s(iP) && (iC > 1 || this.f11006a.f(iP) != Long.MIN_VALUE);
    }

    private boolean C(androidx.media3.exoplayer.source.r.b bVar) {
        return !bVar.b() && bVar.f12575e == -1;
    }

    private boolean D(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, boolean z10) {
        int iB = e0Var.b(bVar.f12571a);
        return !e0Var.n(e0Var.f(iB, this.f11006a).f9624c, this.f11007b).f9647i && e0Var.r(iB, this.f11006a, this.f11007b, this.f11012g, this.f11013h) && z10;
    }

    private boolean E(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        if (C(bVar)) {
            return e0Var.n(e0Var.h(bVar.f12571a, this.f11006a).f9624c, this.f11007b).f9653o == e0Var.b(bVar.f12571a);
        }
        return false;
    }

    private static boolean H(androidx.media3.common.e0.b bVar) {
        int iC = bVar.c();
        if (iC == 0) {
            return false;
        }
        if ((iC == 1 && bVar.r(0)) || !bVar.s(bVar.p())) {
            return false;
        }
        long jI = 0;
        if (bVar.e(0L) != -1) {
            return false;
        }
        if (bVar.f9625d == 0) {
            return true;
        }
        int i10 = iC - (bVar.r(iC + (-1)) ? 2 : 1);
        for (int i11 = 0; i11 <= i10; i11++) {
            jI += bVar.i(i11);
        }
        return bVar.f9625d <= jI;
    }

    public void I(ImmutableList.a aVar, androidx.media3.exoplayer.source.r.b bVar) {
        this.f11008c.q(aVar.e(), bVar);
    }

    private void K() {
        final ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (y2 y2VarK = this.f11015j; y2VarK != null; y2VarK = y2VarK.k()) {
            aVarBuilder.a(y2VarK.f13063h.f13076a);
        }
        y2 y2Var = this.f11016k;
        final androidx.media3.exoplayer.source.r.b bVar = y2Var == null ? null : y2Var.f13063h.f13076a;
        this.f11009d.post(new Runnable() {
            @Override
            public final void run() {
                this.f10680a.I(aVarBuilder, bVar);
            }
        });
    }

    private void M(List list) {
        for (int i10 = 0; i10 < this.f11023r.size(); i10++) {
            ((y2) this.f11023r.get(i10)).x();
        }
        this.f11023r = list;
        this.f11019n = null;
        J();
    }

    private y2 P(z2 z2Var) {
        for (int i10 = 0; i10 < this.f11023r.size(); i10++) {
            if (((y2) this.f11023r.get(i10)).d(z2Var)) {
                return (y2) this.f11023r.remove(i10);
            }
        }
        return null;
    }

    private static androidx.media3.exoplayer.source.r.b Q(androidx.media3.common.e0 e0Var, Object obj, long j10, long j11, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        e0Var.h(obj, bVar);
        e0Var.n(bVar.f9624c, cVar);
        Object objE = obj;
        for (int iB = e0Var.b(obj); H(bVar) && iB <= cVar.f9653o; iB++) {
            e0Var.g(iB, bVar, true);
            objE = androidx.media3.common.util.a.e(bVar.f9623b);
        }
        e0Var.h(objE, bVar);
        int iE = bVar.e(j10);
        return iE == -1 ? new androidx.media3.exoplayer.source.r.b(objE, j11, bVar.d(j10)) : new androidx.media3.exoplayer.source.r.b(objE, iE, bVar.l(iE), j11);
    }

    private long S(androidx.media3.common.e0 e0Var, Object obj) {
        int iB;
        int i10 = e0Var.h(obj, this.f11006a).f9624c;
        Object obj2 = this.f11021p;
        if (obj2 != null && (iB = e0Var.b(obj2)) != -1 && e0Var.f(iB, this.f11006a).f9624c == i10) {
            return this.f11022q;
        }
        for (y2 y2VarK = this.f11015j; y2VarK != null; y2VarK = y2VarK.k()) {
            if (y2VarK.f13057b.equals(obj)) {
                return y2VarK.f13063h.f13076a.f12574d;
            }
        }
        for (y2 y2VarK2 = this.f11015j; y2VarK2 != null; y2VarK2 = y2VarK2.k()) {
            int iB2 = e0Var.b(y2VarK2.f13057b);
            if (iB2 != -1 && e0Var.f(iB2, this.f11006a).f9624c == i10) {
                return y2VarK2.f13063h.f13076a.f12574d;
            }
        }
        long jT = T(obj);
        if (jT != -1) {
            return jT;
        }
        long j10 = this.f11011f;
        this.f11011f = 1 + j10;
        if (this.f11015j == null) {
            this.f11021p = obj;
            this.f11022q = j10;
        }
        return j10;
    }

    private long T(Object obj) {
        for (int i10 = 0; i10 < this.f11023r.size(); i10++) {
            y2 y2Var = (y2) this.f11023r.get(i10);
            if (y2Var.f13057b.equals(obj)) {
                return y2Var.f13063h.f13076a.f12574d;
            }
        }
        return -1L;
    }

    private int V(androidx.media3.common.e0 e0Var) {
        y2 y2VarK = this.f11015j;
        if (y2VarK == null) {
            return 0;
        }
        int iB = e0Var.b(y2VarK.f13057b);
        while (true) {
            iB = e0Var.d(iB, this.f11006a, this.f11007b, this.f11012g, this.f11013h);
            while (((y2) androidx.media3.common.util.a.e(y2VarK)).k() != null && !y2VarK.f13063h.f13083h) {
                y2VarK = y2VarK.k();
            }
            y2 y2VarK2 = y2VarK.k();
            if (iB == -1 || y2VarK2 == null || e0Var.b(y2VarK2.f13057b) != iB) {
                break;
            }
            y2VarK = y2VarK2;
        }
        int iO = O(y2VarK);
        y2VarK.f13063h = z(e0Var, y2VarK.f13063h);
        return iO;
    }

    static boolean e(long j10, long j11) {
        return j10 == C.TIME_UNSET || j10 == j11;
    }

    private boolean f(z2 z2Var, z2 z2Var2) {
        return z2Var.f13077b == z2Var2.f13077b && z2Var.f13076a.equals(z2Var2.f13076a);
    }

    private Pair i(androidx.media3.common.e0 e0Var, Object obj, long j10) {
        int iE = e0Var.e(e0Var.h(obj, this.f11006a).f9624c, this.f11012g, this.f11013h);
        if (iE != -1) {
            return e0Var.k(this.f11007b, this.f11006a, iE, C.TIME_UNSET, j10);
        }
        return null;
    }

    private z2 j(r3 r3Var) {
        return o(r3Var.f12231a, r3Var.f12232b, r3Var.f12233c, r3Var.f12249s);
    }

    private z2 k(androidx.media3.common.e0 e0Var, y2 y2Var, long j10) {
        long j11;
        long j12;
        Object obj;
        long j13;
        long j14;
        long jT;
        z2 z2Var = y2Var.f13063h;
        int iD = e0Var.d(e0Var.b(z2Var.f13076a.f12571a), this.f11006a, this.f11007b, this.f11012g, this.f11013h);
        if (iD == -1) {
            return null;
        }
        int i10 = e0Var.g(iD, this.f11006a, true).f9624c;
        Object objE = androidx.media3.common.util.a.e(this.f11006a.f9623b);
        long j15 = z2Var.f13076a.f12574d;
        if (e0Var.n(i10, this.f11007b).f9652n == iD) {
            Pair pairK = e0Var.k(this.f11007b, this.f11006a, i10, C.TIME_UNSET, Math.max(0L, j10));
            if (pairK == null) {
                return null;
            }
            Object obj2 = pairK.first;
            long jLongValue = ((Long) pairK.second).longValue();
            y2 y2VarK = y2Var.k();
            if (y2VarK == null || !y2VarK.f13057b.equals(obj2)) {
                jT = T(obj2);
                if (jT == -1) {
                    jT = this.f11011f;
                    this.f11011f = 1 + jT;
                }
            } else {
                jT = y2VarK.f13063h.f13076a.f12574d;
            }
            j11 = jT;
            j12 = -9223372036854775807L;
            obj = obj2;
            j13 = jLongValue;
        } else {
            j11 = j15;
            j12 = 0;
            obj = objE;
            j13 = 0;
        }
        androidx.media3.exoplayer.source.r.b bVarQ = Q(e0Var, obj, j13, j11, this.f11007b, this.f11006a);
        if (j12 == C.TIME_UNSET || z2Var.f13078c == C.TIME_UNSET) {
            j14 = j13;
        } else {
            boolean zA = A(z2Var.f13076a.f12571a, e0Var);
            if (bVarQ.b() && zA) {
                j12 = z2Var.f13078c;
            } else if (zA) {
                j14 = z2Var.f13078c;
            }
            j14 = j13;
        }
        return o(e0Var, bVarQ, j12, j14);
    }

    private z2 l(androidx.media3.common.e0 e0Var, y2 y2Var, long j10) {
        z2 z2Var = y2Var.f13063h;
        long jM = (y2Var.m() + z2Var.f13080e) - j10;
        return z2Var.f13083h ? k(e0Var, y2Var, jM) : m(e0Var, y2Var, jM);
    }

    private z2 m(androidx.media3.common.e0 e0Var, y2 y2Var, long j10) {
        z2 z2Var = y2Var.f13063h;
        androidx.media3.exoplayer.source.r.b bVar = z2Var.f13076a;
        e0Var.h(bVar.f12571a, this.f11006a);
        boolean z10 = z2Var.f13082g;
        if (!bVar.b()) {
            int i10 = bVar.f12575e;
            if (i10 != -1 && this.f11006a.r(i10)) {
                return k(e0Var, y2Var, j10);
            }
            int iL = this.f11006a.l(bVar.f12575e);
            boolean z11 = this.f11006a.s(bVar.f12575e) && this.f11006a.h(bVar.f12575e, iL) == 3;
            if (iL == this.f11006a.a(bVar.f12575e) || z11) {
                return q(e0Var, bVar.f12571a, s(e0Var, bVar.f12571a, bVar.f12575e), z2Var.f13080e, bVar.f12574d, false);
            }
            return p(e0Var, bVar.f12571a, bVar.f12575e, iL, z2Var.f13080e, bVar.f12574d, z10);
        }
        int i11 = bVar.f12572b;
        int iA = this.f11006a.a(i11);
        if (iA == -1) {
            return null;
        }
        int iM = this.f11006a.m(i11, bVar.f12573c);
        if (iM < iA) {
            return p(e0Var, bVar.f12571a, i11, iM, z2Var.f13078c, bVar.f12574d, z10);
        }
        long jLongValue = z2Var.f13078c;
        if (jLongValue == C.TIME_UNSET) {
            androidx.media3.common.e0.c cVar = this.f11007b;
            androidx.media3.common.e0.b bVar2 = this.f11006a;
            Pair pairK = e0Var.k(cVar, bVar2, bVar2.f9624c, C.TIME_UNSET, Math.max(0L, j10));
            if (pairK == null) {
                return null;
            }
            jLongValue = ((Long) pairK.second).longValue();
        }
        return q(e0Var, bVar.f12571a, Math.max(s(e0Var, bVar.f12571a, bVar.f12572b), jLongValue), z2Var.f13078c, bVar.f12574d, z10);
    }

    private z2 o(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j10, long j11) {
        e0Var.h(bVar.f12571a, this.f11006a);
        return bVar.b() ? p(e0Var, bVar.f12571a, bVar.f12572b, bVar.f12573c, j10, bVar.f12574d, false) : q(e0Var, bVar.f12571a, j11, j10, bVar.f12574d, false);
    }

    private z2 p(androidx.media3.common.e0 e0Var, Object obj, int i10, int i11, long j10, long j11, boolean z10) {
        androidx.media3.exoplayer.source.r.b bVar = new androidx.media3.exoplayer.source.r.b(obj, i10, i11, j11);
        long jB = e0Var.h(bVar.f12571a, this.f11006a).b(bVar.f12572b, bVar.f12573c);
        long jG = i11 == this.f11006a.l(i10) ? this.f11006a.g() : 0L;
        return new z2(bVar, (jB == C.TIME_UNSET || jG < jB) ? jG : Math.max(0L, jB - 1), j10, C.TIME_UNSET, jB, z10, this.f11006a.s(bVar.f12572b), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ba  */
    private z2 q(androidx.media3.common.e0 e0Var, Object obj, long j10, long j11, long j12, boolean z10) {
        boolean z11;
        long j13;
        long jF;
        long j14;
        long jMax = j10;
        e0Var.h(obj, this.f11006a);
        int iD = this.f11006a.d(jMax);
        boolean z12 = iD != -1 && this.f11006a.r(iD);
        if (iD == -1) {
            if (this.f11006a.c() > 0) {
                androidx.media3.common.e0.b bVar = this.f11006a;
                if (bVar.s(bVar.p())) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
        } else if (this.f11006a.s(iD)) {
            long jF2 = this.f11006a.f(iD);
            androidx.media3.common.e0.b bVar2 = this.f11006a;
            if (jF2 == bVar2.f9625d && bVar2.q(iD)) {
                z11 = true;
                iD = -1;
            } else {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        androidx.media3.exoplayer.source.r.b bVar3 = new androidx.media3.exoplayer.source.r.b(obj, j12, iD);
        boolean zC = C(bVar3);
        boolean zE = E(e0Var, bVar3);
        boolean zD = D(e0Var, bVar3, zC);
        boolean z13 = (iD == -1 || !this.f11006a.s(iD) || z12) ? false : true;
        if (iD == -1 || z12) {
            if (z11) {
                jF = this.f11006a.f9625d;
            } else {
                j13 = -9223372036854775807L;
            }
            if (j13 != C.TIME_UNSET || j13 == Long.MIN_VALUE) {
                j14 = this.f11006a.f9625d;
            } else {
                j14 = j13;
            }
            if (j14 != C.TIME_UNSET && jMax >= j14) {
                jMax = Math.max(0L, j14 - ((long) ((zD && z11) ? 0 : 1)));
            }
            return new z2(bVar3, jMax, j11, j13, j14, z10, z13, zC, zE, zD);
        }
        jF = this.f11006a.f(iD);
        j13 = jF;
        if (j13 != C.TIME_UNSET) {
            j14 = this.f11006a.f9625d;
        } else {
            j14 = this.f11006a.f9625d;
        }
        if (j14 != C.TIME_UNSET) {
            jMax = Math.max(0L, j14 - ((long) ((zD && z11) ? 0 : 1)));
        }
        return new z2(bVar3, jMax, j11, j13, j14, z10, z13, zC, zE, zD);
    }

    private z2 r(androidx.media3.common.e0 e0Var, Object obj, long j10, long j11) {
        androidx.media3.exoplayer.source.r.b bVarQ = Q(e0Var, obj, j10, j11, this.f11007b, this.f11006a);
        return bVarQ.b() ? p(e0Var, bVarQ.f12571a, bVarQ.f12572b, bVarQ.f12573c, j10, bVarQ.f12574d, false) : q(e0Var, bVarQ.f12571a, j10, C.TIME_UNSET, bVarQ.f12574d, false);
    }

    private long s(androidx.media3.common.e0 e0Var, Object obj, int i10) {
        e0Var.h(obj, this.f11006a);
        long jF = this.f11006a.f(i10);
        return jF == Long.MIN_VALUE ? this.f11006a.f9625d : jF + this.f11006a.i(i10);
    }

    public void B(androidx.media3.common.e0 e0Var) {
        y2 y2Var;
        if (this.f11014i.f10674a == C.TIME_UNSET || (y2Var = this.f11018m) == null) {
            N();
            return;
        }
        ArrayList arrayList = new ArrayList();
        Pair pairI = i(e0Var, y2Var.f13063h.f13076a.f12571a, 0L);
        if (pairI != null && !e0Var.n(e0Var.h(pairI.first, this.f11006a).f9624c, this.f11007b).f()) {
            long jT = T(pairI.first);
            if (jT == -1) {
                jT = this.f11011f;
                this.f11011f = 1 + jT;
            }
            z2 z2VarR = r(e0Var, pairI.first, ((Long) pairI.second).longValue(), jT);
            y2 y2VarP = P(z2VarR);
            if (y2VarP == null) {
                y2VarP = this.f11010e.a(z2VarR, (y2Var.m() + y2Var.f13063h.f13080e) - z2VarR.f13077b);
            }
            arrayList.add(y2VarP);
        }
        M(arrayList);
    }

    public boolean F(androidx.media3.exoplayer.source.q qVar) {
        y2 y2Var = this.f11018m;
        return y2Var != null && y2Var.f13056a == qVar;
    }

    public boolean G(androidx.media3.exoplayer.source.q qVar) {
        y2 y2Var = this.f11019n;
        return y2Var != null && y2Var.f13056a == qVar;
    }

    public void J() {
        y2 y2Var = this.f11019n;
        if (y2Var == null || y2Var.t()) {
            this.f11019n = null;
            for (int i10 = 0; i10 < this.f11023r.size(); i10++) {
                y2 y2Var2 = (y2) this.f11023r.get(i10);
                if (!y2Var2.t()) {
                    this.f11019n = y2Var2;
                    return;
                }
            }
        }
    }

    public void L(long j10) {
        y2 y2Var = this.f11018m;
        if (y2Var != null) {
            y2Var.w(j10);
        }
    }

    public void N() {
        if (this.f11023r.isEmpty()) {
            return;
        }
        M(new ArrayList());
    }

    public int O(y2 y2Var) {
        androidx.media3.common.util.a.i(y2Var);
        int i10 = 0;
        if (y2Var.equals(this.f11018m)) {
            return 0;
        }
        this.f11018m = y2Var;
        while (y2Var.k() != null) {
            y2Var = (y2) androidx.media3.common.util.a.e(y2Var.k());
            if (y2Var == this.f11016k) {
                y2 y2Var2 = this.f11015j;
                this.f11016k = y2Var2;
                this.f11017l = y2Var2;
                i10 = 3;
            }
            if (y2Var == this.f11017l) {
                this.f11017l = this.f11016k;
                i10 |= 2;
            }
            y2Var.x();
            this.f11020o--;
        }
        ((y2) androidx.media3.common.util.a.e(this.f11018m)).A(null);
        K();
        return i10;
    }

    public androidx.media3.exoplayer.source.r.b R(androidx.media3.common.e0 e0Var, Object obj, long j10) {
        long jS = S(e0Var, obj);
        e0Var.h(obj, this.f11006a);
        e0Var.n(this.f11006a.f9624c, this.f11007b);
        boolean z10 = false;
        for (int iB = e0Var.b(obj); iB >= this.f11007b.f9652n; iB--) {
            e0Var.g(iB, this.f11006a, true);
            boolean z11 = this.f11006a.c() > 0;
            z10 |= z11;
            androidx.media3.common.e0.b bVar = this.f11006a;
            if (bVar.e(bVar.f9625d) != -1) {
                obj = androidx.media3.common.util.a.e(this.f11006a.f9623b);
            }
            if (z10 && (!z11 || this.f11006a.f9625d != 0)) {
                break;
            }
        }
        return Q(e0Var, obj, j10, jS, this.f11007b, this.f11006a);
    }

    public boolean U() {
        y2 y2Var = this.f11018m;
        return y2Var == null || (!y2Var.f13063h.f13085j && y2Var.s() && this.f11018m.f13063h.f13080e != C.TIME_UNSET && this.f11020o < 100);
    }

    public void W(androidx.media3.common.e0 e0Var, ExoPlayer.c cVar) {
        this.f11014i = cVar;
        B(e0Var);
    }

    public int X(androidx.media3.common.e0 e0Var, long j10, long j11, long j12) {
        z2 z2VarZ;
        y2 y2VarK = this.f11015j;
        y2 y2Var = null;
        while (true) {
            boolean z10 = false;
            if (y2VarK == null) {
                return 0;
            }
            z2 z2Var = y2VarK.f13063h;
            if (y2Var == null) {
                z2VarZ = z(e0Var, z2Var);
            } else {
                z2 z2VarL = l(e0Var, y2Var, j10);
                if (z2VarL == null || !f(z2Var, z2VarL)) {
                    return O(y2Var);
                }
                z2VarZ = z2VarL;
            }
            y2VarK.f13063h = z2VarZ.a(z2Var.f13078c);
            if (!e(z2Var.f13080e, z2VarZ.f13080e)) {
                y2VarK.E();
                long j13 = z2VarZ.f13080e;
                long jD = j13 == C.TIME_UNSET ? Long.MAX_VALUE : y2VarK.D(j13);
                int i10 = (y2VarK != this.f11016k || y2VarK.f13063h.f13082g || (j11 != Long.MIN_VALUE && j11 < jD)) ? 0 : 1;
                if (y2VarK == this.f11017l && (j12 == Long.MIN_VALUE || j12 >= jD)) {
                    z10 = true;
                }
                int iO = O(y2VarK);
                if (iO != 0) {
                    return iO;
                }
                return z10 ? i10 | 2 : i10;
            }
            y2Var = y2VarK;
            y2VarK = y2VarK.k();
        }
    }

    public int Y(androidx.media3.common.e0 e0Var, int i10) {
        this.f11012g = i10;
        return V(e0Var);
    }

    public int Z(androidx.media3.common.e0 e0Var, boolean z10) {
        this.f11013h = z10;
        return V(e0Var);
    }

    public y2 b() {
        y2 y2Var = this.f11015j;
        if (y2Var == null) {
            return null;
        }
        if (y2Var == this.f11016k) {
            this.f11016k = y2Var.k();
        }
        y2 y2Var2 = this.f11015j;
        if (y2Var2 == this.f11017l) {
            this.f11017l = y2Var2.k();
        }
        this.f11015j.x();
        int i10 = this.f11020o - 1;
        this.f11020o = i10;
        if (i10 == 0) {
            this.f11018m = null;
            y2 y2Var3 = this.f11015j;
            this.f11021p = y2Var3.f13057b;
            this.f11022q = y2Var3.f13063h.f13076a.f12574d;
        }
        this.f11015j = this.f11015j.k();
        K();
        return this.f11015j;
    }

    public y2 c() {
        this.f11017l = ((y2) androidx.media3.common.util.a.i(this.f11017l)).k();
        K();
        return (y2) androidx.media3.common.util.a.i(this.f11017l);
    }

    public y2 d() {
        y2 y2Var = this.f11017l;
        y2 y2Var2 = this.f11016k;
        if (y2Var == y2Var2) {
            this.f11017l = ((y2) androidx.media3.common.util.a.i(y2Var2)).k();
        }
        this.f11016k = ((y2) androidx.media3.common.util.a.i(this.f11016k)).k();
        K();
        return (y2) androidx.media3.common.util.a.i(this.f11016k);
    }

    public void g() {
        if (this.f11020o == 0) {
            return;
        }
        y2 y2VarK = (y2) androidx.media3.common.util.a.i(this.f11015j);
        this.f11021p = y2VarK.f13057b;
        this.f11022q = y2VarK.f13063h.f13076a.f12574d;
        while (y2VarK != null) {
            y2VarK.x();
            y2VarK = y2VarK.k();
        }
        this.f11015j = null;
        this.f11018m = null;
        this.f11016k = null;
        this.f11017l = null;
        this.f11020o = 0;
        K();
    }

    public y2 h(z2 z2Var) {
        y2 y2Var = this.f11018m;
        long jM = y2Var == null ? 1000000000000L : (y2Var.m() + this.f11018m.f13063h.f13080e) - z2Var.f13077b;
        y2 y2VarP = P(z2Var);
        if (y2VarP == null) {
            y2VarP = this.f11010e.a(z2Var, jM);
        } else {
            y2VarP.f13063h = z2Var;
            y2VarP.B(jM);
        }
        y2 y2Var2 = this.f11018m;
        if (y2Var2 != null) {
            y2Var2.A(y2VarP);
        } else {
            this.f11015j = y2VarP;
            this.f11016k = y2VarP;
            this.f11017l = y2VarP;
        }
        this.f11021p = null;
        this.f11018m = y2VarP;
        this.f11020o++;
        K();
        return y2VarP;
    }

    public y2 n() {
        return this.f11018m;
    }

    public z2 t(long j10, r3 r3Var) {
        y2 y2Var = this.f11018m;
        return y2Var == null ? j(r3Var) : l(r3Var.f12231a, y2Var, j10);
    }

    public y2 u() {
        return this.f11015j;
    }

    public y2 v(androidx.media3.exoplayer.source.q qVar) {
        for (int i10 = 0; i10 < this.f11023r.size(); i10++) {
            y2 y2Var = (y2) this.f11023r.get(i10);
            if (y2Var.f13056a == qVar) {
                return y2Var;
            }
        }
        return null;
    }

    public y2 w() {
        return this.f11019n;
    }

    public y2 x() {
        return this.f11017l;
    }

    public y2 y() {
        return this.f11016k;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    public z2 z(androidx.media3.common.e0 e0Var, z2 z2Var) {
        long jK;
        long j10;
        int i10;
        boolean zS;
        int i11;
        androidx.media3.exoplayer.source.r.b bVar = z2Var.f13076a;
        boolean zC = C(bVar);
        boolean zE = E(e0Var, bVar);
        boolean zD = D(e0Var, bVar, zC);
        e0Var.h(z2Var.f13076a.f12571a, this.f11006a);
        long jF = (bVar.b() || (i11 = bVar.f12575e) == -1) ? -9223372036854775807L : this.f11006a.f(i11);
        if (!bVar.b()) {
            if (jF == C.TIME_UNSET || jF == Long.MIN_VALUE) {
                jK = this.f11006a.k();
            } else {
                j10 = jF;
            }
            if (bVar.b()) {
                zS = this.f11006a.s(bVar.f12572b);
            } else {
                i10 = bVar.f12575e;
                if (i10 == -1 && this.f11006a.s(i10)) {
                    zS = true;
                } else {
                    zS = false;
                }
            }
            return new z2(bVar, z2Var.f13077b, z2Var.f13078c, jF, j10, z2Var.f13081f, zS, zC, zE, zD);
        }
        jK = this.f11006a.b(bVar.f12572b, bVar.f12573c);
        j10 = jK;
        if (bVar.b()) {
            zS = this.f11006a.s(bVar.f12572b);
        } else {
            i10 = bVar.f12575e;
            if (i10 == -1) {
                zS = false;
            } else {
                zS = false;
            }
        }
        return new z2(bVar, z2Var.f13077b, z2Var.f13078c, jF, j10, z2Var.f13081f, zS, zC, zE, zD);
    }
}
