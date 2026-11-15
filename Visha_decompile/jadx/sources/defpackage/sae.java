package defpackage;

public final class sae {
    public final byte[] a = new byte[10];
    public boolean b;
    public int c;
    public long d;
    public int e;
    public int f;
    public int g;

    public final void a(rae raeVar, qae qaeVar) {
        if (this.c > 0) {
            raeVar.g(this.d, this.e, this.f, this.g, qaeVar);
            this.c = 0;
        }
    }

    public final void b() {
        this.b = false;
        this.c = 0;
    }

    public final void c(rae raeVar, long j, int i, int i2, int i3, qae qaeVar) {
        n7g.g(this.g <= i2 + i3, "TrueHD chunk samples must be contiguous in the sample queue.");
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
                a(raeVar, qaeVar);
            }
        }
    }

    public final void d(d9e d9eVar) {
        if (this.b) {
            return;
        }
        byte[] bArr = this.a;
        d9eVar.i(bArr, 0, 10);
        d9eVar.zzj();
        int[] iArr = w7e.a;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            this.b = true;
        }
    }
}
