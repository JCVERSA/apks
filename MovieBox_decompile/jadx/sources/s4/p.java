package s4;

import java.util.Arrays;
import java.util.List;

abstract class p implements o {

    final List f71550a;

    p(List list) {
        this.f71550a = list;
    }

    @Override
    public List b() {
        return this.f71550a;
    }

    @Override
    public boolean c() {
        if (this.f71550a.isEmpty()) {
            return true;
        }
        return this.f71550a.size() == 1 && ((y4.a) this.f71550a.get(0)).i();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.f71550a.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.f71550a.toArray()));
        }
        return sb2.toString();
    }
}
