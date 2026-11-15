package kotlinx.coroutines;

import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class k1 extends i0 implements Closeable, AutoCloseable {

    public static final a f64925a = new a(null);

    public static final class a extends AbstractCoroutineContextKey {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final k1 d(CoroutineContext.Element element) {
            if (element instanceof k1) {
                return (k1) element;
            }
            return null;
        }

        private a() {
            super(i0.Key, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return k1.a.d((CoroutineContext.Element) obj);
                }
            });
        }
    }

    public abstract Executor p();
}
