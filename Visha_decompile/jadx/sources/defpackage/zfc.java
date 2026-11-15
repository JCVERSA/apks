package defpackage;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;

public final class zfc extends sy9 {
    public a n;
    public int o;
    public boolean p;
    public agc.d q;
    public agc.b r;

    public static final class a {
        public final agc.d a;
        public final agc.b b;
        public final byte[] c;
        public final agc.c[] d;
        public final int e;

        public a(agc.d dVar, agc.b bVar, byte[] bArr, agc.c[] cVarArr, int i) {
            this.a = dVar;
            this.b = bVar;
            this.c = bArr;
            this.d = cVarArr;
            this.e = i;
        }
    }

    public static void n(qw7 qw7Var, long j) {
        if (qw7Var.b() < qw7Var.f() + 4) {
            qw7Var.L(Arrays.copyOf(qw7Var.d(), qw7Var.f() + 4));
        } else {
            qw7Var.N(qw7Var.f() + 4);
        }
        byte[] bArrD = qw7Var.d();
        bArrD[qw7Var.f() - 4] = (byte) (j & 255);
        bArrD[qw7Var.f() - 3] = (byte) ((j >>> 8) & 255);
        bArrD[qw7Var.f() - 2] = (byte) ((j >>> 16) & 255);
        bArrD[qw7Var.f() - 1] = (byte) ((j >>> 24) & 255);
    }

    public static int o(byte b, a aVar) {
        return !aVar.d[p(b, aVar.e, 1)].a ? aVar.a.g : aVar.a.h;
    }

    public static int p(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    public static boolean r(qw7 qw7Var) {
        try {
            return agc.m(1, qw7Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override
    public void e(long j) {
        super.e(j);
        this.p = j != 0;
        agc.d dVar = this.q;
        this.o = dVar != null ? dVar.g : 0;
    }

    @Override
    public long f(qw7 qw7Var) {
        if ((qw7Var.d()[0] & 1) == 1) {
            return -1L;
        }
        int iO = o(qw7Var.d()[0], (a) zi.i(this.n));
        long j = this.p ? (this.o + iO) / 4 : 0;
        n(qw7Var, j);
        this.p = true;
        this.o = iO;
        return j;
    }

    @Override
    public boolean i(qw7 qw7Var, long j, sy9.b bVar) throws ParserException {
        if (this.n != null) {
            zi.e(bVar.a);
            return false;
        }
        a aVarQ = q(qw7Var);
        this.n = aVarQ;
        if (aVarQ == null) {
            return true;
        }
        agc.d dVar = aVarQ.a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.j);
        arrayList.add(aVarQ.c);
        bVar.a = new k.b().e0("audio/vorbis").G(dVar.e).Z(dVar.d).H(dVar.b).f0(dVar.c).T(arrayList).X(agc.c(ImmutableList.copyOf(aVarQ.b.b))).E();
        return true;
    }

    @Override
    public void l(boolean z) {
        super.l(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }

    public a q(qw7 qw7Var) throws ParserException {
        agc.d dVar = this.q;
        if (dVar == null) {
            this.q = agc.k(qw7Var);
            return null;
        }
        agc.b bVar = this.r;
        if (bVar == null) {
            this.r = agc.i(qw7Var);
            return null;
        }
        byte[] bArr = new byte[qw7Var.f()];
        System.arraycopy(qw7Var.d(), 0, bArr, 0, qw7Var.f());
        agc.c[] cVarArrL = agc.l(qw7Var, dVar.b);
        return new a(dVar, bVar, bArr, cVarArrL, agc.a(cVarArrL.length - 1));
    }
}
