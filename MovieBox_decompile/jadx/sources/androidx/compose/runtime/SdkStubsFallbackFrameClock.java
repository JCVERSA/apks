package androidx.compose.runtime;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

final class SdkStubsFallbackFrameClock implements u0 {

    public static final SdkStubsFallbackFrameClock f3354a = new SdkStubsFallbackFrameClock();

    private SdkStubsFallbackFrameClock() {
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return u0.a.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return u0.a.b(this, key);
    }

    @Override
    public CoroutineContext.Key getKey() {
        return t0.a(this);
    }

    @Override
    public Object j(Function1 function1, Continuation continuation) {
        return kotlinx.coroutines.i.g(kotlinx.coroutines.y0.c(), new SdkStubsFallbackFrameClock$withFrameNanos$2(function1, null), continuation);
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return u0.a.c(this, key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return u0.a.d(this, coroutineContext);
    }
}
