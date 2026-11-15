package androidx.datastore.core;

import android.os.Build;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

public abstract class j {
    public static final boolean a(File file, File toFile) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(toFile, "toFile");
        return Build.VERSION.SDK_INT >= 26 ? a.f8296a.a(file, toFile) : file.renameTo(toFile);
    }
}
