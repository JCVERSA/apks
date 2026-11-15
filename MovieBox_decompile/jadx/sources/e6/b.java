package e6;

import java.io.File;
import java.io.RandomAccessFile;

public abstract class b {
    public static long a(String str, String str2) {
        File fileC = c(str, str2);
        if (fileC.exists()) {
            return fileC.length();
        }
        File fileD = d(str, str2);
        if (fileD.exists()) {
            return fileD.length();
        }
        return 0L;
    }

    public static void b(RandomAccessFile randomAccessFile, byte[] bArr, int i10, int i11, String str) {
        try {
            randomAccessFile.seek(i10);
            randomAccessFile.write(bArr, 0, i11);
        } catch (Throwable unused) {
        }
    }

    public static File c(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }

    public static File d(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2 + ".temp");
    }
}
