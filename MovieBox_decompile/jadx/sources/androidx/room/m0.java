package androidx.room;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class m0 implements CoroutineContext.Element {

    public static final a f14379c = new a(null);

    private final ContinuationInterceptor f14380a;

    private final AtomicInteger f14381b;

    public static final class a implements CoroutineContext.Key {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public m0(ContinuationInterceptor transactionDispatcher) {
        Intrinsics.h(transactionDispatcher, "transactionDispatcher");
        this.f14380a = transactionDispatcher;
        this.f14381b = new AtomicInteger(0);
    }

    public final void a() {
        this.f14381b.incrementAndGet();
    }

    public final ContinuationInterceptor c() {
        return this.f14380a;
    }

    public final void e() {
        if (this.f14381b.decrementAndGet() < 0) {
            throw new IllegalStateException("Transaction was never started or was already released.");
        }
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
        return f14379c;
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
