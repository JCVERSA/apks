package androidx.compose.foundation.layout;

public final class r {

    private final int f2567a;

    private final int f2568b;

    private final int f2569c;

    private final int f2570d;

    public r(int i10, int i11, int i12, int i13) {
        this.f2567a = i10;
        this.f2568b = i11;
        this.f2569c = i12;
        this.f2570d = i13;
    }

    public final int a() {
        return this.f2570d;
    }

    public final int b() {
        return this.f2567a;
    }

    public final int c() {
        return this.f2569c;
    }

    public final int d() {
        return this.f2568b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f2567a == rVar.f2567a && this.f2568b == rVar.f2568b && this.f2569c == rVar.f2569c && this.f2570d == rVar.f2570d;
    }

    public int hashCode() {
        return (((((this.f2567a * 31) + this.f2568b) * 31) + this.f2569c) * 31) + this.f2570d;
    }

    public String toString() {
        return "InsetsValues(left=" + this.f2567a + ", top=" + this.f2568b + ", right=" + this.f2569c + ", bottom=" + this.f2570d + ')';
    }
}
