package defpackage;

public final class pd extends ibb {
    public final md a;

    public pd(md mdVar) {
        y45.j(mdVar, "annotations");
        this.a = mdVar;
    }

    @Override
    public de5 b() {
        return xq8.b(pd.class);
    }

    @Override
    public pd a(pd pdVar) {
        return pdVar == null ? this : new pd(od.a(this.a, pdVar.a));
    }

    public final md e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof pd) {
            return y45.e(((pd) obj).a, this.a);
        }
        return false;
    }

    @Override
    public pd c(pd pdVar) {
        if (y45.e(pdVar, this)) {
            return this;
        }
        return null;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
