package androidx.room.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class c implements CoroutineContext.Element {

    public static final a f14307b = new a(null);

    private final PooledConnectionImpl f14308a;

    public static final class a implements CoroutineContext.Key {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(PooledConnectionImpl connectionWrapper) {
        Intrinsics.h(connectionWrapper, "connectionWrapper");
        this.f14308a = connectionWrapper;
    }

    public final PooledConnectionImpl a() {
        return this.f14308a;
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override
    public CoroutineContext.Key getKey() {
        return f14307b;
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(this, coroutineContext);
    }
}
