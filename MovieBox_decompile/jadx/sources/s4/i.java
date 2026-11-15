package s4;

import java.util.List;

public class i implements o {

    private final b f71527a;

    private final b f71528b;

    public i(b bVar, b bVar2) {
        this.f71527a = bVar;
        this.f71528b = bVar2;
    }

    @Override
    public p4.a a() {
        return new p4.n(this.f71527a.a(), this.f71528b.a());
    }

    @Override
    public List b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override
    public boolean c() {
        return this.f71527a.c() && this.f71528b.c();
    }
}
