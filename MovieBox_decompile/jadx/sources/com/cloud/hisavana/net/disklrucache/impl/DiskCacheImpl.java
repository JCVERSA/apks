package com.cloud.hisavana.net.disklrucache.impl;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.disklrucache.DiskCacheWriteLocker;
import com.cloud.hisavana.net.disklrucache.DiskLruCache;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.disklrucache.utils.SafeKeyUtils;
import com.cloud.sdk.commonutil.util.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.Response;

public class DiskCacheImpl implements IDiskCache {

    private final DiskCacheWriteLocker f20782a = new DiskCacheWriteLocker();

    private DiskLruCache f20783b;

    private File f20784c;

    private final long f20785d;

    private int f20786e;

    protected DiskCacheImpl(File file, long j10, int i10) {
        this.f20784c = file;
        this.f20785d = j10;
        this.f20786e = i10;
    }

    private DiskLruCache g() {
        DiskLruCache diskLruCacheX = this.f20783b;
        if (diskLruCacheX == null) {
            synchronized (DiskCacheImpl.class) {
                try {
                    diskLruCacheX = this.f20783b;
                    if (diskLruCacheX == null) {
                        File fileD = DiskLruCacheUtil.d(this.f20786e);
                        if (Log.isLoggable("ADSDK", 3)) {
                            c.netLog(" ----- getDiskLruCache: directory = " + this.f20784c + " , cacheFile = " + fileD);
                        }
                        File file = this.f20784c;
                        if (file != null) {
                            fileD = file;
                        }
                        this.f20784c = fileD;
                        diskLruCacheX = DiskLruCache.x(fileD, 1, 1, this.f20785d);
                        this.f20783b = diskLruCacheX;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return diskLruCacheX;
    }

    @Override
    public void a(ImageCacheURL imageCacheURL) {
        try {
            g().d0(SafeKeyUtils.b(imageCacheURL));
        } catch (Exception unused) {
        }
    }

    @Override
    public String b(ImageCacheURL imageCacheURL, byte[] bArr) {
        String strE = "";
        this.f20782a.a(imageCacheURL);
        String strB = SafeKeyUtils.b(imageCacheURL);
        OutputStream outputStreamG = null;
        try {
            try {
                if (g().u(strB) != null) {
                    DiskLruCacheUtil.b(null);
                    this.f20782a.b(imageCacheURL);
                    return null;
                }
                DiskLruCache.Editor editorS = this.f20783b.s(strB);
                if (editorS == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + strB);
                }
                try {
                    outputStreamG = editorS.g(0);
                    outputStreamG.write(bArr);
                    outputStreamG.flush();
                    editorS.f();
                    this.f20783b.flush();
                    strE = DiskLruCacheUtil.e(imageCacheURL.c(), this.f20786e);
                    if (Log.isLoggable("ADSDK", 3)) {
                        c.netLog("url :" + imageCacheURL.c() + " cacheToDisk with buff: " + strE);
                    }
                    editorS.b();
                    DiskLruCacheUtil.b(outputStreamG);
                    this.f20782a.b(imageCacheURL);
                    return strE;
                } catch (Throwable th2) {
                    editorS.b();
                    throw th2;
                }
            } catch (IOException unused) {
                c.netLog("put: fail");
            }
        } catch (Throwable th3) {
            DiskLruCacheUtil.b(null);
            this.f20782a.b(imageCacheURL);
            throw th3;
        }
    }

    @Override
    public File c(ImageCacheURL imageCacheURL) {
        return h(imageCacheURL);
    }

    @Override
    public String d(ImageCacheURL imageCacheURL, Response response) {
        return (response == null || response.body() == null) ? "" : e(imageCacheURL, response.body().byteStream());
    }

    @Override
    public String e(ImageCacheURL imageCacheURL, InputStream inputStream) {
        String strE = "";
        if (imageCacheURL == null || inputStream == null) {
            return "";
        }
        this.f20782a.a(imageCacheURL);
        String strB = SafeKeyUtils.b(imageCacheURL);
        try {
            try {
                if (g().u(strB) != null) {
                    DiskLruCacheUtil.b(null);
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    this.f20782a.b(imageCacheURL);
                    return null;
                }
                DiskLruCache.Editor editorS = this.f20783b.s(strB);
                if (editorS == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + strB);
                }
                try {
                    OutputStream outputStreamG = editorS.g(0);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        outputStreamG.write(bArr, 0, i10);
                    }
                    outputStreamG.flush();
                    editorS.f();
                    this.f20783b.flush();
                    strE = DiskLruCacheUtil.e(imageCacheURL.c(), this.f20786e);
                    if (Log.isLoggable("ADSDK", 3)) {
                        c.netLog("url :" + imageCacheURL.c() + " cacheToDisk with response: " + strE);
                    }
                    editorS.b();
                    DiskLruCacheUtil.b(outputStreamG);
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                    this.f20782a.b(imageCacheURL);
                    return strE;
                } catch (Throwable th2) {
                    editorS.b();
                    throw th2;
                }
            } catch (Exception unused3) {
                c.netLog("put: fail");
                DiskLruCacheUtil.b(null);
            }
        } catch (Throwable th3) {
            DiskLruCacheUtil.b(null);
            try {
                inputStream.close();
            } catch (IOException unused4) {
            }
            this.f20782a.b(imageCacheURL);
            throw th3;
        }
    }

    @Override
    public boolean f(String str) {
        try {
            return g().u(SafeKeyUtils.b(new ImageCacheURL(str))) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    protected File h(ImageCacheURL imageCacheURL) {
        File fileD;
        if (TextUtils.isEmpty(imageCacheURL.c()) || (fileD = DiskLruCacheUtil.d(this.f20786e)) == null) {
            return null;
        }
        String str = SafeKeyUtils.b(imageCacheURL) + ".0";
        try {
            g().u(str);
        } catch (Exception unused) {
        }
        return new File(fileD + File.separator + str);
    }
}
