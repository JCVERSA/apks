package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class wx0 {
    public static final a a = new a(null);
    public static long b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - wx0.b < 500) {
                return true;
            }
            wx0.b = jCurrentTimeMillis;
            return false;
        }

        public a() {
        }
    }
}
