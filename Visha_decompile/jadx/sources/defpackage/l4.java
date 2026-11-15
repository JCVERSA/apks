package defpackage;

import androidx.media3.common.C;

public final class l4 implements nk3 {
    public static final uk3 d = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return l4.e();
        }
    };
    public final m4 a = new m4();
    public final qw7 b = new qw7(2786);
    public boolean c;

    public static nk3[] e() {
        return new nk3[]{new l4()};
    }

    @Override
    public void a(qk3 qk3Var) {
        this.a.c(qk3Var, new nab.d(0, 1));
        qk3Var.endTracks();
        qk3Var.d(new ja9.b(C.TIME_UNSET));
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) {
        int i = pk3Var.read(this.b.d(), 0, 2786);
        if (i == -1) {
            return -1;
        }
        this.b.O(0);
        this.b.N(i);
        if (!this.c) {
            this.a.packetStarted(0L, 4);
            this.c = true;
        }
        this.a.a(this.b);
        return 0;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        qw7 qw7Var = new qw7(10);
        int i = 0;
        while (true) {
            pk3Var.peekFully(qw7Var.d(), 0, 10);
            qw7Var.O(0);
            if (qw7Var.F() != 4801587) {
                break;
            }
            qw7Var.P(3);
            int iB = qw7Var.B();
            i += iB + 10;
            pk3Var.advancePeekPosition(iB);
        }
        pk3Var.resetPeekPosition();
        pk3Var.advancePeekPosition(i);
        int i2 = 0;
        int i3 = i;
        while (true) {
            pk3Var.peekFully(qw7Var.d(), 0, 6);
            qw7Var.O(0);
            if (qw7Var.I() != 2935) {
                pk3Var.resetPeekPosition();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                pk3Var.advancePeekPosition(i3);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int iF = n4.f(qw7Var.d());
                if (iF == -1) {
                    return false;
                }
                pk3Var.advancePeekPosition(iF - 6);
            }
        }
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        this.c = false;
        this.a.seek();
    }
}
