package zk;

public final class k {

    private final int f76822a;

    private final int f76823b;

    public k(int i10, int i11) {
        this.f76822a = i10;
        this.f76823b = i11;
    }

    public final int a() {
        return this.f76823b;
    }

    public final int b() {
        return this.f76822a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f76822a == kVar.f76822a && this.f76823b == kVar.f76823b;
    }

    public int hashCode() {
        return (this.f76822a * 31) + this.f76823b;
    }

    public String toString() {
        return "UGCFilterCoverSize(width=" + this.f76822a + ", height=" + this.f76823b + ")";
    }
}
