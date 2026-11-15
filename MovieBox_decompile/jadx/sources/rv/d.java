package rv;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class d {

    public static final d f71366a = new d();

    private static final Lazy f71367b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.g();
        }
    });

    private static final Lazy f71368c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.f();
        }
    });

    private static final Lazy f71369d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.e();
        }
    });

    private d() {
    }

    public static final b0 e() {
        return new b0();
    }

    public static final b0 f() {
        return new b0();
    }

    public static final b0 g() {
        return new b0();
    }

    public final b0 d() {
        return (b0) f71367b.getValue();
    }
}
