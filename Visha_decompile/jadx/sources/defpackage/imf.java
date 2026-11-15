package defpackage;

public final class imf implements zsf {
    public final zlf a;
    public akh b;
    public ajh c;
    public d6g d;
    public ryf e;
    public w2h f;
    public qtf g;
    public b1h h;
    public prf i;
    public lbg j;

    public imf(zlf zlfVar, dnf dnfVar) {
        this.a = zlfVar;
    }

    @Override
    public final zsf c(prf prfVar) {
        this.i = prfVar;
        return this;
    }

    @Override
    public final zsf d(lbg lbgVar) {
        this.j = lbgVar;
        return this;
    }

    @Override
    public final zsf e(b1h b1hVar) {
        this.h = b1hVar;
        return this;
    }

    @Override
    public final zsf f(d6g d6gVar) {
        this.d = d6gVar;
        return this;
    }

    @Override
    public final nyf i(ajh ajhVar) {
        this.c = ajhVar;
        return this;
    }

    @Override
    public final zsf j(w2h w2hVar) {
        this.f = w2hVar;
        return this;
    }

    @Override
    public final zsf k(ryf ryfVar) {
        this.e = ryfVar;
        return this;
    }

    @Override
    public final nyf m(akh akhVar) {
        this.b = akhVar;
        return this;
    }

    @Override
    public final zsf p(qtf qtfVar) {
        this.g = qtfVar;
        return this;
    }

    @Override
    public final atf zzh() {
        pyi.c(this.d, d6g.class);
        pyi.c(this.e, ryf.class);
        pyi.c(this.f, w2h.class);
        pyi.c(this.g, qtf.class);
        if (this.h == null) {
            this.h = d1h.a();
        }
        pyi.c(this.i, prf.class);
        pyi.c(this.j, lbg.class);
        return new jmf(this.a, this.i, this.j, new ivf(), new koh(), new qxf(), new fng(), this.d, this.e, this.h, this.f, this.g, null, this.b, this.c);
    }
}
