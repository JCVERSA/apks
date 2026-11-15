package defpackage;

import com.google.android.gms.internal.ads.zzaz;

public final class kee {
    public final int a;
    public int b;
    public int c;
    public long d;
    public final boolean e;
    public final u4h f;
    public final u4h g;
    public int h;
    public int i;

    public kee(u4h u4hVar, u4h u4hVar2, boolean z) throws zzaz {
        this.g = u4hVar;
        this.f = u4hVar2;
        this.e = z;
        u4hVar2.l(12);
        this.a = u4hVar2.J();
        u4hVar.l(12);
        this.i = u4hVar.J();
        g9e.b(u4hVar.A() == 1, "first_chunk must be 1");
        this.b = -1;
    }

    public final boolean a() {
        int i = this.b + 1;
        this.b = i;
        if (i == this.a) {
            return false;
        }
        this.d = this.e ? this.f.Q() : this.f.O();
        if (this.b == this.h) {
            u4h u4hVar = this.g;
            this.c = u4hVar.J();
            u4hVar.m(4);
            int i2 = this.i - 1;
            this.i = i2;
            this.h = i2 > 0 ? (-1) + u4hVar.J() : -1;
        }
        return true;
    }
}
