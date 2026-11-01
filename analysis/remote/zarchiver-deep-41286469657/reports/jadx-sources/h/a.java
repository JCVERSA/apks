package h;

public final class a<T> implements b<T> {

    public final Class<? extends T> f1083a;

    public a(Class<? extends T> cls) {
        this.f1083a = cls;
    }

    @Override
    public final T a() {
        return this.f1083a.newInstance();
    }
}
