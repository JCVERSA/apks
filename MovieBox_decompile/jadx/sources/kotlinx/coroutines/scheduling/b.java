package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.i0;

public final class b extends e {

    public static final b f64964g = new b();

    private b() {
        super(g.f64973c, g.f64974d, g.f64975e, g.f64971a);
    }

    @Override
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override
    public i0 limitedParallelism(int i10, String str) {
        kotlinx.coroutines.internal.i.a(i10);
        return i10 >= g.f64973c ? kotlinx.coroutines.internal.i.b(this, str) : super.limitedParallelism(i10, str);
    }

    @Override
    public String toString() {
        return "Dispatchers.Default";
    }
}
