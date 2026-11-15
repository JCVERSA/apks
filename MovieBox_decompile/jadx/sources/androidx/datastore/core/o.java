package androidx.datastore.core;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

public abstract class o {
    public static final m a(File file) {
        Intrinsics.h(file, "file");
        String absolutePath = file.getCanonicalFile().getAbsolutePath();
        Intrinsics.g(absolutePath, "file.canonicalFile.absolutePath");
        return n.a(absolutePath);
    }
}
