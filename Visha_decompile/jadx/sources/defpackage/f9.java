package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;

public final class f9 implements nk3 {
    public static final uk3 m = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return f9.h();
        }
    };
    public final int a;
    public final g9 b;
    public final qw7 c;
    public final qw7 d;
    public final pw7 e;
    public qk3 f;
    public long g;
    public long h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;

    public f9() {
        this(0);
    }

    private static int f(int i, long j) {
        return (int) ((((long) i) * 8000000) / j);
    }

    private ja9 g(long j, boolean z) {
        return new lf1(j, this.h, f(this.i, this.b.i()), this.i, z);
    }

    public static nk3[] h() {
        return new nk3[]{new f9()};
    }

    @Override
    public void a(qk3 qk3Var) {
        this.f = qk3Var;
        this.b.c(qk3Var, new nab.d(0, 1));
        qk3Var.endTracks();
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        zi.i(this.f);
        long length = pk3Var.getLength();
        int i = this.a;
        if ((i & 2) != 0 || ((i & 1) != 0 && length != -1)) {
            e(pk3Var);
        }
        int i2 = pk3Var.read(this.c.d(), 0, 2048);
        boolean z = i2 == -1;
        i(length, z);
        if (z) {
            return -1;
        }
        this.c.O(0);
        this.c.N(i2);
        if (!this.k) {
            this.b.packetStarted(this.g, 4);
            this.k = true;
        }
        this.b.a(this.c);
        return 0;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        int iJ = j(pk3Var);
        int i = iJ;
        int i2 = 0;
        int i3 = 0;
        do {
            pk3Var.peekFully(this.d.d(), 0, 2);
            this.d.O(0);
            if (g9.k(this.d.I())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                pk3Var.peekFully(this.d.d(), 0, 4);
                this.e.p(14);
                int iH = this.e.h(13);
                if (iH <= 6) {
                    i++;
                    pk3Var.resetPeekPosition();
                    pk3Var.advancePeekPosition(i);
                } else {
                    pk3Var.advancePeekPosition(iH - 6);
                    i3 += iH;
                }
            } else {
                i++;
                pk3Var.resetPeekPosition();
                pk3Var.advancePeekPosition(i);
            }
            i2 = 0;
            i3 = 0;
        } while (i - iJ < 8192);
        return false;
    }

    public final void e(pk3 pk3Var) throws ParserException {
        if (this.j) {
            return;
        }
        this.i = -1;
        pk3Var.resetPeekPosition();
        long j = 0;
        if (pk3Var.getPosition() == 0) {
            j(pk3Var);
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                if (pk3Var.peekFully(this.d.d(), 0, 2, true)) {
                    this.d.O(0);
                    if (!g9.k(this.d.I())) {
                        break;
                    }
                    if (pk3Var.peekFully(this.d.d(), 0, 4, true)) {
                        this.e.p(14);
                        int iH = this.e.h(13);
                        if (iH <= 6) {
                            this.j = true;
                            throw ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                        }
                        j += (long) iH;
                        i2++;
                        if (i2 != 1000 && pk3Var.advancePeekPosition(iH - 6, true)) {
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i = i2;
            break;
        }
        pk3Var.resetPeekPosition();
        if (i > 0) {
            this.i = (int) (j / ((long) i));
        } else {
            this.i = -1;
        }
        this.j = true;
    }

    public final void i(long j, boolean z) {
        if (this.l) {
            return;
        }
        boolean z2 = (this.a & 1) != 0 && this.i > 0;
        if (z2 && this.b.i() == C.TIME_UNSET && !z) {
            return;
        }
        if (!z2 || this.b.i() == C.TIME_UNSET) {
            this.f.d(new ja9.b(C.TIME_UNSET));
        } else {
            this.f.d(g(j, (this.a & 2) != 0));
        }
        this.l = true;
    }

    public final int j(pk3 pk3Var) {
        int i = 0;
        while (true) {
            pk3Var.peekFully(this.d.d(), 0, 10);
            this.d.O(0);
            if (this.d.F() != 4801587) {
                break;
            }
            this.d.P(3);
            int iB = this.d.B();
            i += iB + 10;
            pk3Var.advancePeekPosition(iB);
        }
        pk3Var.resetPeekPosition();
        pk3Var.advancePeekPosition(i);
        if (this.h == -1) {
            this.h = i;
        }
        return i;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        this.k = false;
        this.b.seek();
        this.g = j2;
    }

    public f9(int i) {
        this.a = (i & 2) != 0 ? i | 1 : i;
        this.b = new g9(true);
        this.c = new qw7(2048);
        this.i = -1;
        this.h = -1L;
        qw7 qw7Var = new qw7(10);
        this.d = qw7Var;
        this.e = new pw7(qw7Var.d());
    }
}
