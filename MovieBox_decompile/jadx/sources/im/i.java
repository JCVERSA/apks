package im;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class i {

    public static final i f62186a = new i();

    private static final Lazy f62187b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return i.c();
        }
    });

    private i() {
    }

    public static final b0 c() {
        return new b0();
    }

    public final b0 b() {
        return (b0) f62187b.getValue();
    }
}
