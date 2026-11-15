package com.transsion.vishaads.datasource;

import androidx.webkit.ProxyConfig;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.ky7;
import defpackage.r0a;
import defpackage.tt4;
import defpackage.zu3;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class AdSourceDownloader {
    public final int a = 8192;
    public final String b = ".temp";
    public ThreadPoolExecutor c;

    public interface DownloadCallback {
        void onDownloadFailure(String str, String str2);

        void onDownloadSuccess(String str, String str2);
    }

    public AdSourceDownloader() {
        c();
    }

    public final void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                LogUtils.O("AdSourceDownloader", "VideoProxyCacheUtils close " + closeable + " failed, exception = " + e);
            }
        }
    }

    public final void c() {
        this.c = new ThreadPoolExecutor(3, 3, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardOldestPolicy());
    }

    public void d(final AdItemBean adItemBean, final DownloadCallback downloadCallback) {
        if (adItemBean != null && !r0a.g(adItemBean.getAdUrl()) && adItemBean.getAdUrl().startsWith(ProxyConfig.MATCH_HTTP)) {
            final String adUrl = adItemBean.getAdUrl();
            if (this.c.isShutdown() || this.c.isTerminated()) {
                this.c = null;
                c();
            }
            this.c.execute(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.b.f(adUrl, adItemBean, downloadCallback);
                }
            });
            return;
        }
        LogUtils.m("AdSourceDownloader", "Failed download invalid ad : " + adItemBean);
        if (downloadCallback != null) {
            downloadCallback.onDownloadFailure("", "");
        }
    }

    public final void e(AdItemBean adItemBean, String str) throws Throwable {
        RandomAccessFile randomAccessFile;
        String adUrl = adItemBean.getAdUrl();
        String str2 = str + ".temp";
        LogUtils.j("AdSourceDownloader", adItemBean.getAdTypeTag() + "start download url:" + adUrl, "save path:" + str, "temp file:" + str2);
        Closeable closeable = null;
        try {
            HashMap map = new HashMap();
            map.put("Range", "bytes=0-");
            HttpURLConnection httpURLConnectionB = tt4.b(adUrl, map, true, 5000, 5000);
            InputStream inputStream = httpURLConnectionB.getInputStream();
            try {
                int contentLength = httpURLConnectionB.getContentLength();
                if (contentLength == 0) {
                    LogUtils.m("AdSourceDownloader", adItemBean.getAdTypeTag() + "failed download url:" + adUrl);
                    b(inputStream);
                    b(null);
                    return;
                }
                byte[] bArr = new byte[8192];
                File file = new File(str2);
                randomAccessFile = new RandomAccessFile(file.getAbsolutePath(), "rw");
                int i = 0;
                while (true) {
                    try {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1) {
                            break;
                        }
                        int i3 = i + i2;
                        if (i3 >= contentLength) {
                            randomAccessFile.write(bArr, 0, contentLength - i);
                            if (file.renameTo(new File(str))) {
                                LogUtils.w("AdSourceDownloader", adItemBean.getAdTypeTag() + "finish  success download url:" + adUrl, "save path:" + str);
                            } else {
                                LogUtils.j("AdSourceDownloader", adItemBean.getAdTypeTag() + "File rename failed:" + str);
                                file.delete();
                            }
                            i = contentLength;
                        } else {
                            randomAccessFile.write(bArr, 0, i2);
                            i = i3;
                        }
                    } catch (Exception e) {
                        e = e;
                        closeable = inputStream;
                        try {
                            LogUtils.m("AdSourceDownloader", adItemBean.getAdTypeTag() + "finish failed download url:" + adUrl, "exception=" + e.getMessage());
                            e.printStackTrace();
                            b(closeable);
                        } catch (Throwable th) {
                            th = th;
                            b(closeable);
                            b(randomAccessFile);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = inputStream;
                        b(closeable);
                        b(randomAccessFile);
                        throw th;
                    }
                }
                b(inputStream);
                b(randomAccessFile);
            } catch (Exception e2) {
                e = e2;
                randomAccessFile = null;
            } catch (Throwable th3) {
                th = th3;
                randomAccessFile = null;
            }
        } catch (Exception e3) {
            e = e3;
            randomAccessFile = null;
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile = null;
        }
    }

    public final void f(String str, AdItemBean adItemBean, DownloadCallback downloadCallback) throws Throwable {
        try {
            String str2 = ky7.b() + File.separator + (CacheManager.encryptMD5(str) + Consts.DOT + zu3.n(str));
            LogUtils.j("AdSourceDownloader", adItemBean.getAdTypeTag() + "Download url:" + str, "downloadFilePath: " + str2);
            if (r0a.g(str2) || !zu3.y(str2)) {
                String str3 = str2 + ".temp";
                if (zu3.y(str3)) {
                    zu3.h(str3);
                }
                e(adItemBean, str2);
                return;
            }
            LogUtils.j("AdSourceDownloader", adItemBean.getAdTypeTag() + "download file exist: " + str, "downloadFilePath:" + str2);
            if (downloadCallback != null) {
                downloadCallback.onDownloadSuccess(str, str2);
            }
        } catch (Exception e) {
            LogUtils.m("AdSourceDownloader", "onDownloadFailure:" + str, "Exception:" + e.getMessage());
        }
    }
}
