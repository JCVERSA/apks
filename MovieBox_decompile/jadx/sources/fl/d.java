package fl;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

public abstract class d {

    public static final Charset f60191a = Charset.forName(C.ASCII_NAME);

    private static final char[] f60192b;

    private static final char[] f60193c;

    static {
        Charset.forName("UTF-8");
        f60192b = "0123456789abcdef".toCharArray();
        f60193c = new char[64];
    }

    public static String a(byte[] bArr) {
        String str;
        char[] cArr = f60193c;
        synchronized (cArr) {
            for (int i10 = 0; i10 < bArr.length; i10++) {
                try {
                    byte b10 = bArr[i10];
                    int i11 = i10 * 2;
                    char[] cArr2 = f60192b;
                    cArr[i11] = cArr2[(b10 & 255) >>> 4];
                    cArr[i11 + 1] = cArr2[b10 & 15];
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            str = new String(cArr);
        }
        return str;
    }

    static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
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
