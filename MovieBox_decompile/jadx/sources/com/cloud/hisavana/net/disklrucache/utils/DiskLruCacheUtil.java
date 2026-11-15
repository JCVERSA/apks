package com.cloud.hisavana.net.disklrucache.utils;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.DiskCacheProvider;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public class DiskLruCacheUtil {

    private static IDiskCache f20794c;

    private static IDiskCache f20795d;

    private static IDiskCache f20796e;

    public static final Charset f20792a = StandardCharsets.US_ASCII;

    public static final Charset f20793b = StandardCharsets.UTF_8;

    private static final char[] f20797f = "0123456789abcdef".toCharArray();

    private static final char[] f20798g = new char[64];

    private DiskLruCacheUtil() {
    }

    private static String a(byte[] bArr, char[] cArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            char[] cArr2 = f20797f;
            cArr[i11] = cArr2[(b10 & 255) >>> 4];
            cArr[i11 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                c.netLog("closeQuietly --> " + Log.getStackTraceString(e10));
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

    public static File d(int i10) {
        if (i10 != 3) {
            return i10 != 4 ? StorageUtils.a(e.a()) : StorageUtils.c(e.a(), true);
        }
        return StorageUtils.f(e.a(), true);
    }

    public static String e(String str, int i10) {
        File fileD;
        if (TextUtils.isEmpty(str) || (fileD = d(i10)) == null) {
            return "";
        }
        return fileD + File.separator + (SafeKeyUtils.b(new ImageCacheURL(str)) + ".0");
    }

    private static IDiskCache f() {
        if (f20796e == null) {
            HttpRequest httpRequest = HttpRequest.f20712a;
            f20796e = new DiskCacheProvider().b(httpRequest.f() <= 0 ? TmcConstants.LOCAL_FILE_MAX_SIZE : ((long) (httpRequest.f() * 1024)) * 1024, 4);
        }
        return f20796e;
    }

    public static synchronized IDiskCache g(int i10) {
        try {
            if (i10 == 3) {
                return i();
            }
            if (i10 != 4) {
                return h();
            }
            return f();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static IDiskCache h() {
        if (f20794c == null) {
            HttpRequest httpRequest = HttpRequest.f20712a;
            f20794c = new DiskCacheProvider().b(httpRequest.e() <= 0 ? 314572800L : ((long) (httpRequest.e() * 1024)) * 1024, 1);
        }
        return f20794c;
    }

    private static IDiskCache i() {
        if (f20795d == null) {
            HttpRequest httpRequest = HttpRequest.f20712a;
            f20795d = new DiskCacheProvider().b(httpRequest.i() <= 0 ? 157286400L : ((long) (httpRequest.i() * 1024)) * 1024, 3);
        }
        return f20795d;
    }

    public static String j(byte[] bArr) {
        String strA;
        char[] cArr = f20798g;
        synchronized (cArr) {
            strA = a(bArr, cArr);
        }
        return strA;
    }
}
