package androidx.room;

import java.lang.ref.WeakReference;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public final class u0 extends InvalidationTracker.b {

    private final InvalidationTracker f14452b;

    private final WeakReference f14453c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(InvalidationTracker tracker, InvalidationTracker.b delegate) {
        super(delegate.a());
        Intrinsics.h(tracker, "tracker");
        Intrinsics.h(delegate, "delegate");
        this.f14452b = tracker;
        this.f14453c = new WeakReference(delegate);
    }

    @Override
    public void c(Set tables) {
        Intrinsics.h(tables, "tables");
        InvalidationTracker.b bVar = (InvalidationTracker.b) this.f14453c.get();
        if (bVar == null) {
            this.f14452b.y(this);
        } else {
            bVar.c(tables);
        }
    }
}
