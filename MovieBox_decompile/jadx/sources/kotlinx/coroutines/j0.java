package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

public interface j0 extends CoroutineContext.Element {

    public static final a f64923l1 = a.f64924a;

    public static final class a implements CoroutineContext.Key {

        static final a f64924a = new a();

        private a() {
        }
    }

    void m(CoroutineContext coroutineContext, Throwable th2);
}
