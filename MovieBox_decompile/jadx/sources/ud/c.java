package ud;

import java.util.ArrayList;
import java.util.List;

final class c {

    private final List f73045a;

    private final int f73046b;

    c(List list, int i10) {
        this.f73045a = new ArrayList(list);
        this.f73046b = i10;
    }

    List a() {
        return this.f73045a;
    }

    int b() {
        return this.f73046b;
    }

    boolean c(List list) {
        return this.f73045a.equals(list);
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f73045a.equals(((c) obj).f73045a);
        }
        return false;
    }

    public int hashCode() {
        return this.f73045a.hashCode();
    }

    public String toString() {
        return "{ " + this.f73045a + " }";
    }
}
