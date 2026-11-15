package ad;

import java.util.Set;

final class a extends b {

    private final Set f279a;

    a(Set set) {
        if (set == null) {
            throw new NullPointerException("Null updatedKeys");
        }
        this.f279a = set;
    }

    @Override
    public Set b() {
        return this.f279a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return this.f279a.equals(((b) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f279a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ConfigUpdate{updatedKeys=" + this.f279a + "}";
    }
}
