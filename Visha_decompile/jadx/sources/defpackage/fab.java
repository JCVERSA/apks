package defpackage;

public final class fab {
    public final byte[] a = new byte[10];
    public boolean b;
    public int c;
    public long d;
    public int e;
    public int f;
    public int g;

    public void a(fva fvaVar, fva.a aVar) {
        if (this.c > 0) {
            fvaVar.e(this.d, this.e, this.f, this.g, aVar);
            this.c = 0;
        }
    }

    public void b() {
        this.b = false;
        this.c = 0;
    }

    public void c(fva fvaVar, long j, int i, int i2, int i3, fva.a aVar) {
        zi.h(this.g <= i2 + i3, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.b) {
            int i4 = this.c;
            int i5 = i4 + 1;
            this.c = i5;
            if (i4 == 0) {
                this.d = j;
                this.e = i;
                this.f = 0;
            }
            this.f += i2;
            this.g = i3;
            if (i5 >= 16) {
                a(fvaVar, aVar);
            }
        }
    }

    public void d(pk3 pk3Var) {
        if (this.b) {
            return;
        }
        pk3Var.peekFully(this.a, 0, 10);
        pk3Var.resetPeekPosition();
        if (n4.i(this.a) == 0) {
            return;
        }
        this.b = true;
    }
}
