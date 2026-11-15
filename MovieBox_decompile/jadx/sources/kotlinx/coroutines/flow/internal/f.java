package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

public final class f implements CoroutineContext {

    private final CoroutineContext f64839a;

    public final Throwable f64840b;

    public f(Throwable th2, CoroutineContext coroutineContext) {
        this.f64839a = coroutineContext;
        this.f64840b = th2;
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return this.f64839a.fold(obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return this.f64839a.get(key);
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return this.f64839a.minusKey(key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return this.f64839a.plus(coroutineContext);
    }
}
