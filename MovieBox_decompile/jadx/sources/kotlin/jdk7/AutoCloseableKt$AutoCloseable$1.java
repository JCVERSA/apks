package kotlin.jdk7;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class AutoCloseableKt$AutoCloseable$1 implements AutoCloseable {

    final Function0 f64301a;

    @Override
    public final void close() {
        this.f64301a.invoke();
    }
}
