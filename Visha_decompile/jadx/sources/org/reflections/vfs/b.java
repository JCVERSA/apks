package org.reflections.vfs;

import java.io.File;

public class b implements Vfs.b {
    public final File a;

    public b(File file) {
        if (file == null || (file.isDirectory() && file.canRead())) {
            this.a = file;
            return;
        }
        throw new RuntimeException("cannot use dir " + file);
    }

    public String a() {
        File file = this.a;
        return file == null ? "/NO-SUCH-DIRECTORY/" : file.getPath().replace("\\", "/");
    }

    public String toString() {
        return a();
    }
}
