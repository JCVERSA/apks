package n0;

import android.database.Cursor;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import android.text.GetChars;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;

public final class e {

    public static String f1243a;

    public static class a {

        public final byte[] f1244a;

        public final String f1245b;

        public final boolean f1246c;

        public a(byte[] bArr, String str, boolean z2) {
            this.f1244a = bArr;
            this.f1245b = str;
            this.f1246c = z2;
        }
    }

    public static boolean a(String str) {
        if (Build.VERSION.SDK_INT < 30) {
            return false;
        }
        Matcher matcher = Pattern.compile("[|:<*>?\\\\]").matcher(str);
        if (!matcher.find()) {
            return false;
        }
        ZApp.j("Name contains an invalid character: " + matcher.group());
        return true;
    }

    public static void b(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void c(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void d(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void e(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void f(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
        }
    }

    public static long g(String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return Os.lstat(str).st_size;
            } catch (Exception unused) {
                return -1L;
            }
        }
        File file = new File(str);
        if (file.exists()) {
            return file.length();
        }
        return -1L;
    }

    public static String h() {
        String str = f1243a;
        if (str != null) {
            return str;
        }
        File externalFilesDir = null;
        try {
            externalFilesDir = ZApp.e().getExternalFilesDir(null);
        } catch (Exception unused) {
        }
        if (externalFilesDir != null) {
            f1243a = externalFilesDir.getAbsolutePath();
        } else {
            f1243a = x0.d.m().f2255b + "/Android/data/ru.zdevs.zarchiver/files";
        }
        return f1243a;
    }

    public static boolean i(String str) {
        return Build.VERSION.SDK_INT >= 21 ? k(str) : new File(str).exists();
    }

    public static boolean j(String str) {
        boolean z2;
        boolean z3 = false;
        try {
            z2 = Os.lstat(str) != null;
        } catch (Exception unused) {
        }
        if (z2 || Build.VERSION.SDK_INT <= 33) {
            return z2;
        }
        if (C2JBridge.f1613c || C2JBridge.e()) {
            z3 = C2JBridge.cIsExist(str) == 0;
        }
        return z3;
    }

    public static boolean k(String str) {
        try {
            return Os.access(str, OsConstants.F_OK);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean l(String str) {
        String str2 = f1243a;
        return str2 != null ? str.startsWith(str2) : str.contains("/Android/data/ru.zdevs.zarchiver/files/");
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006c  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b7 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:37:0x0095, B:38:0x009a, B:41:0x00a2, B:45:0x00ac, B:46:0x00b3, B:48:0x00b7, B:49:0x00ba), top: B:58:0x0095 }] */
    public static a m(InputStream inputStream, ru.zdevs.zarchiver.ui.editor.b bVar, String str, v0.d dVar) throws Throwable {
        byte[] bArr;
        h hVar;
        StringBuilder sb;
        h hVar2 = null;
        if (str == null) {
            try {
                if (!inputStream.markSupported()) {
                    inputStream = new BufferedInputStream(inputStream, 4096);
                }
                inputStream.mark(4096);
                str = t.b.a(inputStream);
                inputStream.reset();
                if ("US-ASCII".equals(str)) {
                    str = null;
                }
            } catch (Throwable th) {
                th = th;
                d(hVar2);
                throw th;
            }
        }
        try {
            if (str != null) {
                if (str.startsWith("UTF-")) {
                    if (!inputStream.markSupported()) {
                        inputStream = new BufferedInputStream(inputStream, 16);
                    }
                    inputStream.mark(16);
                    int i2 = 4;
                    byte[] bArr2 = new byte[4];
                    if (inputStream.read(bArr2) != 4 || t.b.b(bArr2) == null) {
                        bArr = null;
                    } else {
                        char cCharAt = str.charAt(4);
                        if (cCharAt == '8') {
                            i2 = 3;
                        } else if (cCharAt == '1') {
                            i2 = 2;
                        } else if (cCharAt != '3') {
                            bArr = null;
                        }
                        bArr = new byte[i2];
                        System.arraycopy(bArr2, 0, bArr, 0, i2);
                    }
                    inputStream.reset();
                    if (bArr != null) {
                        inputStream.skip(bArr.length);
                    }
                }
                CharsetDecoder charsetDecoderNewDecoder = Charset.forName(str).newDecoder();
                charsetDecoderNewDecoder.onMalformedInput(CodingErrorAction.REPLACE);
                charsetDecoderNewDecoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
                hVar = new h(new InputStreamReader(inputStream, charsetDecoderNewDecoder));
                sb = new StringBuilder();
                while (hVar.c(sb)) {
                    if (dVar == null && dVar.isCancelled()) {
                        d(hVar);
                        return null;
                    }
                    bVar.o(sb);
                    sb.setLength(0);
                }
                if (bVar.f1857c == 0) {
                    bVar.clear();
                }
                a aVar = new a(bArr, str, hVar.f1261f);
                d(hVar);
                return aVar;
            }
            str = "UTF-8";
            sb = new StringBuilder();
            while (hVar.c(sb)) {
                if (dVar == null) {
                }
                bVar.o(sb);
                sb.setLength(0);
            }
            if (bVar.f1857c == 0) {
                bVar.clear();
            }
            a aVar2 = new a(bArr, str, hVar.f1261f);
            d(hVar);
            return aVar2;
        } catch (Throwable th2) {
            th = th2;
            hVar2 = hVar;
            d(hVar2);
            throw th;
        }
        bArr = null;
        CharsetDecoder charsetDecoderNewDecoder2 = Charset.forName(str).newDecoder();
        charsetDecoderNewDecoder2.onMalformedInput(CodingErrorAction.REPLACE);
        charsetDecoderNewDecoder2.onUnmappableCharacter(CodingErrorAction.REPLACE);
        hVar = new h(new InputStreamReader(inputStream, charsetDecoderNewDecoder2));
    }

    public static String n(DataInputStream dataInputStream, boolean z2) {
        byte[] bArr = new byte[1024];
        int i2 = 0;
        while (true) {
            int i3 = (z2 || dataInputStream.available() > 0) ? dataInputStream.read() : -1;
            if (i3 == -1) {
                if (i2 == 0) {
                    return null;
                }
                return new String(bArr, 0, i2, "UTF-8");
            }
            if (i3 == 10) {
                return new String(bArr, 0, i2, "UTF-8");
            }
            if (i3 != 13) {
                bArr[i2] = (byte) i3;
                i2++;
            }
        }
    }

    public static void o(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
        } catch (Exception unused) {
        }
    }

    public static void p(FileOutputStream fileOutputStream, long j2) {
        try {
            Os.ftruncate(fileOutputStream.getFD(), j2);
        } catch (Exception unused) {
        }
    }

    public static void q(OutputStream outputStream, CharSequence charSequence, a aVar, long j2) throws IOException {
        String string;
        byte[] bArr = aVar.f1244a;
        if (bArr != null) {
            outputStream.write(bArr);
        }
        int length = charSequence.length();
        boolean z2 = charSequence instanceof GetChars;
        char[] cArr = z2 ? new char[8192] : null;
        long length2 = 0;
        int i2 = 0;
        while (i2 < length) {
            int iMin = Math.min(i2 + 8192, length);
            if (z2) {
                ((GetChars) charSequence).getChars(i2, iMin, cArr, 0);
                string = new String(cArr, 0, iMin - i2);
            } else {
                string = charSequence.subSequence(i2, iMin).toString();
            }
            if (aVar.f1246c) {
                string = string.replace("\n", "\r\n");
            }
            byte[] bytes = string.getBytes(aVar.f1245b);
            outputStream.write(bytes);
            length2 += (long) bytes.length;
            i2 = iMin;
        }
        outputStream.flush();
        if (j2 <= length2 || Build.VERSION.SDK_INT < 21 || !(outputStream instanceof FileOutputStream)) {
            return;
        }
        p((FileOutputStream) outputStream, length2);
    }
}
