package defpackage;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.wb;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzgf;
import com.google.android.gms.internal.ads.zzgu;
import com.google.android.gms.internal.ads.zzzq;
import defpackage.koj;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class koj implements zmj, f9e, trj, wrj, voj {
    public static final Map O;
    public static final erj P;
    public boolean A;
    public boolean C;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public long H;
    public boolean J;
    public int K;
    public boolean L;
    public boolean M;
    public final nrj N;
    public final Uri b;
    public final v9i c;
    public final ojj d;
    public final rnj e;
    public final jjj f;
    public final goj g;
    public final long h;
    public final long i;
    public final znj k;
    public ymj p;
    public sce q;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public joj x;
    public kae y;
    public long z;
    public final wb j = new wb("ProgressiveMediaPeriod");
    public final oeg l = new oeg(tbg.a);
    public final Runnable m = new Runnable() {
        @Override
        public final void run() {
            this.zza.C();
        }
    };
    public final Runnable n = new Runnable() {
        @Override
        public final void run() {
            koj.o(this.zza);
        }
    };
    public final Handler o = kfh.T(null);
    public ioj[] s = new ioj[0];
    public xoj[] r = new xoj[0];
    public long I = C.TIME_UNSET;
    public int B = 1;

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        O = Collections.unmodifiableMap(map);
        gpj gpjVar = new gpj();
        gpjVar.o("icy");
        gpjVar.E(MimeTypes.APPLICATION_ICY);
        P = gpjVar.K();
    }

    public koj(Uri uri, v9i v9iVar, znj znjVar, ojj ojjVar, jjj jjjVar, rrj rrjVar, rnj rnjVar, goj gojVar, nrj nrjVar, String str, int i, int i2, erj erjVar, long j, a6e a6eVar) {
        this.b = uri;
        this.c = v9iVar;
        this.d = ojjVar;
        this.f = jjjVar;
        this.e = rnjVar;
        this.g = gojVar;
        this.N = nrjVar;
        this.h = i;
        this.k = znjVar;
        this.i = j;
    }

    public static long M(koj kojVar, boolean z) {
        return kojVar.z(true);
    }

    public static void o(koj kojVar) {
        if (kojVar.M) {
            return;
        }
        ymj ymjVar = kojVar.p;
        ymjVar.getClass();
        ymjVar.h(kojVar);
    }

    public static void q(koj kojVar, kae kaeVar) {
        kojVar.y = kojVar.q == null ? kaeVar : new jae(C.TIME_UNSET, 0L);
        kojVar.z = kaeVar.zza();
        boolean z = false;
        if (!kojVar.G && kaeVar.zza() == C.TIME_UNSET) {
            z = true;
        }
        kojVar.A = z;
        kojVar.B = true == z ? 7 : 1;
        if (kojVar.u) {
            kojVar.g.k(kojVar.z, kaeVar, z);
        } else {
            kojVar.C();
        }
    }

    public static void t(final koj kojVar) {
        kojVar.o.post(new Runnable() {
            @Override
            public final void run() {
                this.zza.G = true;
            }
        });
    }

    public final rae A(ioj iojVar) {
        int length = this.r.length;
        for (int i = 0; i < length; i++) {
            if (iojVar.equals(this.s[i])) {
                return this.r[i];
            }
        }
        if (this.t) {
            zrg.f("ProgressiveMediaPeriod", "Extractor added new track (id=" + iojVar.a + ") after finishing tracks.");
            return new s8e();
        }
        xoj xojVar = new xoj(this.N, this.d, this.f);
        xojVar.J(this);
        int i2 = length + 1;
        ioj[] iojVarArr = (ioj[]) Arrays.copyOf(this.s, i2);
        iojVarArr[length] = iojVar;
        int i3 = kfh.a;
        this.s = iojVarArr;
        xoj[] xojVarArr = (xoj[]) Arrays.copyOf(this.r, i2);
        xojVarArr[length] = xojVar;
        this.r = xojVarArr;
        return xojVar;
    }

    public final void B() {
        n7g.f(this.u);
        this.x.getClass();
        this.y.getClass();
    }

    public final void C() {
        int i;
        if (this.M || this.u || !this.t || this.y == null) {
            return;
        }
        for (xoj xojVar : this.r) {
            if (xojVar.B() == null) {
                return;
            }
        }
        this.l.c();
        int length = this.r.length;
        n5f[] n5fVarArr = new n5f[length];
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            erj erjVarB = this.r[i2].B();
            erjVarB.getClass();
            String str = erjVarB.o;
            boolean zH = bue.h(str);
            boolean z = zH || bue.j(str);
            zArr[i2] = z;
            this.v = z | this.v;
            this.w = this.i != C.TIME_UNSET && length == 1 && bue.i(str);
            sce sceVar = this.q;
            if (sceVar != null) {
                if (zH || this.s[i2].b) {
                    hre hreVar = erjVarB.l;
                    hre hreVar2 = hreVar == null ? new hre(C.TIME_UNSET, sceVar) : hreVar.c(sceVar);
                    gpj gpjVarB = erjVarB.b();
                    gpjVarB.w(hreVar2);
                    erjVarB = gpjVarB.K();
                }
                if (zH && erjVarB.h == -1 && erjVarB.i == -1 && (i = sceVar.a) != -1) {
                    gpj gpjVarB2 = erjVarB.b();
                    gpjVarB2.a(i);
                    erjVarB = gpjVarB2.K();
                }
            }
            erj erjVarC = erjVarB.c(this.d.a(erjVarB));
            n5fVarArr[i2] = new n5f(Integer.toString(i2), erjVarC);
            this.E = erjVarC.u | this.E;
        }
        this.x = new joj(new npj(n5fVarArr), zArr);
        if (this.w && this.z == C.TIME_UNSET) {
            this.z = this.i;
            this.y = new aoj(this, this.y);
        }
        this.g.k(this.z, this.y, this.A);
        this.u = true;
        ymj ymjVar = this.p;
        ymjVar.getClass();
        ymjVar.f(this);
    }

    public final void D(int i) {
        B();
        joj jojVar = this.x;
        boolean[] zArr = jojVar.d;
        if (zArr[i]) {
            return;
        }
        erj erjVarB = jojVar.a.b(i).b(0);
        this.e.d(new xmj(1, bue.b(erjVarB.o), erjVarB, 0, null, kfh.Q(this.H), C.TIME_UNSET));
        zArr[i] = true;
    }

    public final void E(int i) {
        B();
        if (this.J) {
            if ((!this.v || this.x.b[i]) && !this.r[i].M(false)) {
                this.I = 0L;
                this.J = false;
                this.D = true;
                this.H = 0L;
                this.K = 0;
                for (xoj xojVar : this.r) {
                    xojVar.H(false);
                }
                ymj ymjVar = this.p;
                ymjVar.getClass();
                ymjVar.h(this);
            }
        }
    }

    public final void F() {
        boj bojVar = new boj(this, this.b, this.c, this.k, this, this.l);
        if (this.u) {
            n7g.f(G());
            long j = this.z;
            if (j != C.TIME_UNSET && this.I > j) {
                this.L = true;
                this.I = C.TIME_UNSET;
                return;
            }
            kae kaeVar = this.y;
            kaeVar.getClass();
            boj.f(bojVar, kaeVar.a(this.I).a.b, this.I);
            for (xoj xojVar : this.r) {
                xojVar.I(this.I);
            }
            this.I = C.TIME_UNSET;
        }
        this.K = y();
        this.j.a(bojVar, this, rrj.a(this.B));
    }

    public final boolean G() {
        return this.I != C.TIME_UNSET;
    }

    public final boolean H() {
        return this.D || G();
    }

    public final int I(int i, p7j p7jVar, xzi xziVar, int i2) {
        if (H()) {
            return -3;
        }
        D(i);
        int iZ = this.r[i].z(p7jVar, xziVar, i2, this.L);
        if (iZ == -3) {
            E(i);
        }
        return iZ;
    }

    public final int J(int i, long j) {
        if (H()) {
            return 0;
        }
        D(i);
        xoj xojVar = this.r[i];
        int iX = xojVar.x(j, this.L);
        xojVar.K(iX);
        if (iX != 0) {
            return iX;
        }
        E(i);
        return 0;
    }

    public final rae P() {
        return A(new ioj(0, true));
    }

    @Override
    public final void a(long j) {
    }

    @Override
    public final boolean b(z7j z7jVar) {
        if (this.L) {
            return false;
        }
        wb wbVar = this.j;
        if (wbVar.k() || this.J) {
            return false;
        }
        if (this.u && this.F == 0) {
            return false;
        }
        boolean zE = this.l.e();
        if (wbVar.l()) {
            return zE;
        }
        F();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    /* JADX WARN: Code duplicated, block: B:37:0x007c A[LOOP:1: B:36:0x007a->B:37:0x007c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    /* JADX WARN: Code duplicated, block: B:41:0x0091 A[LOOP:2: B:40:0x008f->B:41:0x0091, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x0077, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x0088, please report this as an issue */
    @Override
    public final long c(long j) {
        wb wbVar;
        int i;
        B();
        boolean[] zArr = this.x.b;
        if (true != this.y.zzh()) {
            j = 0;
        }
        this.D = false;
        long j2 = this.H;
        this.H = j;
        if (G()) {
            this.I = j;
            return j;
        }
        if (this.B == 7 || !(this.L || this.j.l())) {
            this.J = false;
            this.I = j;
            this.L = false;
            this.E = false;
            wbVar = this.j;
            if (wbVar.l()) {
                wbVar.h();
                for (xoj xojVar : this.r) {
                    xojVar.H(false);
                }
                break;
            }
            for (xoj xojVar2 : this.r) {
                xojVar2.D();
            }
            wbVar.g();
            break;
        }
        int length = this.r.length;
        for (int i2 = 0; i2 < length; i2++) {
            xoj xojVar3 = this.r[i2];
            if (xojVar3.w() != 0 || j2 != j) {
                if (!(this.w ? xojVar3.N(xojVar3.v()) : xojVar3.h(j, false)) && (zArr[i2] || !this.v)) {
                    this.J = false;
                    this.I = j;
                    this.L = false;
                    this.E = false;
                    wbVar = this.j;
                    if (wbVar.l()) {
                        wbVar.h();
                        while (i < r0) {
                            xojVar.H(false);
                        }
                        break;
                        break;
                    }
                    while (i < r2) {
                        xojVar2.D();
                    }
                    wbVar.g();
                    break;
                }
            }
        }
        return j;
    }

    @Override
    public final void d(ymj ymjVar, long j) {
        this.p = ymjVar;
        this.l.e();
        F();
    }

    @Override
    public final void e(long j, boolean z) {
        if (this.w) {
            return;
        }
        B();
        if (G()) {
            return;
        }
        boolean[] zArr = this.x.c;
        int length = this.r.length;
        for (int i = 0; i < length; i++) {
            this.r[i].C(j, false, zArr[i]);
        }
    }

    @Override
    public final void f(vrj vrjVar, long j, long j2, boolean z) {
        boj bojVar = (boj) vrjVar;
        nwi nwiVar = bojVar.c;
        smj smjVar = new smj(bojVar.a, bojVar.k, nwiVar.l(), nwiVar.m(), j, j2, nwiVar.k());
        long unused = bojVar.a;
        this.e.e(smjVar, new xmj(1, -1, null, 0, null, kfh.Q(bojVar.j), kfh.Q(this.z)));
        if (z) {
            return;
        }
        for (xoj xojVar : this.r) {
            xojVar.H(false);
        }
        if (this.F > 0) {
            ymj ymjVar = this.p;
            ymjVar.getClass();
            ymjVar.h(this);
        }
    }

    @Override
    public final long g(long j, kaj kajVar) {
        B();
        if (!this.y.zzh()) {
            return 0L;
        }
        z9e z9eVarA = this.y.a(j);
        lae laeVar = z9eVarA.a;
        lae laeVar2 = z9eVarA.b;
        long j2 = kajVar.a;
        if (j2 == 0) {
            if (kajVar.b == 0) {
                return j;
            }
            j2 = 0;
        }
        long j3 = laeVar.a;
        int i = kfh.a;
        long j4 = j - j2;
        long j5 = kajVar.b;
        long j6 = j + j5;
        long j7 = j ^ j6;
        long j8 = j5 ^ j6;
        if (((j2 ^ j) & (j ^ j4)) < 0) {
            j4 = Long.MIN_VALUE;
        }
        if ((j7 & j8) < 0) {
            j6 = Long.MAX_VALUE;
        }
        boolean z = j4 <= j3 && j3 <= j6;
        long j9 = laeVar2.a;
        boolean z2 = j4 <= j9 && j9 <= j6;
        if (z && z2) {
            if (Math.abs(j3 - j) > Math.abs(j9 - j)) {
                return j9;
            }
        } else if (!z) {
            return z2 ? j9 : j4;
        }
        return j3;
    }

    @Override
    public final void h(vrj vrjVar, long j, long j2, int i) {
        boj bojVar = (boj) vrjVar;
        nwi nwiVar = bojVar.c;
        this.e.h(i == 0 ? new smj(bojVar.a, bojVar.k, j) : new smj(bojVar.a, bojVar.k, nwiVar.l(), nwiVar.m(), j, j2, nwiVar.k()), new xmj(1, -1, null, 0, null, kfh.Q(bojVar.j), kfh.Q(this.z)), i);
    }

    @Override
    public final void i(final kae kaeVar) {
        this.o.post(new Runnable() {
            @Override
            public final void run() {
                koj.q(this.zza, kaeVar);
            }
        });
    }

    @Override
    public final rae j(int i, int i2) {
        return A(new ioj(i, false));
    }

    @Override
    public final urj k(vrj vrjVar, long j, long j2, IOException iOException, int i) {
        long jMin;
        urj urjVarB;
        kae kaeVar;
        boj bojVar = (boj) vrjVar;
        nwi nwiVar = bojVar.c;
        smj smjVar = new smj(bojVar.a, bojVar.k, nwiVar.l(), nwiVar.m(), j, j2, nwiVar.k());
        long unused = bojVar.j;
        int i2 = kfh.a;
        if ((iOException instanceof zzaz) || (iOException instanceof FileNotFoundException) || (iOException instanceof zzgu) || (iOException instanceof zzzq)) {
            jMin = -9223372036854775807L;
            break;
        }
        Throwable cause = iOException;
        while (true) {
            if (cause == null) {
                jMin = Math.min((i - 1) * 1000, 5000);
                break;
            }
            if ((cause instanceof zzgf) && ((zzgf) cause).zza == 2008) {
                jMin = -9223372036854775807L;
                break;
            }
            cause = cause.getCause();
        }
        if (jMin == C.TIME_UNSET) {
            urjVarB = wb.e;
        } else {
            int iY = y();
            boolean z = iY > this.K;
            if (this.G || !((kaeVar = this.y) == null || kaeVar.zza() == C.TIME_UNSET)) {
                this.K = iY;
            } else {
                boolean z2 = this.u;
                if (!z2 || H()) {
                    this.D = z2;
                    this.H = 0L;
                    this.K = 0;
                    for (xoj xojVar : this.r) {
                        xojVar.H(false);
                    }
                    boj.f(bojVar, 0L, 0L);
                } else {
                    this.J = true;
                    urjVarB = wb.d;
                }
            }
            urjVarB = wb.b(z, jMin);
        }
        boolean zC = urjVarB.c();
        this.e.g(smjVar, new xmj(1, -1, null, 0, null, kfh.Q(bojVar.j), kfh.Q(this.z)), iOException, true ^ zC);
        if (!zC) {
            long unused2 = bojVar.a;
        }
        return urjVarB;
    }

    @Override
    public final void l(erj erjVar) {
        this.o.post(this.m);
    }

    @Override
    public final long m(tqj[] tqjVarArr, boolean[] zArr, yoj[] yojVarArr, boolean[] zArr2, long j) {
        tqj tqjVar;
        B();
        joj jojVar = this.x;
        npj npjVar = jojVar.a;
        boolean[] zArr3 = jojVar.c;
        int i = this.F;
        int i2 = 0;
        for (int i3 = 0; i3 < tqjVarArr.length; i3++) {
            yoj yojVar = yojVarArr[i3];
            if (yojVar != null && (tqjVarArr[i3] == null || !zArr[i3])) {
                int i4 = ((hoj) yojVar).a;
                n7g.f(zArr3[i4]);
                this.F--;
                zArr3[i4] = false;
                yojVarArr[i3] = null;
            }
        }
        boolean z = !this.C ? j == 0 || this.w : i != 0;
        for (int i5 = 0; i5 < tqjVarArr.length; i5++) {
            if (yojVarArr[i5] == null && (tqjVar = tqjVarArr[i5]) != null) {
                n7g.f(tqjVar.zzd() == 1);
                n7g.f(tqjVar.zza(0) == 0);
                int iA = npjVar.a(tqjVar.zzg());
                n7g.f(!zArr3[iA]);
                this.F++;
                zArr3[iA] = true;
                this.E = tqjVar.zzf().u | this.E;
                yojVarArr[i5] = new hoj(this, iA);
                zArr2[i5] = true;
                if (!z) {
                    xoj xojVar = this.r[iA];
                    z = (xojVar.w() == 0 || xojVar.h(j, true)) ? false : true;
                }
            }
        }
        if (this.F == 0) {
            this.J = false;
            this.D = false;
            this.E = false;
            wb wbVar = this.j;
            if (wbVar.l()) {
                xoj[] xojVarArr = this.r;
                int length = xojVarArr.length;
                while (i2 < length) {
                    xojVarArr[i2].D();
                    i2++;
                }
                wbVar.g();
            } else {
                this.L = false;
                for (xoj xojVar2 : this.r) {
                    xojVar2.H(false);
                }
            }
        } else if (z) {
            j = c(j);
            while (i2 < yojVarArr.length) {
                if (yojVarArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.C = true;
        return j;
    }

    @Override
    public final void n(vrj vrjVar, long j, long j2) {
        boj bojVar = (boj) vrjVar;
        if (this.z == C.TIME_UNSET && this.y != null) {
            long jZ = z(true);
            long j3 = jZ == Long.MIN_VALUE ? 0L : jZ + 10000;
            this.z = j3;
            this.g.k(j3, this.y, this.A);
        }
        nwi nwiVar = bojVar.c;
        smj smjVar = new smj(bojVar.a, bojVar.k, nwiVar.l(), nwiVar.m(), j, j2, nwiVar.k());
        long unused = bojVar.a;
        this.e.f(smjVar, new xmj(1, -1, null, 0, null, kfh.Q(bojVar.j), kfh.Q(this.z)));
        this.L = true;
        ymj ymjVar = this.p;
        ymjVar.getClass();
        ymjVar.h(this);
    }

    public final void u() throws IOException {
        this.j.i(rrj.a(this.B));
    }

    public final void v(int i) {
        this.r[i].E();
        u();
    }

    public final void w() {
        if (this.u) {
            for (xoj xojVar : this.r) {
                xojVar.F();
            }
        }
        this.j.j(this);
        this.o.removeCallbacksAndMessages(null);
        this.p = null;
        this.M = true;
    }

    public final boolean x(int i) {
        return !H() && this.r[i].M(this.L);
    }

    public final int y() {
        int iY = 0;
        for (xoj xojVar : this.r) {
            iY += xojVar.y();
        }
        return iY;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    public final long z(boolean z) {
        int i = 0;
        long jMax = Long.MIN_VALUE;
        while (true) {
            xoj[] xojVarArr = this.r;
            if (i >= xojVarArr.length) {
                return jMax;
            }
            if (z) {
                jMax = Math.max(jMax, xojVarArr[i].A());
            } else {
                joj jojVar = this.x;
                jojVar.getClass();
                if (jojVar.c[i]) {
                    jMax = Math.max(jMax, xojVarArr[i].A());
                }
            }
            i++;
        }
    }

    @Override
    public final void zzG() {
        this.t = true;
        this.o.post(this.m);
    }

    @Override
    public final void zzM() {
        for (xoj xojVar : this.r) {
            xojVar.G();
        }
        this.k.zze();
    }

    @Override
    public final long zzb() {
        long jZ;
        B();
        if (this.L || this.F == 0) {
            return Long.MIN_VALUE;
        }
        if (G()) {
            return this.I;
        }
        if (this.v) {
            int length = this.r.length;
            jZ = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                joj jojVar = this.x;
                if (jojVar.b[i] && jojVar.c[i] && !this.r[i].L()) {
                    jZ = Math.min(jZ, this.r[i].A());
                }
            }
        } else {
            jZ = Long.MAX_VALUE;
        }
        if (jZ == Long.MAX_VALUE) {
            jZ = z(false);
        }
        return jZ == Long.MIN_VALUE ? this.H : jZ;
    }

    @Override
    public final long zzc() {
        return zzb();
    }

    @Override
    public final long zzd() {
        if (this.E) {
            this.E = false;
        } else {
            if (!this.D) {
                return C.TIME_UNSET;
            }
            if (!this.L && y() <= this.K) {
                return C.TIME_UNSET;
            }
            this.D = false;
        }
        return this.H;
    }

    @Override
    public final npj zzg() {
        B();
        return this.x.a;
    }

    @Override
    public final void zzi() throws IOException {
        u();
        if (this.L && !this.u) {
            throw zzaz.zza("Loading finished before preparation is complete.", null);
        }
    }

    @Override
    public final boolean zzp() {
        return this.j.l() && this.l.d();
    }
}
