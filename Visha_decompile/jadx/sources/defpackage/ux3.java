package defpackage;

import java.util.Arrays;

public final class ux3 extends sy9 {
    public wx3 n;
    public a o;

    public static final class a implements de7 {
        public wx3 a;
        public wx3.a b;
        public long c = -1;
        public long d = -1;

        public a(wx3 wx3Var, wx3.a aVar) {
            this.a = wx3Var;
            this.b = aVar;
        }

        @Override
        public long a(pk3 pk3Var) {
            long j = this.d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.d = -1L;
            return j2;
        }

        public void b(long j) {
            this.c = j;
        }

        @Override
        public ja9 createSeekMap() {
            zi.g(this.c != -1);
            return new vx3(this.a, this.c);
        }

        @Override
        public void startSeek(long j) {
            long[] jArr = this.b.a;
            this.d = jArr[blb.i(jArr, j, true, true)];
        }
    }

    public static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean p(qw7 qw7Var) {
        return qw7Var.a() >= 5 && qw7Var.C() == 127 && qw7Var.E() == 1179402563;
    }

    @Override
    public long f(qw7 qw7Var) {
        if (o(qw7Var.d())) {
            return n(qw7Var);
        }
        return -1L;
    }

    @Override
    public boolean i(qw7 qw7Var, long j, sy9.b bVar) {
        byte[] bArrD = qw7Var.d();
        wx3 wx3Var = this.n;
        if (wx3Var == null) {
            wx3 wx3Var2 = new wx3(bArrD, 17);
            this.n = wx3Var2;
            bVar.a = wx3Var2.g(Arrays.copyOfRange(bArrD, 9, qw7Var.f()), null);
            return true;
        }
        if ((bArrD[0] & 127) == 3) {
            wx3.a aVarG = tx3.g(qw7Var);
            wx3 wx3VarB = wx3Var.b(aVarG);
            this.n = wx3VarB;
            this.o = new a(wx3VarB, aVarG);
            return true;
        }
        if (!o(bArrD)) {
            return true;
        }
        a aVar = this.o;
        if (aVar != null) {
            aVar.b(j);
            bVar.b = this.o;
        }
        zi.e(bVar.a);
        return false;
    }

    @Override
    public void l(boolean z) {
        super.l(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }

    public final int n(qw7 qw7Var) {
        int i = (qw7Var.d()[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            qw7Var.P(4);
            qw7Var.J();
        }
        int iJ = sx3.j(qw7Var, i);
        qw7Var.O(0);
        return iJ;
    }
}
