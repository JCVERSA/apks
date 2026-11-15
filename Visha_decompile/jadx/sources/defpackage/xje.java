package defpackage;

import androidx.media3.common.C;

public final class xje implements lje {
    public final u4h a;
    public final u9e b;
    public final String c;
    public final int d;
    public final String e;
    public rae f;
    public String g;
    public int h = 0;
    public int i;
    public boolean j;
    public boolean k;
    public long l;
    public int m;
    public long n;

    public xje(String str, int i, String str2) {
        u4h u4hVar = new u4h(4);
        this.a = u4hVar;
        u4hVar.n()[0] = -1;
        this.b = new u9e();
        this.n = C.TIME_UNSET;
        this.c = str;
        this.d = i;
        this.e = str2;
    }

    @Override
    public final void a(u4h u4hVar) {
        n7g.b(this.f);
        while (u4hVar.u() > 0) {
            int i = this.h;
            if (i == 0) {
                byte[] bArrN = u4hVar.n();
                int iW = u4hVar.w();
                int iX = u4hVar.x();
                while (true) {
                    if (iW >= iX) {
                        u4hVar.l(iX);
                        break;
                    }
                    int i2 = iW + 1;
                    byte b = bArrN[iW];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.k && (b & 224) == 224;
                    this.k = z;
                    if (z2) {
                        u4hVar.l(i2);
                        this.k = false;
                        this.a.n()[1] = bArrN[iW];
                        this.i = 2;
                        this.h = 1;
                        break;
                    }
                    iW = i2;
                }
            } else if (i != 1) {
                int iMin = Math.min(u4hVar.u(), this.m - this.i);
                this.f.d(u4hVar, iMin);
                int i3 = this.i + iMin;
                this.i = i3;
                if (i3 >= this.m) {
                    n7g.f(this.n != C.TIME_UNSET);
                    this.f.g(this.n, 1, this.m, 0, null);
                    this.n += this.l;
                    this.i = 0;
                    this.h = 0;
                }
            } else {
                int iMin2 = Math.min(u4hVar.u(), 4 - this.i);
                u4h u4hVar2 = this.a;
                u4hVar.h(u4hVar2.n(), this.i, iMin2);
                int i4 = this.i + iMin2;
                this.i = i4;
                if (i4 >= 4) {
                    u4hVar2.l(0);
                    u9e u9eVar = this.b;
                    if (u9eVar.a(u4hVar2.A())) {
                        this.m = u9eVar.c;
                        if (!this.j) {
                            this.l = (((long) u9eVar.g) * 1000000) / ((long) u9eVar.d);
                            gpj gpjVar = new gpj();
                            gpjVar.o(this.g);
                            gpjVar.e(this.e);
                            gpjVar.E(u9eVar.b);
                            gpjVar.t(4096);
                            gpjVar.b(u9eVar.e);
                            gpjVar.F(u9eVar.d);
                            gpjVar.s(this.c);
                            gpjVar.C(this.d);
                            this.f.f(gpjVar.K());
                            this.j = true;
                        }
                        u4hVar2.l(0);
                        this.f.d(u4hVar2, 4);
                        this.h = 2;
                    } else {
                        this.i = 0;
                        this.h = 1;
                    }
                }
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        this.n = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.g = cleVar.b();
        this.f = f9eVar.j(cleVar.a(), 1);
    }

    @Override
    public final void zzc(boolean z) {
    }

    @Override
    public final void zze() {
        this.h = 0;
        this.i = 0;
        this.k = false;
        this.n = C.TIME_UNSET;
    }
}
