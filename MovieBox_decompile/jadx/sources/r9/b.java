package r9;

import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import i9.b0;
import i9.m;
import i9.s;
import i9.t;
import i9.u;
import i9.v;
import java.util.Arrays;

final class b extends i {

    private v f70881n;

    private a f70882o;

    private static final class a implements g {

        private v f70883a;

        private v.a f70884b;

        private long f70885c = -1;

        private long f70886d = -1;

        public a(v vVar, v.a aVar) {
            this.f70883a = vVar;
            this.f70884b = aVar;
        }

        @Override
        public long a(m mVar) {
            long j10 = this.f70886d;
            if (j10 < 0) {
                return -1L;
            }
            long j11 = -(j10 + 2);
            this.f70886d = -1L;
            return j11;
        }

        public void b(long j10) {
            this.f70885c = j10;
        }

        @Override
        public b0 createSeekMap() {
            com.google.android.exoplayer2.util.a.g(this.f70885c != -1);
            return new u(this.f70883a, this.f70885c);
        }

        @Override
        public void startSeek(long j10) {
            long[] jArr = this.f70884b.f61986a;
            this.f70886d = jArr[p0.i(jArr, j10, true, true)];
        }
    }

    b() {
    }

    private int n(d0 d0Var) {
        int i10 = (d0Var.d()[2] & 255) >> 4;
        if (i10 == 6 || i10 == 7) {
            d0Var.Q(4);
            d0Var.K();
        }
        int iJ = s.j(d0Var, i10);
        d0Var.P(0);
        return iJ;
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean p(d0 d0Var) {
        return d0Var.a() >= 5 && d0Var.D() == 127 && d0Var.F() == 1179402563;
    }

    @Override
    protected long f(d0 d0Var) {
        if (o(d0Var.d())) {
            return n(d0Var);
        }
        return -1L;
    }

    @Override
    protected boolean h(d0 d0Var, long j10, i.b bVar) {
        byte[] bArrD = d0Var.d();
        v vVar = this.f70881n;
        if (vVar == null) {
            v vVar2 = new v(bArrD, 17);
            this.f70881n = vVar2;
            bVar.f70923a = vVar2.g(Arrays.copyOfRange(bArrD, 9, d0Var.f()), null);
            return true;
        }
        if ((bArrD[0] & 127) == 3) {
            v.a aVarF = t.f(d0Var);
            v vVarB = vVar.b(aVarF);
            this.f70881n = vVarB;
            this.f70882o = new a(vVarB, aVarF);
            return true;
        }
        if (!o(bArrD)) {
            return true;
        }
        a aVar = this.f70882o;
        if (aVar != null) {
            aVar.b(j10);
            bVar.f70924b = this.f70882o;
        }
        com.google.android.exoplayer2.util.a.e(bVar.f70923a);
        return false;
    }

    @Override
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f70881n = null;
            this.f70882o = null;
        }
    }
}
