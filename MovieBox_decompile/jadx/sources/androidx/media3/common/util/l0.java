package androidx.media3.common.util;

public final class l0 {

    public static final l0 f10095c = new l0(-1, -1);

    public static final l0 f10096d = new l0(0, 0);

    private final int f10097a;

    private final int f10098b;

    public l0(int i10, int i11) {
        a.a((i10 == -1 || i10 >= 0) && (i11 == -1 || i11 >= 0));
        this.f10097a = i10;
        this.f10098b = i11;
    }

    public int a() {
        return this.f10098b;
    }

    public int b() {
        return this.f10097a;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return this.f10097a == l0Var.f10097a && this.f10098b == l0Var.f10098b;
    }

    public int hashCode() {
        int i10 = this.f10098b;
        int i11 = this.f10097a;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        return this.f10097a + "x" + this.f10098b;
    }
}
