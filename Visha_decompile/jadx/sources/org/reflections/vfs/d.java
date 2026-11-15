package org.reflections.vfs;

import java.util.jar.JarFile;
import java.util.zip.ZipFile;

public class d implements Vfs.b {
    public final ZipFile a;

    public d(JarFile jarFile) {
        this.a = jarFile;
    }

    public String toString() {
        return this.a.getName();
    }
}
