package defpackage;

public class oqc extends j1 implements v0 {
    public p1 b;

    public oqc(h1 h1Var) {
        this.b = h1Var;
    }

    public static oqc m(Object obj) {
        if (obj == null || (obj instanceof oqc)) {
            return (oqc) obj;
        }
        if (obj instanceof p1) {
            return new oqc((p1) obj);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance()");
        }
        try {
            return new oqc(p1.t((byte[]) obj));
        } catch (Exception e) {
            throw new IllegalArgumentException("unable to parse encoded data: " + e.getMessage());
        }
    }

    @Override
    public p1 j() {
        return this.b;
    }

    public p1 n() {
        return this.b;
    }

    public boolean o() {
        return this.b instanceof h1;
    }

    public boolean p() {
        return this.b instanceof l1;
    }

    public oqc(l1 l1Var) {
        this.b = l1Var;
    }

    public oqc(p1 p1Var) {
        this.b = p1Var;
    }

    public oqc(qqc qqcVar) {
        this.b = null;
        this.b = qqcVar.j();
    }
}
