package androidx.datastore.core;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import kotlin.jvm.internal.Intrinsics;

final class a {

    public static final a f8296a = new a();

    private a() {
    }

    public final boolean a(File srcFile, File dstFile) {
        Intrinsics.h(srcFile, "srcFile");
        Intrinsics.h(dstFile, "dstFile");
        try {
            Files.move(srcFile.toPath(), dstFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
