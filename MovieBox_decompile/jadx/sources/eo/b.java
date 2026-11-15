package eo;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class b {

    public static final b f59776a = new b();

    private static final Lazy f59777b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(b.c());
        }
    });

    private b() {
    }

    public static final boolean c() {
        return false;
    }

    public final boolean b() {
        return ((Boolean) f59777b.getValue()).booleanValue();
    }
}
