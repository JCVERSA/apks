package defpackage;

public final class ioj {
    public final int a;
    public final boolean b;

    public ioj(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ioj.class == obj.getClass()) {
            ioj iojVar = (ioj) obj;
            if (this.a == iojVar.a && this.b == iojVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.a * 31) + (this.b ? 1 : 0);
    }
}
