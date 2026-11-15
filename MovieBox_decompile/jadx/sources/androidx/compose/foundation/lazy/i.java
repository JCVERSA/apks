package androidx.compose.foundation.lazy;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

public final class i implements androidx.compose.foundation.lazy.layout.j.a {

    private final Function1 f2642a;

    private final Function1 f2643b;

    private final Function4 f2644c;

    public i(Function1 function1, Function1 function2, Function4 function4) {
        this.f2642a = function1;
        this.f2643b = function2;
        this.f2644c = function4;
    }

    public final Function4 a() {
        return this.f2644c;
    }

    @Override
    public Function1 getKey() {
        return this.f2642a;
    }

    @Override
    public Function1 getType() {
        return this.f2643b;
    }
}
