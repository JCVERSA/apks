package f3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import java.util.Arrays;
import k2.a0;
import k2.b0;
import k2.m0;
import k2.s;
import k2.y;
import k2.z;

final class b extends i {

    private b0 f59984n;

    private a f59985o;

    private static final class a implements g {

        private b0 f59986a;

        private b0.a f59987b;

        private long f59988c = -1;

        private long f59989d = -1;

        public a(b0 b0Var, b0.a aVar) {
            this.f59986a = b0Var;
            this.f59987b = aVar;
        }

        @Override
        public long a(s sVar) {
            long j10 = this.f59989d;
            if (j10 < 0) {
                return -1L;
            }
            long j11 = -(j10 + 2);
            this.f59989d = -1L;
            return j11;
        }

        public void b(long j10) {
            this.f59988c = j10;
        }

        @Override
        public m0 createSeekMap() {
            androidx.media3.common.util.a.g(this.f59988c != -1);
            return new a0(this.f59986a, this.f59988c);
        }

        @Override
        public void startSeek(long j10) {
            long[] jArr = this.f59987b.f63520a;
            this.f59989d = jArr[a1.h(jArr, j10, true, true)];
        }
    }

    b() {
    }

    private int n(j0 j0Var) {
        int i10 = (j0Var.e()[2] & 255) >> 4;
        if (i10 == 6 || i10 == 7) {
            j0Var.X(4);
            j0Var.Q();
        }
        int iJ = y.j(j0Var, i10);
        j0Var.W(0);
        return iJ;
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean p(j0 j0Var) {
        return j0Var.a() >= 5 && j0Var.H() == 127 && j0Var.J() == 1179402563;
    }

    @Override
    protected long f(j0 j0Var) {
        if (o(j0Var.e())) {
            return n(j0Var);
        }
        return -1L;
    }

    @Override
    protected boolean h(j0 j0Var, long j10, i.b bVar) {
        byte[] bArrE = j0Var.e();
        b0 b0Var = this.f59984n;
        if (b0Var == null) {
            b0 b0Var2 = new b0(bArrE, 17);
            this.f59984n = b0Var2;
            bVar.f60026a = b0Var2.g(Arrays.copyOfRange(bArrE, 9, j0Var.g()), null).b().U("audio/ogg").N();
            return true;
        }
        if ((bArrE[0] & 127) == 3) {
            b0.a aVarF = z.f(j0Var);
            b0 b0VarB = b0Var.b(aVarF);
            this.f59984n = b0VarB;
            this.f59985o = new a(b0VarB, aVarF);
            return true;
        }
        if (!o(bArrE)) {
            return true;
        }
        a aVar = this.f59985o;
        if (aVar != null) {
            aVar.b(j10);
            bVar.f60027b = this.f59985o;
        }
        androidx.media3.common.util.a.e(bVar.f60026a);
        return false;
    }

    @Override
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f59984n = null;
            this.f59985o = null;
        }
    }
}
