package com.cloud.hisavana.net.disklrucache.utils;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.DiskCacheProvider;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.utils.StorageUtils;
import defpackage.ja1;
import defpackage.ul4;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public class DiskLruCacheUtil {
    public static IDiskCache c;
    public static IDiskCache d;
    public static IDiskCache e;
    public static final Charset a = StandardCharsets.US_ASCII;
    public static final Charset b = StandardCharsets.UTF_8;
    public static final char[] f = "0123456789abcdef".toCharArray();
    public static final char[] g = new char[64];

    private DiskLruCacheUtil() {
    }

    public static String a(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = f;
            cArr[i2] = cArr2[(b2 & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                ja1.netLog("closeQuietly --> " + Log.getStackTraceString(e2));
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

    public static File d(int i) {
        if (i != 3) {
            return i != 4 ? StorageUtils.b(ul4.a()) : StorageUtils.d(ul4.a(), true);
        }
        return StorageUtils.g(ul4.a(), true);
    }

    public static String e(String str, int i) {
        File fileD;
        if (TextUtils.isEmpty(str) || (fileD = d(i)) == null) {
            return "";
        }
        return fileD + File.separator + (SafeKeyUtils.b(new ImageCacheURL(str)) + ".0");
    }

    public static IDiskCache f() {
        if (e == null) {
            HttpRequest httpRequest = HttpRequest.a;
            e = new DiskCacheProvider().b(httpRequest.f() <= 0 ? 209715200L : ((long) (httpRequest.f() * 1024)) * 1024, 4);
        }
        return e;
    }

    public static synchronized IDiskCache g(int i) {
        try {
            if (i == 3) {
                return i();
            }
            if (i != 4) {
                return h();
            }
            return f();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static IDiskCache h() {
        if (c == null) {
            HttpRequest httpRequest = HttpRequest.a;
            c = new DiskCacheProvider().b(httpRequest.e() <= 0 ? 314572800L : ((long) (httpRequest.e() * 1024)) * 1024, 1);
        }
        return c;
    }

    public static IDiskCache i() {
        if (d == null) {
            HttpRequest httpRequest = HttpRequest.a;
            d = new DiskCacheProvider().b(httpRequest.i() <= 0 ? 157286400L : ((long) (httpRequest.i() * 1024)) * 1024, 3);
        }
        return d;
    }

    public static String j(byte[] bArr) {
        String strA;
        char[] cArr = g;
        synchronized (cArr) {
            strA = a(bArr, cArr);
        }
        return strA;
    }
}
