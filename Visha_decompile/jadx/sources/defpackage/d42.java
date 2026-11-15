package defpackage;

import kotlinx.coroutines.c;
import kotlinx.coroutines.scheduling.a;

public final class d42 extends h29 {
    public static final d42 h = new d42();

    public d42() {
        super(a.c, a.d, a.e, a.a);
    }

    @Override
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override
    public c limitedParallelism(int i, String str) {
        bl5.a(i);
        return i >= a.c ? bl5.b(this, str) : super.limitedParallelism(i, str);
    }

    @Override
    public String toString() {
        return "Dispatchers.Default";
    }
}
