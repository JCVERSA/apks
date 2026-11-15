package defpackage;

public final class g1j {
    public final String a;
    public final erj b;
    public final erj c;
    public final int d;
    public final int e;

    public g1j(String str, erj erjVar, erj erjVar2, int i, int i2) {
        boolean z = true;
        if (i != 0) {
            if (i2 == 0) {
                i2 = 0;
            } else {
                z = false;
            }
        }
        n7g.d(z);
        n7g.c(str);
        this.a = str;
        this.b = erjVar;
        erjVar2.getClass();
        this.c = erjVar2;
        this.d = i;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && g1j.class == obj.getClass()) {
            g1j g1jVar = (g1j) obj;
            if (this.d == g1jVar.d && this.e == g1jVar.e && this.a.equals(g1jVar.a) && this.b.equals(g1jVar.b) && this.c.equals(g1jVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.d + 527) * 31) + this.e) * 31) + this.a.hashCode()) * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }
}
