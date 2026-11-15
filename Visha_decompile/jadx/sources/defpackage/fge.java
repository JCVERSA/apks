package defpackage;

import java.util.Arrays;

public final class fge {
    public final gge a = new gge();
    public final u4h b = new u4h(new byte[65025], 0);
    public int c = -1;
    public int d;
    public boolean e;

    public final u4h a() {
        return this.b;
    }

    public final gge b() {
        return this.a;
    }

    public final void c() {
        this.a.a();
        this.b.i(0);
        this.c = -1;
        this.e = false;
    }

    public final void d() {
        u4h u4hVar = this.b;
        if (u4hVar.n().length == 65025) {
            return;
        }
        u4hVar.j(Arrays.copyOf(u4hVar.n(), Math.max(65025, u4hVar.x())), u4hVar.x());
    }

    public final boolean e(d9e d9eVar) {
        if (this.e) {
            this.e = false;
            this.b.i(0);
        }
        while (true) {
            if (this.e) {
                return true;
            }
            int i = this.c;
            if (i < 0) {
                gge ggeVar = this.a;
                if (!ggeVar.c(d9eVar, -1L) || !ggeVar.b(d9eVar, true)) {
                    return false;
                }
                int iF = ggeVar.d;
                if ((ggeVar.a & 1) == 1 && this.b.x() == 0) {
                    iF += f(0);
                    i = this.d;
                } else {
                    i = 0;
                }
                if (!g9e.e(d9eVar, iF)) {
                    return false;
                }
                this.c = i;
            }
            int iF2 = f(i);
            int i2 = this.c + this.d;
            if (iF2 > 0) {
                u4h u4hVar = this.b;
                u4hVar.f(u4hVar.x() + iF2);
                if (!g9e.d(d9eVar, u4hVar.n(), u4hVar.x(), iF2)) {
                    return false;
                }
                u4hVar.k(u4hVar.x() + iF2);
                this.e = this.a.f[i2 + (-1)] != 255;
            }
            if (i2 == this.a.c) {
                i2 = -1;
            }
            this.c = i2;
        }
    }

    public final int f(int i) {
        int i2;
        int i3 = 0;
        this.d = 0;
        do {
            int i4 = this.d;
            int i5 = i + i4;
            gge ggeVar = this.a;
            if (i5 >= ggeVar.c) {
                break;
            }
            this.d = i4 + 1;
            i2 = ggeVar.f[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }
}
