package defpackage;

import java.io.File;
import java.io.FileFilter;

public final class t4d implements FileFilter {
    @Override
    public final boolean accept(File file) {
        boolean z = file.isFile() && file.getName().startsWith("qt.csv.");
        if (!z) {
            file.delete();
        }
        return z;
    }
}
