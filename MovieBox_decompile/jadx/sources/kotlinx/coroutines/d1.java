package kotlinx.coroutines;

final class d1 implements p1 {

    private final boolean f64735a;

    public d1(boolean z10) {
        this.f64735a = z10;
    }

    @Override
    public b2 b() {
        return null;
    }

    @Override
    public boolean isActive() {
        return this.f64735a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Empty{");
        sb2.append(isActive() ? "Active" : "New");
        sb2.append('}');
        return sb2.toString();
    }
}
