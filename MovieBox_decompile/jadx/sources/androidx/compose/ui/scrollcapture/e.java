package androidx.compose.ui.scrollcapture;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

final class e implements androidx.compose.ui.j {

    public static final e f5594a = new e();

    private e() {
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
        return 0.0f;
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
