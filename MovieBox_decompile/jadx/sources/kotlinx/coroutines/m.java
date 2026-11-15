package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

public interface m extends e2 {

    public static final class a implements m {

        private final Function1 f64929a;

        public a(Function1 function1) {
            this.f64929a = function1;
        }

        @Override
        public void a(Throwable th2) {
            this.f64929a.invoke(th2);
        }

        public String toString() {
            return "CancelHandler.UserSupplied[" + p0.a(this.f64929a) + '@' + p0.b(this) + ']';
        }
    }

    void a(Throwable th2);
}
