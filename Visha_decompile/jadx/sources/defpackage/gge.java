package defpackage;

import com.google.android.gms.internal.ads.zzaz;

public final class gge {
    public int a;
    public long b;
    public int c;
    public int d;
    public int e;
    public final int[] f = new int[255];
    public final u4h g = new u4h(255);

    public final void a() {
        this.a = 0;
        this.b = 0L;
        this.c = 0;
        this.d = 0;
        this.e = 0;
    }

    public final boolean b(d9e d9eVar, boolean z) throws zzaz {
        a();
        u4h u4hVar = this.g;
        u4hVar.i(27);
        if (g9e.c(d9eVar, u4hVar.n(), 0, 27, z) && u4hVar.O() == 1332176723) {
            if (u4hVar.G() != 0) {
                if (z) {
                    return false;
                }
                throw zzaz.zzc("unsupported bit stream revision");
            }
            this.a = u4hVar.G();
            this.b = u4hVar.L();
            u4hVar.M();
            u4hVar.M();
            u4hVar.M();
            int iG = u4hVar.G();
            this.c = iG;
            this.d = iG + 27;
            u4hVar.i(iG);
            if (g9e.c(d9eVar, u4hVar.n(), 0, this.c, z)) {
                for (int i = 0; i < this.c; i++) {
                    int[] iArr = this.f;
                    int iG2 = u4hVar.G();
                    iArr[i] = iG2;
                    this.e += iG2;
                }
                return true;
            }
        }
        return false;
    }

    public final boolean c(d9e d9eVar, long j) {
        n7g.d(d9eVar.zzf() == d9eVar.zze());
        u4h u4hVar = this.g;
        u4hVar.i(4);
        while (true) {
            if ((j != -1 && d9eVar.zzf() + 4 >= j) || !g9e.c(d9eVar, u4hVar.n(), 0, 4, true)) {
                break;
            }
            u4hVar.l(0);
            if (u4hVar.O() == 1332176723) {
                d9eVar.zzj();
                return true;
            }
            d9eVar.f(1);
        }
        do {
            if (j != -1 && d9eVar.zzf() >= j) {
                break;
            }
        } while (d9eVar.a(1) != -1);
        return false;
    }
}
