package td;

public class b {

    private final int f72696a;

    private final int f72697b;

    public b(int i10, int i11) {
        this.f72696a = i10;
        this.f72697b = i11;
    }

    public final int a() {
        return this.f72697b;
    }

    public final int b() {
        return this.f72696a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f72696a == bVar.f72696a && this.f72697b == bVar.f72697b;
    }

    public final int hashCode() {
        return this.f72696a ^ this.f72697b;
    }

    public final String toString() {
        return this.f72696a + "(" + this.f72697b + ')';
    }
}
