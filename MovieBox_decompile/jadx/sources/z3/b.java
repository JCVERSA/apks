package z3;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f76612a = new b();

    private b() {
    }

    public static final File a(Context context) {
        Intrinsics.h(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        Intrinsics.g(noBackupFilesDir, "getNoBackupFilesDir(...)");
        return noBackupFilesDir;
    }
}
