package f;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    public static final class C0728a {

        private final Object f59864a;

        public C0728a(Object obj) {
            this.f59864a = obj;
        }

        public final Object a() {
            return this.f59864a;
        }
    }

    public abstract Intent a(Context context, Object obj);

    public C0728a b(Context context, Object obj) {
        Intrinsics.h(context, "context");
        return null;
    }

    public abstract Object c(int i10, Intent intent);
}
