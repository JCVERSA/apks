package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

public final class b extends d {
    public static final a h;
    public static final b i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return b.i;
        }

        public a() {
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        h = new a(defaultConstructorMarker);
        i = new b(false, 1, defaultConstructorMarker);
    }

    public b(boolean z) {
        super(new LockBasedStorageManager("DefaultBuiltIns"));
        if (z) {
            f(false);
        }
    }

    public b(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z);
    }
}
