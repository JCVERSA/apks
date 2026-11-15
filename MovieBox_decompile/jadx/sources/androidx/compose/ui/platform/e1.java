package androidx.compose.ui.platform;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

final class e1 implements androidx.compose.ui.j {

    private final androidx.compose.runtime.c1 f5469a = androidx.compose.runtime.p1.a(1.0f);

    public void a(float f10) {
        this.f5469a.setFloatValue(f10);
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return androidx.compose.ui.j.a.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return androidx.compose.ui.j.a.b(this, key);
    }

    @Override
    public CoroutineContext.Key getKey() {
        return androidx.compose.ui.i.a(this);
    }

    @Override
    public float h() {
        return this.f5469a.getFloatValue();
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return androidx.compose.ui.j.a.c(this, key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return androidx.compose.ui.j.a.d(this, coroutineContext);
    }
}
