package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

public final class g extends a {

    private final Object f3408c;

    public g(Object obj, int i10) {
        super(i10, 1);
        this.f3408c = obj;
    }

    @Override
    public Object next() {
        a();
        h(e() + 1);
        return this.f3408c;
    }

    @Override
    public Object previous() {
        c();
        h(e() - 1);
        return this.f3408c;
    }
}
