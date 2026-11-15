package androidx.room;

import androidx.p009lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;

public final class k {

    private final RoomDatabase f14371a;

    private final Set f14372b;

    public k(RoomDatabase database) {
        Intrinsics.h(database, "database");
        this.f14371a = database;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Intrinsics.g(setNewSetFromMap, "newSetFromMap(...)");
        this.f14372b = setNewSetFromMap;
    }

    public final LiveData a(String[] tableNames, boolean z10, Callable callableFunction) {
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(callableFunction, "callableFunction");
        return new t(this.f14371a, this, z10, tableNames, callableFunction);
    }

    public final void b(LiveData liveData) {
        Intrinsics.h(liveData, "liveData");
        this.f14372b.add(liveData);
    }

    public final void c(LiveData liveData) {
        Intrinsics.h(liveData, "liveData");
        this.f14372b.remove(liveData);
    }
}
