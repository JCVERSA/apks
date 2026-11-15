package androidx.datastore.core;

public final class e extends v {

    private final Object f8303b;

    private final int f8304c;

    public e(Object obj, int i10, int i11) {
        super(i11, null);
        this.f8303b = obj;
        this.f8304c = i10;
    }

    public final void b() {
        Object obj = this.f8303b;
        if ((obj != null ? obj.hashCode() : 0) != this.f8304c) {
            throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
        }
    }

    public final Object c() {
        return this.f8303b;
    }
}
