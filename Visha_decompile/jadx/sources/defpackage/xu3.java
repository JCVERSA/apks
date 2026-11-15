package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.Pair;

public final class xu3 {
    public static final xu3 a = new xu3();

    public static final boolean b(List list, String str) {
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(str);
                try {
                    ZipOutputStream zipOutputStream = new ZipOutputStream(fileOutputStream);
                    try {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            File file = (File) it.next();
                            FileInputStream fileInputStream = new FileInputStream(file);
                            try {
                                zipOutputStream.putNextEntry(new ZipEntry(file.getName()));
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int i = fileInputStream.read(bArr);
                                    if (i < 0) {
                                        break;
                                    }
                                    zipOutputStream.write(bArr, 0, i);
                                }
                                zipOutputStream.closeEntry();
                                zfb zfbVar = zfb.a;
                                ly0.a(fileInputStream, null);
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    ly0.a(fileInputStream, th);
                                    throw th2;
                                }
                            }
                        }
                        zfb zfbVar2 = zfb.a;
                        ly0.a(zipOutputStream, null);
                        ly0.a(fileOutputStream, null);
                        return true;
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            ly0.a(zipOutputStream, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        ly0.a(fileOutputStream, th5);
                        throw th6;
                    }
                }
            } catch (IOException e) {
                Log.e("compressDirectory", "Error compressing directory" + e.getMessage());
            }
        }
        return false;
    }

    public static final Pair g(String str) {
        File[] fileArrListFiles;
        String name;
        Long lT;
        y45.j(str, Progress.FILE_PATH);
        try {
            File file = new File(str);
            if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                File file2 = (File) hi.y0(fileArrListFiles, new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        return xu3.h((File) obj, (File) obj2);
                    }
                });
                return new Pair(Long.valueOf((file2 == null || (name = file2.getName()) == null || (lT = f1a.t(name)) == null) ? 0L : lT.longValue()), Long.valueOf(file2 != null ? file2.length() : 0L));
            }
            return new Pair(0L, 0L);
        } catch (Exception unused) {
            return new Pair(0L, 0L);
        }
    }

    public static final int h(File file, File file2) {
        String name = file.getName();
        y45.i(name, "getName(...)");
        Long lT = f1a.t(name);
        long jLongValue = lT != null ? lT.longValue() : 0L;
        String name2 = file2.getName();
        y45.i(name2, "getName(...)");
        Long lT2 = f1a.t(name2);
        return y45.m(jLongValue, lT2 != null ? lT2.longValue() : 0L);
    }

    public static final long i(File file) {
        if (file == null) {
            return 0L;
        }
        return file.isDirectory() ? a.d(file) : a.f(file);
    }

    public final long c(File file) {
        long length;
        long j = 0;
        if (!j(file)) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            Iterator itA = xg.a(fileArrListFiles);
            while (itA.hasNext()) {
                File file2 = (File) itA.next();
                if (file2.isDirectory()) {
                    y45.g(file2);
                    length = c(file2);
                } else {
                    length = file2.length();
                }
                j += length;
            }
        }
        return j;
    }

    public final long d(File file) {
        return c(file);
    }

    public final long e(File file) {
        if (k(file)) {
            return file.length();
        }
        return -1L;
    }

    public final long f(File file) {
        return e(file);
    }

    public final boolean j(File file) {
        return file != null && file.exists() && file.isDirectory();
    }

    public final boolean k(File file) {
        return file != null && file.exists() && file.isFile();
    }
}
