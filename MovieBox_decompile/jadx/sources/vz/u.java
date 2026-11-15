package vz;

final class u extends t {

    private final x f74017c;

    private final int f74018d;

    private final int f74019e;

    private final int f74020f;

    private int f74021g;

    private final d f74022h;

    private int f74023i;

    private final d f74024j;

    private int f74025k;

    private final d f74026l;

    private int f74027m;

    private final d f74028n;

    private int f74029o;

    private final d f74030p;

    private int f74031q;

    private final d f74032r;

    private int f74033s;

    u(x xVar, int i10, int i11, int i12) {
        super(458752);
        this.f74017c = xVar;
        this.f74018d = i10;
        this.f74019e = i11;
        this.f74020f = i12;
        this.f74022h = new d();
        this.f74024j = new d();
        this.f74026l = new d();
        this.f74028n = new d();
        this.f74030p = new d();
        this.f74032r = new d();
    }

    @Override
    public void b(String str, int i10, String... strArr) {
        this.f74024j.k(this.f74017c.B(str).f74041a).k(i10);
        if (strArr == null) {
            this.f74024j.k(0);
        } else {
            this.f74024j.k(strArr.length);
            for (String str2 : strArr) {
                this.f74024j.k(this.f74017c.y(str2).f74041a);
            }
        }
        this.f74023i++;
    }

    @Override
    public void c(String str) {
        this.f74033s = this.f74017c.e(str).f74041a;
    }

    @Override
    public void d(String str, int i10, String... strArr) {
        this.f74026l.k(this.f74017c.B(str).f74041a).k(i10);
        if (strArr == null) {
            this.f74026l.k(0);
        } else {
            this.f74026l.k(strArr.length);
            for (String str2 : strArr) {
                this.f74026l.k(this.f74017c.y(str2).f74041a);
            }
        }
        this.f74025k++;
    }

    @Override
    public void e(String str) {
        this.f74032r.k(this.f74017c.B(str).f74041a);
        this.f74031q++;
    }

    @Override
    public void f(String str, String... strArr) {
        this.f74030p.k(this.f74017c.e(str).f74041a);
        this.f74030p.k(strArr.length);
        for (String str2 : strArr) {
            this.f74030p.k(this.f74017c.e(str2).f74041a);
        }
        this.f74029o++;
    }

    @Override
    public void g(String str, int i10, String str2) {
        this.f74022h.k(this.f74017c.y(str).f74041a).k(i10).k(str2 == null ? 0 : this.f74017c.D(str2));
        this.f74021g++;
    }

    @Override
    public void h(String str) {
        this.f74028n.k(this.f74017c.e(str).f74041a);
        this.f74027m++;
    }

    int i() {
        this.f74017c.D("Module");
        int i10 = this.f74022h.f73879b + 22 + this.f74024j.f73879b + this.f74026l.f73879b + this.f74028n.f73879b + this.f74030p.f73879b;
        if (this.f74031q > 0) {
            this.f74017c.D("ModulePackages");
            i10 += this.f74032r.f73879b + 8;
        }
        if (this.f74033s <= 0) {
            return i10;
        }
        this.f74017c.D("ModuleMainClass");
        return i10 + 8;
    }

    int j() {
        return (this.f74031q > 0 ? 1 : 0) + 1 + (this.f74033s > 0 ? 1 : 0);
    }

    void k(d dVar) {
        d dVarK = dVar.k(this.f74017c.D("Module")).i(this.f74022h.f73879b + 16 + this.f74024j.f73879b + this.f74026l.f73879b + this.f74028n.f73879b + this.f74030p.f73879b).k(this.f74018d).k(this.f74019e).k(this.f74020f).k(this.f74021g);
        d dVar2 = this.f74022h;
        d dVarK2 = dVarK.h(dVar2.f73878a, 0, dVar2.f73879b).k(this.f74023i);
        d dVar3 = this.f74024j;
        d dVarK3 = dVarK2.h(dVar3.f73878a, 0, dVar3.f73879b).k(this.f74025k);
        d dVar4 = this.f74026l;
        d dVarK4 = dVarK3.h(dVar4.f73878a, 0, dVar4.f73879b).k(this.f74027m);
        d dVar5 = this.f74028n;
        d dVarK5 = dVarK4.h(dVar5.f73878a, 0, dVar5.f73879b).k(this.f74029o);
        d dVar6 = this.f74030p;
        dVarK5.h(dVar6.f73878a, 0, dVar6.f73879b);
        if (this.f74031q > 0) {
            d dVarK6 = dVar.k(this.f74017c.D("ModulePackages")).i(this.f74032r.f73879b + 2).k(this.f74031q);
            d dVar7 = this.f74032r;
            dVarK6.h(dVar7.f73878a, 0, dVar7.f73879b);
        }
        if (this.f74033s > 0) {
            dVar.k(this.f74017c.D("ModuleMainClass")).i(2).k(this.f74033s);
        }
    }

    @Override
    public void a() {
    }
}
