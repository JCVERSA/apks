package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function1;

public abstract class j {

    public interface a {
        Function1 getKey();

        Function1 getType();
    }

    public final Object b(int i10) {
        b.a aVar = c().get(i10);
        return ((a) aVar.c()).getType().invoke(Integer.valueOf(i10 - aVar.b()));
    }

    public abstract b c();

    public final int d() {
        return c().getSize();
    }

    public final Object e(int i10) {
        Object objInvoke;
        b.a aVar = c().get(i10);
        int iB = i10 - aVar.b();
        Function1 key = ((a) aVar.c()).getKey();
        return (key == null || (objInvoke = key.invoke(Integer.valueOf(iB))) == null) ? b0.a(i10) : objInvoke;
    }
}
