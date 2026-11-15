package kotlinx.coroutines;

import defpackage.e74;
import java.io.Closeable;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.h;

public abstract class h extends c implements Closeable, AutoCloseable {
    public static final a b = new a(null);

    public static final class a extends kotlin.coroutines.b {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final h d(kotlin.coroutines.d.b bVar) {
            if (bVar instanceof h) {
                return (h) bVar;
            }
            return null;
        }

        public a() {
            super(c.Key, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return h.a.d((d.b) obj);
                }
            });
        }
    }
}
