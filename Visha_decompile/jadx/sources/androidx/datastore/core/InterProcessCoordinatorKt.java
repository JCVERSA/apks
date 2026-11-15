package androidx.datastore.core;

import androidx.annotation.RestrictTo;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007¨\u0006\u0004"}, d2 = {"createSingleProcessCoordinator", "Landroidx/datastore/core/InterProcessCoordinator;", Progress.FILE_PATH, "", "datastore-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class InterProcessCoordinatorKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final InterProcessCoordinator createSingleProcessCoordinator(String str) {
        y45.j(str, Progress.FILE_PATH);
        return new SingleProcessCoordinator(str);
    }
}
