package com.cloud.hisavana.net.disklrucache.impl;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.disklrucache.DiskCacheWriteLocker;
import com.cloud.hisavana.net.disklrucache.DiskLruCache;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.disklrucache.utils.SafeKeyUtils;
import defpackage.ja1;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.Response;

public class DiskCacheImpl implements IDiskCache {
    public final DiskCacheWriteLocker a = new DiskCacheWriteLocker();
    public DiskLruCache b;
    public File c;
    public final long d;
    public int e;

    public DiskCacheImpl(File file, long j, int i) {
        this.c = file;
        this.d = j;
        this.e = i;
    }

    @Override
    public String a(ImageCacheURL imageCacheURL, byte[] bArr) {
        String strE = "";
        this.a.a(imageCacheURL);
        String strB = SafeKeyUtils.b(imageCacheURL);
        OutputStream outputStreamG = null;
        try {
            try {
                if (g().J(strB) != null) {
                    DiskLruCacheUtil.b(null);
                    this.a.b(imageCacheURL);
                    return null;
                }
                DiskLruCache.Editor editorH = this.b.H(strB);
                if (editorH == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + strB);
                }
                try {
                    outputStreamG = editorH.g(0);
                    outputStreamG.write(bArr);
                    outputStreamG.flush();
                    editorH.f();
                    this.b.flush();
                    strE = DiskLruCacheUtil.e(imageCacheURL.c(), this.e);
                    if (Log.isLoggable("ADSDK", 3)) {
                        ja1.netLog("url :" + imageCacheURL.c() + " cacheToDisk with buff: " + strE);
                    }
                    editorH.b();
                    DiskLruCacheUtil.b(outputStreamG);
                    this.a.b(imageCacheURL);
                    return strE;
                } catch (Throwable th) {
                    editorH.b();
                    throw th;
                }
            } catch (IOException unused) {
                ja1.netLog("put: fail");
            }
        } catch (Throwable th2) {
            DiskLruCacheUtil.b(null);
            this.a.b(imageCacheURL);
            throw th2;
        }
    }

    @Override
    public boolean b(String str) {
        try {
            return g().J(SafeKeyUtils.b(new ImageCacheURL(str))) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public void c(ImageCacheURL imageCacheURL) {
        try {
            g().S(SafeKeyUtils.b(imageCacheURL));
        } catch (Exception unused) {
        }
    }

    @Override
    public File d(ImageCacheURL imageCacheURL) {
        return h(imageCacheURL);
    }

    @Override
    public String e(ImageCacheURL imageCacheURL, Response response) {
        return (response == null || response.body() == null) ? "" : f(imageCacheURL, response.body().byteStream());
    }

    @Override
    public String f(ImageCacheURL imageCacheURL, InputStream inputStream) {
        String strE = "";
        if (imageCacheURL == null || inputStream == null) {
            return "";
        }
        this.a.a(imageCacheURL);
        String strB = SafeKeyUtils.b(imageCacheURL);
        try {
            try {
                if (g().J(strB) != null) {
                    DiskLruCacheUtil.b(null);
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    this.a.b(imageCacheURL);
                    return null;
                }
                DiskLruCache.Editor editorH = this.b.H(strB);
                if (editorH == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + strB);
                }
                try {
                    OutputStream outputStreamG = editorH.g(0);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        outputStreamG.write(bArr, 0, i);
                    }
                    outputStreamG.flush();
                    editorH.f();
                    this.b.flush();
                    strE = DiskLruCacheUtil.e(imageCacheURL.c(), this.e);
                    if (Log.isLoggable("ADSDK", 3)) {
                        ja1.netLog("url :" + imageCacheURL.c() + " cacheToDisk with response: " + strE);
                    }
                    editorH.b();
                    DiskLruCacheUtil.b(outputStreamG);
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                    this.a.b(imageCacheURL);
                    return strE;
                } catch (Throwable th) {
                    editorH.b();
                    throw th;
                }
            } catch (Throwable th2) {
                DiskLruCacheUtil.b(null);
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
                this.a.b(imageCacheURL);
                throw th2;
            }
        } catch (Exception unused4) {
            ja1.netLog("put: fail");
            DiskLruCacheUtil.b(null);
        }
    }

    public final DiskLruCache g() {
        DiskLruCache diskLruCacheM = this.b;
        if (diskLruCacheM == null) {
            synchronized (DiskCacheImpl.class) {
                try {
                    diskLruCacheM = this.b;
                    if (diskLruCacheM == null) {
                        File fileD = DiskLruCacheUtil.d(this.e);
                        if (Log.isLoggable("ADSDK", 3)) {
                            ja1.netLog(" ----- getDiskLruCache: directory = " + this.c + " , cacheFile = " + fileD);
                        }
                        File file = this.c;
                        if (file != null) {
                            fileD = file;
                        }
                        this.c = fileD;
                        diskLruCacheM = DiskLruCache.M(fileD, 1, 1, this.d);
                        this.b = diskLruCacheM;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return diskLruCacheM;
    }

    public File h(ImageCacheURL imageCacheURL) {
        File fileD;
        if (TextUtils.isEmpty(imageCacheURL.c()) || (fileD = DiskLruCacheUtil.d(this.e)) == null) {
            return null;
        }
        String str = SafeKeyUtils.b(imageCacheURL) + ".0";
        try {
            g().J(str);
        } catch (Exception unused) {
        }
        return new File(fileD + File.separator + str);
    }
}
