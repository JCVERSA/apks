package defpackage;

import com.google.android.exoplayer2.ParserException;

public final class ce7 {
    public int a;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;
    public int g;
    public int h;
    public int i;
    public final int[] j = new int[255];
    public final qw7 k = new qw7(255);

    public boolean a(pk3 pk3Var, boolean z) throws ParserException {
        b();
        this.k.K(27);
        if (!rk3.b(pk3Var, this.k.d(), 0, 27, z) || this.k.E() != 1332176723) {
            return false;
        }
        int iC = this.k.C();
        this.a = iC;
        if (iC != 0) {
            if (z) {
                return false;
            }
            throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
        }
        this.b = this.k.C();
        this.c = this.k.q();
        this.d = this.k.s();
        this.e = this.k.s();
        this.f = this.k.s();
        int iC2 = this.k.C();
        this.g = iC2;
        this.h = iC2 + 27;
        this.k.K(iC2);
        if (!rk3.b(pk3Var, this.k.d(), 0, this.g, z)) {
            return false;
        }
        for (int i = 0; i < this.g; i++) {
            this.j[i] = this.k.C();
            this.i += this.j[i];
        }
        return true;
    }

    public void b() {
        this.a = 0;
        this.b = 0;
        this.c = 0L;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0;
        this.h = 0;
        this.i = 0;
    }

    public boolean c(pk3 pk3Var) {
        return d(pk3Var, -1L);
    }

    public boolean d(pk3 pk3Var, long j) {
        zi.a(pk3Var.getPosition() == pk3Var.getPeekPosition());
        this.k.K(4);
        while (true) {
            if ((j != -1 && pk3Var.getPosition() + 4 >= j) || !rk3.b(pk3Var, this.k.d(), 0, 4, true)) {
                break;
            }
            this.k.O(0);
            if (this.k.E() == 1332176723) {
                pk3Var.resetPeekPosition();
                return true;
            }
            pk3Var.skipFully(1);
        }
        do {
            if (j != -1 && pk3Var.getPosition() >= j) {
                break;
            }
        } while (pk3Var.skip(1) != -1);
        return false;
    }
}
