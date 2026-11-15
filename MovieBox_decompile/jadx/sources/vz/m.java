package vz;

import com.alibaba.sdk.android.oss.common.RequestParameters;

final class m extends l {

    private final x f73941c;

    private final int f73942d;

    private final int f73943e;

    private final int f73944f;

    private int f73945g;

    private int f73946h;

    private b f73947i;

    private b f73948j;

    private b f73949k;

    private b f73950l;

    private c f73951m;

    m(x xVar, int i10, String str, String str2, String str3, Object obj) {
        super(458752);
        this.f73941c = xVar;
        this.f73942d = i10;
        this.f73943e = xVar.D(str);
        this.f73944f = xVar.D(str2);
        if (str3 != null) {
            this.f73945g = xVar.D(str3);
        }
        if (obj != null) {
            this.f73946h = xVar.d(obj).f74041a;
        }
    }

    @Override
    public a a(String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f73941c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73941c, dVar, this.f73947i);
            this.f73947i = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73941c, dVar, this.f73948j);
        this.f73948j = bVar2;
        return bVar2;
    }

    @Override
    public void b(c cVar) {
        cVar.f73875c = this.f73951m;
        this.f73951m = cVar;
    }

    @Override
    public a d(int i10, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i10, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f73941c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73941c, dVar, this.f73949k);
            this.f73949k = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73941c, dVar, this.f73950l);
        this.f73950l = bVar2;
        return bVar2;
    }

    final void e(c.a aVar) {
        aVar.b(this.f73951m);
    }

    int f() {
        int iF;
        if (this.f73946h != 0) {
            this.f73941c.D("ConstantValue");
            iF = 16;
        } else {
            iF = 8;
        }
        if ((this.f73942d & 4096) != 0 && this.f73941c.R() < 49) {
            this.f73941c.D("Synthetic");
            iF += 6;
        }
        if (this.f73945g != 0) {
            this.f73941c.D(RequestParameters.SIGNATURE);
            iF += 8;
        }
        if ((this.f73942d & 131072) != 0) {
            this.f73941c.D("Deprecated");
            iF += 6;
        }
        b bVar = this.f73947i;
        if (bVar != null) {
            iF += bVar.f("RuntimeVisibleAnnotations");
        }
        b bVar2 = this.f73948j;
        if (bVar2 != null) {
            iF += bVar2.f("RuntimeInvisibleAnnotations");
        }
        b bVar3 = this.f73949k;
        if (bVar3 != null) {
            iF += bVar3.f("RuntimeVisibleTypeAnnotations");
        }
        b bVar4 = this.f73950l;
        if (bVar4 != null) {
            iF += bVar4.f("RuntimeInvisibleTypeAnnotations");
        }
        c cVar = this.f73951m;
        return cVar != null ? iF + cVar.a(this.f73941c) : iF;
    }

    void g(d dVar) {
        boolean z10 = this.f73941c.R() < 49;
        dVar.k((~(z10 ? 4096 : 0)) & this.f73942d).k(this.f73943e).k(this.f73944f);
        int iC = this.f73946h == 0 ? 0 : 1;
        int i10 = this.f73942d;
        if ((i10 & 4096) != 0 && z10) {
            iC++;
        }
        if (this.f73945g != 0) {
            iC++;
        }
        if ((i10 & 131072) != 0) {
            iC++;
        }
        if (this.f73947i != null) {
            iC++;
        }
        if (this.f73948j != null) {
            iC++;
        }
        if (this.f73949k != null) {
            iC++;
        }
        if (this.f73950l != null) {
            iC++;
        }
        c cVar = this.f73951m;
        if (cVar != null) {
            iC += cVar.c();
        }
        dVar.k(iC);
        if (this.f73946h != 0) {
            dVar.k(this.f73941c.D("ConstantValue")).i(2).k(this.f73946h);
        }
        if ((4096 & this.f73942d) != 0 && z10) {
            dVar.k(this.f73941c.D("Synthetic")).i(0);
        }
        if (this.f73945g != 0) {
            dVar.k(this.f73941c.D(RequestParameters.SIGNATURE)).i(2).k(this.f73945g);
        }
        if ((this.f73942d & 131072) != 0) {
            dVar.k(this.f73941c.D("Deprecated")).i(0);
        }
        b bVar = this.f73947i;
        if (bVar != null) {
            bVar.h(this.f73941c.D("RuntimeVisibleAnnotations"), dVar);
        }
        b bVar2 = this.f73948j;
        if (bVar2 != null) {
            bVar2.h(this.f73941c.D("RuntimeInvisibleAnnotations"), dVar);
        }
        b bVar3 = this.f73949k;
        if (bVar3 != null) {
            bVar3.h(this.f73941c.D("RuntimeVisibleTypeAnnotations"), dVar);
        }
        b bVar4 = this.f73950l;
        if (bVar4 != null) {
            bVar4.h(this.f73941c.D("RuntimeInvisibleTypeAnnotations"), dVar);
        }
        c cVar2 = this.f73951m;
        if (cVar2 != null) {
            cVar2.e(this.f73941c, dVar);
        }
    }

    @Override
    public void c() {
    }
}
