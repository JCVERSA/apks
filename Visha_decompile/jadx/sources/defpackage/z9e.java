package defpackage;

public final class z9e {
    public final lae a;
    public final lae b;

    public z9e(lae laeVar, lae laeVar2) {
        this.a = laeVar;
        this.b = laeVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && z9e.class == obj.getClass()) {
            z9e z9eVar = (z9e) obj;
            if (this.a.equals(z9eVar.a) && this.b.equals(z9eVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public final String toString() {
        lae laeVar = this.a;
        lae laeVar2 = this.b;
        return "[" + laeVar.toString() + (laeVar.equals(laeVar2) ? "" : ", ".concat(laeVar2.toString())) + "]";
    }
}
