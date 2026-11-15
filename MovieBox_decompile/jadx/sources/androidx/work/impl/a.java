package androidx.work.impl;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f15175a = new a();

    private a() {
    }

    public final File a(Context context) {
        Intrinsics.h(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        Intrinsics.g(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }
}
