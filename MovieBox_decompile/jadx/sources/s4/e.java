package s4;

import java.util.List;

public class e implements o {

    private final List f71526a;

    public e(List list) {
        this.f71526a = list;
    }

    @Override
    public p4.a a() {
        return ((y4.a) this.f71526a.get(0)).i() ? new p4.k(this.f71526a) : new p4.j(this.f71526a);
    }

    @Override
    public List b() {
        return this.f71526a;
    }

    @Override
    public boolean c() {
        return this.f71526a.size() == 1 && ((y4.a) this.f71526a.get(0)).i();
    }
}
