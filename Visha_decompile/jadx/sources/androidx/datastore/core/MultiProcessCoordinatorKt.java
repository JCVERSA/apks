package androidx.datastore.core;

import defpackage.y45;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.d;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/coroutines/d;", "context", "Ljava/io/File;", "file", "Landroidx/datastore/core/InterProcessCoordinator;", "createMultiProcessCoordinator", "(Lkotlin/coroutines/d;Ljava/io/File;)Landroidx/datastore/core/InterProcessCoordinator;", "datastore-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class MultiProcessCoordinatorKt {
    public static final InterProcessCoordinator createMultiProcessCoordinator(d dVar, File file) {
        y45.j(dVar, "context");
        y45.j(file, "file");
        return new MultiProcessCoordinator(dVar, file);
    }
}
