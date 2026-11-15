package androidx.room.coroutines;

import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

final class i implements y3.b, kotlinx.coroutines.sync.a {

    private final y3.b f14317a;

    private final kotlinx.coroutines.sync.a f14318b;

    private CoroutineContext f14319c;

    private Throwable f14320d;

    public i(y3.b delegate, kotlinx.coroutines.sync.a lock) {
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(lock, "lock");
        this.f14317a = delegate;
        this.f14318b = lock;
    }

    @Override
    public y3.e F0(String sql) {
        Intrinsics.h(sql, "sql");
        return this.f14317a.F0(sql);
    }

    @Override
    public boolean b(Object obj) {
        return this.f14318b.b(obj);
    }

    @Override
    public void close() {
        this.f14317a.close();
    }

    @Override
    public boolean d() {
        return this.f14318b.d();
    }

    @Override
    public Object f(Object obj, Continuation continuation) {
        return this.f14318b.f(obj, continuation);
    }

    public final void h(StringBuilder builder) {
        Intrinsics.h(builder, "builder");
        if (this.f14319c == null && this.f14320d == null) {
            builder.append("\t\tStatus: Free connection");
            builder.append('\n');
            return;
        }
        builder.append("\t\tStatus: Acquired connection");
        builder.append('\n');
        CoroutineContext coroutineContext = this.f14319c;
        if (coroutineContext != null) {
            builder.append("\t\tCoroutine: " + coroutineContext);
            builder.append('\n');
        }
        Throwable th2 = this.f14320d;
        if (th2 != null) {
            builder.append("\t\tAcquired:");
            builder.append('\n');
            Iterator it = CollectionsKt.d0(StringsKt.y0(ExceptionsKt.b(th2)), 1).iterator();
            while (it.hasNext()) {
                builder.append("\t\t" + ((String) it.next()));
                builder.append('\n');
            }
        }
    }

    public final i j(CoroutineContext context) {
        Intrinsics.h(context, "context");
        this.f14319c = context;
        this.f14320d = new Throwable();
        return this;
    }

    public final i k() {
        this.f14319c = null;
        this.f14320d = null;
        return this;
    }

    public String toString() {
        return this.f14317a.toString();
    }

    @Override
    public void unlock(Object obj) {
        this.f14318b.unlock(obj);
    }

    public i(y3.b bVar, kotlinx.coroutines.sync.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, (i10 & 2) != 0 ? kotlinx.coroutines.sync.g.b(false, 1, null) : aVar);
    }
}
