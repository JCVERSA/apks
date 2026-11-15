package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.v18;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

public final class b extends d {
    public static final a h = new a(null);
    public static final d i = new b();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return b.i;
        }

        public a() {
        }
    }

    public b() {
        super(new LockBasedStorageManager("FallbackBuiltIns"));
        f(true);
    }

    @Override
    public v18.a M() {
        return v18.a.a;
    }
}
