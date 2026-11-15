package q1;

import kotlin.NotImplementedError;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.y0;

public abstract class b {
    public static final a a() {
        CoroutineContext coroutineContextP;
        try {
            coroutineContextP = y0.c().p();
        } catch (IllegalStateException unused) {
            coroutineContextP = EmptyCoroutineContext.INSTANCE;
        } catch (NotImplementedError unused2) {
            coroutineContextP = EmptyCoroutineContext.INSTANCE;
        }
        return new a(coroutineContextP.plus(l2.b(null, 1, null)));
    }
}
