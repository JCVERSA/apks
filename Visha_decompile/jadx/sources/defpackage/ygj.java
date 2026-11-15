package defpackage;

public final class ygj {
    public static final ygj d = new ugj().d();
    public final boolean a;
    public final boolean b;
    public final boolean c;

    public ygj(ugj ugjVar, wgj wgjVar) {
        this.a = ugjVar.a;
        this.b = ugjVar.b;
        this.c = ugjVar.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ygj.class == obj.getClass()) {
            ygj ygjVar = (ygj) obj;
            if (this.a == ygjVar.a && this.b == ygjVar.b && this.c == ygjVar.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        boolean z = this.a;
        boolean z2 = this.b;
        return ((z ? 1 : 0) << 2) + (z2 ? 1 : 0) + (z2 ? 1 : 0) + (this.c ? 1 : 0);
    }
}
