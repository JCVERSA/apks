package n0;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.nio.file.Files;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class d {
    public static void a(File file, long j2, boolean z2) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.lastModified() < j2) {
                    a(file2, j2, true);
                }
            }
        }
        if (z2) {
            file.delete();
        }
    }

    public static void b(boolean z2) {
        File file = new File(e.h());
        if (file.exists()) {
            a(file, z2 ? Long.MAX_VALUE : System.currentTimeMillis() - 10800000, false);
        }
    }

    public static void c(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    c(file2);
                }
                file2.delete();
            }
        }
    }

    public static void d(File file, h0.e.b bVar, v0.d dVar) {
        boolean z2;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                AtomicInteger atomicInteger = new AtomicInteger(0);
                AtomicLong atomicLong = new AtomicLong(0L);
                try {
                    Files.walkFileTree(file.toPath(), new c(atomicInteger, atomicLong, dVar));
                    bVar.f1090c = atomicLong.get() + bVar.f1090c;
                    bVar.f1091d = atomicInteger.get() + bVar.f1091d;
                    z2 = true;
                } catch (Exception unused) {
                    z2 = false;
                }
                if (z2) {
                    return;
                }
            } catch (Exception unused2) {
            }
            bVar.f1090c = 0L;
            bVar.f1091d = 0;
        }
        byte bA = x0.a.a(file);
        int i2 = (bA == 1 || bA == 3) ? 9 : 1;
        if (bA == 2) {
            i2 |= 2;
        }
        if (bA == 2 || bA == 1) {
            i2 |= 4;
        }
        e(file, bVar, dVar, 0, a0.c.K(i2, 4));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0024  */
    /* JADX WARN: Code duplicated, block: B:21:0x002c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0034  */
    public static void e(File file, h0.e.b bVar, v0.d dVar, int i2, boolean z2) {
        File[] fileArrListFiles;
        if (i2 <= 30 && (fileArrListFiles = file.listFiles()) != null) {
            for (int i3 = 0; i3 < fileArrListFiles.length; i3++) {
                if (dVar != null && dVar.isCancelled()) {
                    return;
                }
                if (z2) {
                    try {
                        if (!f(fileArrListFiles[i3])) {
                            if (fileArrListFiles[i3].isDirectory()) {
                                e(fileArrListFiles[i3], bVar, dVar, i2 + 1, z2);
                            } else {
                                bVar.f1090c = fileArrListFiles[i3].length() + bVar.f1090c;
                                bVar.f1091d++;
                            }
                        }
                    } catch (Exception unused) {
                    }
                } else if (fileArrListFiles[i3].isDirectory()) {
                    e(fileArrListFiles[i3], bVar, dVar, i2 + 1, z2);
                } else {
                    bVar.f1090c = fileArrListFiles[i3].length() + bVar.f1090c;
                    bVar.f1091d++;
                }
            }
        }
    }

    public static boolean f(File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return OsConstants.S_ISLNK(Os.lstat(file.getAbsolutePath()).st_mode);
            } catch (Exception unused) {
                return false;
            }
        }
        if (file.getParent() != null) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                return false;
            }
            file = new File(parentFile.getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }
}
