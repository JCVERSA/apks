package androidx.room;

import java.util.concurrent.Callable;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

public final class t extends RoomTrackingLiveData {

    private final Callable f14450t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(RoomDatabase database, k container, boolean z10, String[] tableNames, Callable callableFunction) {
        super(database, container, z10, tableNames, null);
        Intrinsics.h(database, "database");
        Intrinsics.h(container, "container");
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(callableFunction, "callableFunction");
        this.f14450t = callableFunction;
    }

    @Override
    public Object t(Continuation continuation) {
        return this.f14450t.call();
    }
}
