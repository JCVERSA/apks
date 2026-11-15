package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

public abstract class n {
    public static final m a(String filePath) {
        Intrinsics.h(filePath, "filePath");
        return new SingleProcessCoordinator(filePath);
    }
}
