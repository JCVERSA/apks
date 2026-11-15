package u;

import java.util.Map;

public final class y extends u {

    private final i f72930d;

    public y(i iVar) {
        this.f72930d = iVar;
    }

    @Override
    public Map.Entry next() {
        w.a.a(h());
        o(f() + 2);
        return new c(this.f72930d, e()[f() - 2], e()[f() - 1]);
    }
}
