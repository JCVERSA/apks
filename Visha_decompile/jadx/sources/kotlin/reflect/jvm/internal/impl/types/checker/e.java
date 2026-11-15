package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;

public interface e extends b {
    public static final a b = a.a;

    public static final class a {
        public static final a a = new a();
        public static final f b = new f(c.a.a, null, 2, 0 == true ? 1 : 0);

        public final f a() {
            return b;
        }
    }

    OverridingUtil a();

    c d();
}
