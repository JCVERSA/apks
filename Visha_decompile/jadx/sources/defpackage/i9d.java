package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public abstract class i9d {
    public static final Charset a = Charset.forName(CharEncoding.US_ASCII);
    public static final char[] b;
    public static final char[] c;

    static {
        Charset.forName("UTF-8");
        b = "0123456789abcdef".toCharArray();
        c = new char[64];
    }

    public static String a(byte[] bArr) {
        String str;
        char[] cArr = c;
        synchronized (cArr) {
            for (int i = 0; i < bArr.length; i++) {
                try {
                    byte b2 = bArr[i];
                    int i2 = i * 2;
                    char[] cArr2 = b;
                    cArr[i2] = cArr2[(b2 & 255) >>> 4];
                    cArr[i2 + 1] = cArr2[b2 & 15];
                } catch (Throwable th) {
                    throw th;
                }
            }
            str = new String(cArr);
        }
        return str;
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    public static void c(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                c(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
