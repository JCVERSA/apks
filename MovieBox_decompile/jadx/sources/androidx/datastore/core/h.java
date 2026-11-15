package androidx.datastore.core;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

public final class h {

    public static final h f8305a = new h();

    private h() {
    }

    public final g a(w storage, j1.b bVar, List migrations, n0 scope) {
        Intrinsics.h(storage, "storage");
        Intrinsics.h(migrations, "migrations");
        Intrinsics.h(scope, "scope");
        d aVar = bVar;
        if (bVar == null) {
            aVar = new j1.a();
        }
        return new DataStoreImpl(storage, CollectionsKt.e(DataMigrationInitializer.f8248a.b(migrations)), aVar, scope);
    }
}
