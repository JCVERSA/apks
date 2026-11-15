package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class l0 extends AbstractCoroutineContextElement implements m2 {

    public static final a f64927a = new a(null);

    public static final class a implements CoroutineContext.Key {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public abstract long p();
}
