package zs;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public interface b {

    public static final a f76879a = a.f76880a;

    public static final class a {

        static final a f76880a = new a();

        private static final Lazy f76881b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.a.c();
            }
        });

        private a() {
        }

        public static final d c() {
            return new d();
        }

        public final b b() {
            return (b) f76881b.getValue();
        }
    }

    void init();
}
