package defpackage;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.videodownloader.VideoDownloadException;
import com.transsion.videodownloader.VideoDownloadManager;
import com.transsion.videodownloader.model.VideoTaskItem;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class cw5 extends erb {
    public final Object q;
    public final Lock r;
    public final pv5 s;
    public final List t;
    public volatile int u;
    public final int v;
    public long w;
    public final File x;
    public long y;
    public long z;

    public cw5(VideoTaskItem videoTaskItem, pv5 pv5Var, Map map) {
        super(videoTaskItem, map);
        this.q = new Object();
        this.r = new ReentrantLock();
        this.u = 0;
        this.y = 0L;
        this.z = 0L;
        File file = new File(this.d, Consts.DOT + this.e);
        this.x = file;
        LogUtils.j("M3U8VideoDownloadTask", "ts save path: " + file);
        if (!file.exists()) {
            file.mkdir();
        }
        videoTaskItem.setTsSavePath(file.getAbsolutePath());
        File file2 = new File(file, ".nomedia");
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        this.s = pv5Var;
        List listF = pv5Var.f();
        this.t = listF;
        int size = listF.size();
        this.v = size;
        this.n = videoTaskItem.getPercent();
        if (this.c == null) {
            this.c = new HashMap();
        }
        this.c.put("Connection", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
        videoTaskItem.setTotalTs(size);
        videoTaskItem.setCurTs(this.u);
    }

    @Override
    public void c() {
        ThreadPoolExecutor threadPoolExecutor = this.f;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        this.f.shutdownNow();
        b();
    }

    @Override
    public void e() {
        this.g.c(this.a.getUrl());
        m();
        t(this.u);
    }

    public final void g() {
        if (this.a.isErrorState()) {
            LogUtils.j("M3U8VideoDownloadTask", "notifyDownloadProgress but task is error state so return");
            return;
        }
        u();
        if (this.k == 0) {
            this.k = i7c.b(this.x);
        }
        if (this.a.isCompleted()) {
            this.u = this.v;
            k();
            return;
        }
        int i = this.u;
        int i2 = this.v;
        if (i >= i2) {
            this.u = i2;
        }
        synchronized (this.i) {
            try {
                float f = ((this.u * 1.0f) * 100.0f) / this.v;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = this.k;
                long j2 = this.j;
                if (j > j2) {
                    long j3 = this.l;
                    if (jCurrentTimeMillis > j3) {
                        this.m = (((j - j2) * 1000) * 1.0f) / (jCurrentTimeMillis - j3);
                    }
                }
                if (!this.h) {
                    this.g.f(f, this.k, this.u, this.v, this.m);
                }
                this.n = f;
                this.j = this.k;
                this.l = jCurrentTimeMillis;
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = this.t.iterator();
        while (it.hasNext()) {
            if (!new File(this.x, ((zv5) it.next()).e()).exists()) {
                return;
            }
        }
        k();
    }

    public final void h(boolean z) {
        if (this.r.tryLock()) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.z = jCurrentTimeMillis;
                if (jCurrentTimeMillis - this.y < 1000) {
                    return;
                }
                this.y = jCurrentTimeMillis;
                u();
                if (this.k == 0) {
                    this.k = i7c.b(this.x);
                }
                float f = ((this.u * 1.0f) * 100.0f) / this.v;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                long j = this.k;
                long j2 = this.j;
                if (j > j2) {
                    long j3 = this.l;
                    if (jCurrentTimeMillis2 > j3) {
                        this.m = (((j - j2) * 1000) * 1.0f) / (jCurrentTimeMillis2 - j3);
                    }
                }
                this.g.f(f, j, this.u, this.v, this.m);
                this.n = f;
                this.j = this.k;
                this.l = jCurrentTimeMillis2;
            } finally {
                this.r.unlock();
            }
        }
    }

    public final void i() {
        synchronized (this.q) {
            try {
                File file = new File(this.d, "temp.m3u8");
                if (file.exists()) {
                    file.delete();
                }
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, false));
                try {
                    bufferedWriter.write("#EXTM3U\n");
                    bufferedWriter.write("#EXT-X-VERSION:" + this.s.g() + "\n");
                    bufferedWriter.write("#EXT-X-MEDIA-SEQUENCE:" + this.s.c() + "\n");
                    bufferedWriter.write("#EXT-X-TARGETDURATION:" + this.s.e() + "\n");
                    for (zv5 zv5Var : this.t) {
                        if (zv5Var.p()) {
                            String str = "file://" + this.x.getAbsolutePath() + File.separator + zv5Var.f();
                            bufferedWriter.write("#EXT-X-MAP:" + (zv5Var.m() != null ? "URI=\"" + str + "\",BYTERANGE=\"" + zv5Var.m() + "\"" : "URI=\"" + str + "\"") + "\n");
                        }
                        if (zv5Var.q() && zv5Var.k() != null) {
                            String str2 = "METHOD=" + zv5Var.k();
                            if (zv5Var.i() != null) {
                                File file2 = new File("file://" + this.x, zv5Var.j());
                                str2 = (zv5Var.s() || !file2.exists()) ? str2 + ",URI=\"" + zv5Var.i() + "\"" : str2 + ",URI=\"" + file2.getAbsolutePath() + "\"";
                            }
                            if (zv5Var.h() != null) {
                                str2 = str2 + ",IV=" + zv5Var.h();
                            }
                            bufferedWriter.write("#EXT-X-KEY:" + str2 + "\n");
                        }
                        if (zv5Var.o()) {
                            bufferedWriter.write("#EXT-X-DISCONTINUITY\n");
                        }
                        bufferedWriter.write("#EXTINF:" + zv5Var.d() + ",\n");
                        bufferedWriter.write("file://" + this.x.getAbsolutePath() + File.separator + zv5Var.e());
                        bufferedWriter.newLine();
                    }
                    bufferedWriter.write("#EXT-X-ENDLIST");
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    File file3 = new File(this.d, this.e + "_local.m3u8");
                    if (file3.exists()) {
                        file3.delete();
                    }
                    file.renameTo(file3);
                } catch (Throwable th) {
                    try {
                        bufferedWriter.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void j(zv5 zv5Var, File file, String str) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        Closeable closeable = null;
        InputStream inputStream = null;
        httpURLConnection = null;
        try {
            LogUtils.w("M3U8VideoDownloadTask", "downloadFile:" + str);
            HttpURLConnection httpURLConnectionC = st4.c(str, this.c, frb.d().e());
            try {
                int responseCode = httpURLConnectionC.getResponseCode();
                if (responseCode == 200 || responseCode == 206) {
                    inputStream = httpURLConnectionC.getInputStream();
                    s(inputStream, file, httpURLConnectionC.getContentLength(), zv5Var, str);
                    if (this.f.getQueue().size() < 10) {
                        r();
                    }
                } else {
                    zv5Var.y(zv5Var.l() + 1);
                    if (zv5Var.l() >= 10) {
                        throw new VideoDownloadException("http response code is " + responseCode);
                    }
                    j(zv5Var, file, str);
                    r();
                }
                st4.b(httpURLConnectionC);
                frb.b(inputStream);
            } catch (Exception e) {
                e = e;
                httpURLConnection = httpURLConnectionC;
                try {
                    zv5Var.y(zv5Var.l() + 1);
                    if (zv5Var.l() >= 10) {
                        throw e;
                    }
                    j(zv5Var, file, str);
                    r();
                    st4.b(httpURLConnection);
                    frb.b(0);
                } catch (Throwable th) {
                    th = th;
                    st4.b(httpURLConnection);
                    frb.b(closeable);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
                httpURLConnection = httpURLConnectionC;
                st4.b(httpURLConnection);
                frb.b(closeable);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
        }
    }

    public final void k() {
        try {
            i();
        } catch (Exception e) {
            o(e);
        }
        synchronized (this.i) {
            try {
                if (!this.h) {
                    this.g.f(100.0f, this.k, this.u, this.v, this.m);
                    this.n = 100.0f;
                    long j = this.k;
                    this.w = j;
                    this.g.a(j);
                    this.h = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l(zv5 zv5Var) throws Throwable {
        if (zv5Var.p()) {
            File file = new File(this.x, zv5Var.f());
            if (!file.exists()) {
                j(zv5Var, file, zv5Var.g());
            }
        }
        File file2 = new File(this.x, zv5Var.e());
        if (!file2.exists()) {
            j(zv5Var, file2, zv5Var.n());
        }
        if (file2.exists() && file2.length() == zv5Var.b()) {
            zv5Var.x(zv5Var.e());
            zv5Var.z(file2.length());
        }
    }

    public final void m() {
        int i = 0;
        for (zv5 zv5Var : this.t) {
            File file = new File(this.x, zv5Var.e());
            if (!file.exists() || file.length() <= 0) {
                break;
            }
            zv5Var.z(file.length());
            i++;
        }
        this.u = i;
        this.k = 0L;
        if (this.u == this.v) {
            this.a.setIsCompleted(true);
        }
    }

    public final void n(zv5 zv5Var) throws Throwable {
        try {
            if (!this.a.isPaused()) {
                l(zv5Var);
                return;
            }
            VideoDownloadManager.E().y(this.a);
            ThreadPoolExecutor threadPoolExecutor = this.f;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.purge();
            }
            c();
        } catch (Exception e) {
            eq5.d("M3U8VideoDownloadTask", "M3U8TsDownloadThread download failed, exception=" + e);
            o(e);
        }
    }

    public final void o(Exception exc) {
        a(exc);
    }

    public final void p() {
        r();
        q(this.w);
    }

    public final void q(long j) {
        if (this.a.isCompleted()) {
            k();
        }
    }

    public final void r() {
        g();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0082 A[Catch: all -> 0x006c, TRY_LEAVE, TryCatch #4 {all -> 0x006c, blocks: (B:29:0x0059, B:33:0x0063, B:42:0x007d, B:40:0x0075, B:43:0x0082, B:46:0x008c, B:48:0x0096, B:52:0x00a6, B:54:0x00ae, B:56:0x00b8, B:58:0x00be, B:59:0x00c1, B:61:0x00d2, B:62:0x00d8, B:63:0x00fb, B:64:0x00fc, B:67:0x0106, B:69:0x012f, B:70:0x0132), top: B:73:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x012f A[Catch: all -> 0x006c, TryCatch #4 {all -> 0x006c, blocks: (B:29:0x0059, B:33:0x0063, B:42:0x007d, B:40:0x0075, B:43:0x0082, B:46:0x008c, B:48:0x0096, B:52:0x00a6, B:54:0x00ae, B:56:0x00b8, B:58:0x00be, B:59:0x00c1, B:61:0x00d2, B:62:0x00d8, B:63:0x00fb, B:64:0x00fc, B:67:0x0106, B:69:0x012f, B:70:0x0132), top: B:73:0x0059 }] */
    public final void s(InputStream inputStream, File file, long j, zv5 zv5Var, String str) throws Throwable {
        long j2;
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[8192];
                j2 = 0;
                while (true) {
                    try {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        j2 += (long) i;
                        fileOutputStream2.write(bArr, 0, i);
                        h(true);
                    } catch (IOException e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        try {
                            if (file.exists()) {
                                if (j <= 0 || j != file.length()) {
                                    if (j != -1 || j2 != file.length()) {
                                        if (e instanceof ProtocolException) {
                                        }
                                        eq5.d("M3U8VideoDownloadTask", file.getAbsolutePath() + ", length=" + file.length() + ", saveFile failed, exception=" + e);
                                        if (file.exists()) {
                                            file.delete();
                                        }
                                        throw e;
                                    }
                                }
                                zv5Var.t(j2);
                            } else {
                                if ((e instanceof ProtocolException) || TextUtils.isEmpty(e.getMessage()) || !e.getMessage().contains("unexpected end of stream") || j <= j2 || j2 != file.length()) {
                                    eq5.d("M3U8VideoDownloadTask", file.getAbsolutePath() + ", length=" + file.length() + ", saveFile failed, exception=" + e);
                                    if (file.exists()) {
                                        file.delete();
                                    }
                                    throw e;
                                }
                                if (file.length() == 0) {
                                    if (file.exists()) {
                                        file.delete();
                                    }
                                    zv5Var.y(zv5Var.l() + 1);
                                    if (zv5Var.l() >= 10) {
                                        eq5.d("M3U8VideoDownloadTask", file.getAbsolutePath() + ", length=" + file.length() + ", saveFile failed, exception=" + e);
                                        throw e;
                                    }
                                    j(zv5Var, file, str);
                                } else {
                                    zv5Var.t(j2);
                                }
                            }
                            frb.b(inputStream);
                            frb.b(fileOutputStream);
                            return;
                        } catch (Throwable th) {
                            th = th;
                            frb.b(inputStream);
                            frb.b(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        frb.b(inputStream);
                        frb.b(fileOutputStream);
                        throw th;
                    }
                }
                if (j <= 0 || j != j2) {
                    zv5Var.t(j2);
                } else {
                    zv5Var.t(j);
                }
                frb.b(inputStream);
                frb.b(fileOutputStream2);
            } catch (IOException e2) {
                e = e2;
                j2 = 0;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e3) {
            e = e3;
            j2 = 0;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void t(int i) {
        this.h = false;
        if (this.a.isCompleted()) {
            eq5.c("M3U8VideoDownloadTask", "M3U8VideoDownloadTask local file.");
            p();
            return;
        }
        this.u = i;
        eq5.c("M3U8VideoDownloadTask", "startDownload curDownloadTs = " + i);
        int i2 = erb.p;
        this.f = new ThreadPoolExecutor(i2, i2, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardOldestPolicy());
        this.y = System.currentTimeMillis();
        while (i < this.v) {
            final zv5 zv5Var = (zv5) this.t.get(i);
            this.f.execute(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.b.n(zv5Var);
                }
            });
            i++;
        }
        q(this.k);
    }

    public final void u() {
        int i = 0;
        for (zv5 zv5Var : this.t) {
            File file = new File(this.x, zv5Var.e());
            if (file.exists() && file.length() > 0) {
                zv5Var.z(file.length());
                i++;
            }
        }
        this.u = i;
        this.k = 0L;
    }
}
