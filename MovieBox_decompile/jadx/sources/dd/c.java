package dd;

import java.util.Set;

final class c extends e {

    private final Set f59023a;

    c(Set set) {
        if (set == null) {
            throw new NullPointerException("Null rolloutAssignments");
        }
        this.f59023a = set;
    }

    @Override
    public Set b() {
        return this.f59023a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            return this.f59023a.equals(((e) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f59023a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f59023a + "}";
    }
}
