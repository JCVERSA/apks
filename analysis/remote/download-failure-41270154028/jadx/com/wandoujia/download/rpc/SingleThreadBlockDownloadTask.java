package com.wandoujia.download.rpc;

import android.content.Context;
import android.os.PowerManager;
import android.text.TextUtils;
import com.google.firebase.perf.network.FirebasePerfHttpClient;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.snaptube.util.ProductionEnv;
import com.snaptube.video.videoextractor.net.HttpHeader;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.wandoujia.download.listener.NetworkStatusStub;
import com.wandoujia.download.utils.CrcCalculator;
import com.wandoujia.download.utils.StorageUtil;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import o.au1;
import o.ba6;
import o.ch;
import o.cn3;
import o.ek2;
import o.it1;
import o.kb0;
import o.oj8;
import o.q55;
import o.se6;
import o.xf7;
import o.yf7;
import o.yj2;
import o.zf7;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.params.ConnRouteParams;

public class SingleThreadBlockDownloadTask implements IBlockDownloadTask {
    public final Context a;
    public final g b;
    public final NetworkStatusStub c;
    public cn3 d;
    public final Executor e;
    public final Runnable f = new b(this, null);
    public final c g;
    public long h;
    public final String i;
    public CrcCalculator j;
    public Map k;

    public enum NetworkType {
        NETWORK_OK,
        NETWORK_NO_CONNECTION,
        NETWORK_WAIT_WIFI_OR_USB
    }

    public static class RetryDownloadException extends Exception {
        private RetryDownloadException(String str) {
            super(str);
        }

        private RetryDownloadException(String str, Throwable th) {
            super(str, th);
        }

        public RetryDownloadException(String str, Throwable th, yf7 yf7Var) {
            this(str, th);
        }

        public RetryDownloadException(String str, yf7 yf7Var) {
            this(str);
        }

        private RetryDownloadException(Throwable th) {
            super(th);
        }
    }

    public static final class StopDownloadException extends Exception {
        private final IBlockDownloadTask.BlockStatus blockStatus;

        private StopDownloadException(IBlockDownloadTask.BlockStatus blockStatus, String str) {
            this(blockStatus, str, (Throwable) null);
        }

        private StopDownloadException(IBlockDownloadTask.BlockStatus blockStatus, String str, Throwable th) {
            super(str, th);
            this.blockStatus = blockStatus;
        }

        public StopDownloadException(IBlockDownloadTask.BlockStatus blockStatus, String str, Throwable th, zf7 zf7Var) {
            this(blockStatus, str, th);
        }

        public StopDownloadException(IBlockDownloadTask.BlockStatus blockStatus, String str, zf7 zf7Var) {
            this(blockStatus, str);
        }

        private StopDownloadException(String str) {
            this((IBlockDownloadTask.BlockStatus) null, str);
        }

        public StopDownloadException(String str, zf7 zf7Var) {
            this(str);
        }

        public static IBlockDownloadTask.BlockStatus a(StopDownloadException stopDownloadException) {
            return stopDownloadException.blockStatus;
        }
    }

    public static class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[NetworkStatusStub.NetworkStatus.values().length];
            b = iArr;
            try {
                iArr[NetworkStatusStub.NetworkStatus.NETWORK_USB_CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[NetworkStatusStub.NetworkStatus.NETWORK_WIFI_CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[NetworkStatusStub.NetworkStatus.NETWORK_MOBILE_CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[NetworkStatusStub.NetworkStatus.NETWORK_NO_CONNECTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[NetworkType.values().length];
            a = iArr2;
            try {
                iArr2[NetworkType.NETWORK_NO_CONNECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[NetworkType.NETWORK_WAIT_WIFI_OR_USB.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[NetworkType.NETWORK_OK.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public final class b implements Runnable {
        public Thread a;

        public b() {
        }

        public b(SingleThreadBlockDownloadTask singleThreadBlockDownloadTask, xf7 xf7Var) {
            this();
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [android.os.PowerManager$WakeLock, long] */
        @Override
        public void run() {
            PowerManager.WakeLock wakeLockNewWakeLock;
            IBlockDownloadTask.BlockStatus blockStatus;
            this.a = Thread.currentThread();
            c cVarE = SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this);
            ?? CurrentTimeMillis = System.currentTimeMillis();
            cVarE.m = CurrentTimeMillis;
            try {
                try {
                    synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).w) {
                        SingleThreadBlockDownloadTask.i(SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this));
                        SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).x = Thread.currentThread();
                    }
                    wakeLockNewWakeLock = ((PowerManager) SingleThreadBlockDownloadTask.a(SingleThreadBlockDownloadTask.this).getSystemService("power")).newWakeLock(1, "DOWNLOAD LIBRARY");
                    try {
                        wakeLockNewWakeLock.acquire();
                        synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).u) {
                            SingleThreadBlockDownloadTask.i(SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this));
                            SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v = ch.f(SingleThreadBlockDownloadTask.j(SingleThreadBlockDownloadTask.b(SingleThreadBlockDownloadTask.this)), SingleThreadBlockDownloadTask.a(SingleThreadBlockDownloadTask.this));
                        }
                        ConnRouteParams.setDefaultProxy(SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v.getParams(), ba6.e(SingleThreadBlockDownloadTask.a(SingleThreadBlockDownloadTask.this), SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).i));
                        while (true) {
                            try {
                                SingleThreadBlockDownloadTask singleThreadBlockDownloadTask = SingleThreadBlockDownloadTask.this;
                                SingleThreadBlockDownloadTask.g(singleThreadBlockDownloadTask, SingleThreadBlockDownloadTask.e(singleThreadBlockDownloadTask), SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v);
                                break;
                            } catch (RetryDownloadException e) {
                                e.printStackTrace();
                            }
                        }
                        blockStatus = IBlockDownloadTask.BlockStatus.SUCCESS;
                        try {
                            wakeLockNewWakeLock.release();
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).u) {
                            try {
                                if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v != null) {
                                    SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v.e();
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).s) {
                            try {
                                if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t != null) {
                                    SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t.a();
                                }
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                    } catch (StopDownloadException e2) {
                        e = e2;
                        IBlockDownloadTask.BlockStatus blockStatusA = StopDownloadException.a(e);
                        kb0.a(SingleThreadBlockDownloadTask.b(SingleThreadBlockDownloadTask.this), e);
                        if (wakeLockNewWakeLock != null) {
                            try {
                                wakeLockNewWakeLock.release();
                            } catch (Throwable th4) {
                                th4.printStackTrace();
                            }
                        }
                        synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).u) {
                            try {
                                if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v != null) {
                                    SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v.e();
                                }
                            } catch (Throwable th5) {
                                throw th5;
                            }
                        }
                        synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).s) {
                            try {
                                if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t != null) {
                                    SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t.a();
                                }
                            } catch (Throwable th6) {
                                throw th6;
                            }
                        }
                        this.a = null;
                        blockStatus = blockStatusA;
                        SingleThreadBlockDownloadTask singleThreadBlockDownloadTask2 = SingleThreadBlockDownloadTask.this;
                        SingleThreadBlockDownloadTask.h(singleThreadBlockDownloadTask2, blockStatus, SingleThreadBlockDownloadTask.e(singleThreadBlockDownloadTask2));
                    } catch (Throwable th7) {
                        th = th7;
                        th.printStackTrace();
                        kb0.a(SingleThreadBlockDownloadTask.b(SingleThreadBlockDownloadTask.this), th);
                        blockStatus = SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).f495o ? null : IBlockDownloadTask.BlockStatus.UNKNOWN_ERROR;
                        if (wakeLockNewWakeLock != null) {
                            try {
                                wakeLockNewWakeLock.release();
                            } catch (Throwable th8) {
                                th8.printStackTrace();
                            }
                        }
                        synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).u) {
                            try {
                                if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v != null) {
                                    SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v.e();
                                }
                            } catch (Throwable th9) {
                                throw th9;
                            }
                        }
                        synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).s) {
                            try {
                                if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t != null) {
                                    SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t.a();
                                }
                            } catch (Throwable th10) {
                                throw th10;
                            }
                        }
                    }
                } catch (Throwable th11) {
                    if (CurrentTimeMillis != 0) {
                        try {
                            CurrentTimeMillis.release();
                        } catch (Throwable th12) {
                            th12.printStackTrace();
                        }
                    }
                    synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).u) {
                        try {
                            if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v != null) {
                                SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).v.e();
                            }
                            synchronized (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).s) {
                                try {
                                    if (SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t != null) {
                                        SingleThreadBlockDownloadTask.e(SingleThreadBlockDownloadTask.this).t.a();
                                    }
                                    this.a = null;
                                    throw th11;
                                } catch (Throwable th13) {
                                    throw th13;
                                }
                            }
                        } catch (Throwable th14) {
                            throw th14;
                        }
                    }
                }
            } catch (StopDownloadException e3) {
                e = e3;
                wakeLockNewWakeLock = null;
            } catch (Throwable th15) {
                th = th15;
                wakeLockNewWakeLock = null;
            }
            this.a = null;
            SingleThreadBlockDownloadTask singleThreadBlockDownloadTask3 = SingleThreadBlockDownloadTask.this;
            SingleThreadBlockDownloadTask.h(singleThreadBlockDownloadTask3, blockStatus, SingleThreadBlockDownloadTask.e(singleThreadBlockDownloadTask3));
        }
    }

    public static final class c {
        public IBlockDownloadTask.BlockStatus a;
        public String b;
        public File c;
        public String d;
        public long e;
        public int f;
        public int g;
        public int h;
        public String i;
        public long j;
        public long k;
        public long l;
        public long m;
        public String n;

        public volatile boolean f495o;
        public int p;
        public long q;
        public String r;
        public ek2 t;
        public ch v;
        public Thread x;
        public byte[] s = new byte[0];
        public byte[] u = new byte[0];
        public byte[] w = new byte[0];

        public c(g gVar) {
            this.d = SingleThreadBlockDownloadTask.k(gVar.j);
            this.i = oj8.a(gVar.b);
            this.b = gVar.c;
            this.j = gVar.a;
            long j = gVar.h;
            if (j > 0) {
                this.k = (j - gVar.g) + 1;
            }
        }
    }

    public SingleThreadBlockDownloadTask(Context context, g gVar, NetworkStatusStub networkStatusStub, Executor executor) {
        this.a = context;
        this.c = networkStatusStub;
        this.e = executor;
        this.b = gVar;
        this.g = new c(gVar);
        List list = gVar.q;
        if (list != null && list.size() > 0) {
            this.j = new CrcCalculator(gVar.q, gVar.a + gVar.g, gVar.r);
        }
        this.i = String.valueOf(System.currentTimeMillis());
    }

    public static String E(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        int iIndexOf = lowerCase.indexOf(59);
        return iIndexOf > 0 ? lowerCase.substring(0, iIndexOf) : lowerCase;
    }

    public static Context a(SingleThreadBlockDownloadTask singleThreadBlockDownloadTask) {
        return singleThreadBlockDownloadTask.a;
    }

    public static g b(SingleThreadBlockDownloadTask singleThreadBlockDownloadTask) {
        return singleThreadBlockDownloadTask.b;
    }

    public static c e(SingleThreadBlockDownloadTask singleThreadBlockDownloadTask) {
        return singleThreadBlockDownloadTask.g;
    }

    public static void g(SingleThreadBlockDownloadTask singleThreadBlockDownloadTask, c cVar, ch chVar) throws StopDownloadException {
        singleThreadBlockDownloadTask.s(cVar, chVar);
    }

    public static void h(SingleThreadBlockDownloadTask singleThreadBlockDownloadTask, IBlockDownloadTask.BlockStatus blockStatus, c cVar) {
        singleThreadBlockDownloadTask.B(blockStatus, cVar);
    }

    public static void i(c cVar) throws StopDownloadException {
        q(cVar);
    }

    public static String j(g gVar) {
        return u(gVar);
    }

    public static String k(String str) {
        return E(str);
    }

    public static void n(CrcCalculator crcCalculator, byte[] bArr, int i) throws StopDownloadException {
        if (crcCalculator != null) {
            try {
                crcCalculator.a(bArr, i);
            } catch (CrcCalculator.CrcVerifiedException e) {
                e.printStackTrace();
                throw new StopDownloadException(IBlockDownloadTask.BlockStatus.CRC_VERIFY_ERROR, e.getMessage(), (zf7) null);
            }
        }
    }

    public static void o(c cVar) throws StopDownloadException {
        try {
            TimeUnit.MILLISECONDS.sleep(500L);
        } catch (InterruptedException e) {
            e.printStackTrace();
            q(cVar);
        }
        if (!StorageUtil.m()) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.QUEUED_FOR_MEDIA, "external media not mounted while writing destination file", (zf7) null);
        }
    }

    public static void p(c cVar) throws StopDownloadException {
        if (cVar.j - cVar.l > 409600) {
            if (cVar.c == null) {
                cVar.c = new File(cVar.b);
            }
            if (cVar.c.exists()) {
                cVar.l = cVar.j;
            } else {
                q(cVar);
                o(cVar);
                throw new StopDownloadException(IBlockDownloadTask.BlockStatus.FILE_NOT_FOUND, "download file has been deleted", (zf7) null);
            }
        }
    }

    public static void q(c cVar) throws StopDownloadException {
        if (cVar.f495o) {
            throw new StopDownloadException("state is needToStop, let's stop", (zf7) null);
        }
    }

    public static String u(g gVar) {
        String str;
        return (gVar == null || (str = gVar.i) == null) ? DownloadConstants.b : str;
    }

    public final void A(c cVar, HttpResponse httpResponse) throws StopDownloadException, RetryDownloadException {
        ProductionEnv.v(NativeAdPresenter.DOWNLOAD, "got HTTP response code 503");
        int i = cVar.h;
        cVar.h = i + 1;
        if (i >= 5) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.HTTP_ERROR, "http error " + httpResponse.getStatusLine().getStatusCode(), (zf7) null);
        }
        Header firstHeader = httpResponse.getFirstHeader("Retry-After");
        if (firstHeader != null) {
            ProductionEnv.v(NativeAdPresenter.DOWNLOAD, "Retry-After :" + firstHeader.getValue());
            try {
                cVar.e = ((long) Integer.parseInt(firstHeader.getValue())) * 1000;
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
            long j = cVar.e;
            if (j < 100) {
                cVar.e = 100L;
            } else if (j > AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS) {
                cVar.e = AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS;
            }
        } else {
            cVar.e = 1000L;
        }
        try {
            Thread.sleep(cVar.e);
        } catch (InterruptedException unused) {
            q(cVar);
        }
        throw new RetryDownloadException("we get '503' response code, which means the server is unavailavle, sleep then retry.", (yf7) null);
    }

    public final void B(IBlockDownloadTask.BlockStatus blockStatus, c cVar) {
        if (blockStatus == null || cVar.a == blockStatus || cVar.f495o) {
            return;
        }
        cVar.a = blockStatus;
        this.d.b(this.b.f, System.currentTimeMillis() - cVar.m);
        this.d.a(this, this.b.f, blockStatus);
    }

    public final void C(c cVar, HttpResponse httpResponse) {
        Header firstHeader = httpResponse.getFirstHeader("Content-Disposition");
        if (firstHeader != null) {
            cVar.n = firstHeader.getValue();
        }
        if (cVar.d == null) {
            Header firstHeader2 = httpResponse.getFirstHeader("Content-Type");
            if (firstHeader2 != null) {
                cVar.d = E(firstHeader2.getValue());
            }
            it1.b().d(this.b.l, cVar.d);
        }
        Header firstHeader3 = httpResponse.getFirstHeader(Command.HTTP_HEADER_ETAG);
        if (firstHeader3 != null && !TextUtils.isEmpty(firstHeader3.getValue())) {
            firstHeader3.getValue();
        }
        Header firstHeader4 = httpResponse.getFirstHeader("Content-Length");
        if (firstHeader4 != null && !TextUtils.isEmpty(firstHeader4.getValue())) {
            try {
                cVar.q = Long.parseLong(firstHeader4.getValue());
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        long j = cVar.q;
        if (j < 0 || cVar.k != 0) {
            return;
        }
        cVar.k = j;
        g gVar = this.b;
        if (gVar.p) {
            return;
        }
        this.d.g(gVar.f, j);
    }

    public final void D() {
        c cVar = this.g;
        cVar.f = 0;
        cVar.m = System.currentTimeMillis();
    }

    public final void F(c cVar, InputStream inputStream) throws StopDownloadException, RetryDownloadException {
        int i;
        byte[] bArr = new byte[4096];
        while (true) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                i = inputStream.read(bArr);
            } catch (IOException e) {
                e.printStackTrace();
                q(cVar);
                x(cVar, e);
                i = 0;
            }
            long j = cVar.k;
            if (j > 0) {
                if (i == -1) {
                    if (cVar.j >= j) {
                        return;
                    }
                    q(cVar);
                    throw new RetryDownloadException("the state bytesRead is smaller than excepted!", (yf7) null);
                }
                long j2 = i;
                long j3 = cVar.j;
                if (j2 + j3 > j) {
                    I(cVar, bArr, (int) (j - j3));
                    return;
                }
                I(cVar, bArr, i);
                long j4 = this.b.s;
                if (j4 > 0) {
                    long jCurrentTimeMillis2 = ((j2 * 1000) / j4) - (System.currentTimeMillis() - jCurrentTimeMillis);
                    if (jCurrentTimeMillis2 > 0) {
                        try {
                            Thread.sleep(jCurrentTimeMillis2);
                        } catch (InterruptedException unused) {
                            q(cVar);
                        }
                    }
                }
            } else {
                if (i == -1) {
                    return;
                }
                I(cVar, bArr, i);
                ProductionEnv.d("SingleDownload", "bytesRead:" + i);
                long j5 = this.b.s;
                if (j5 > 0) {
                    long jCurrentTimeMillis3 = ((((long) i) * 1000) / j5) - (System.currentTimeMillis() - jCurrentTimeMillis);
                    if (jCurrentTimeMillis3 > 0) {
                        try {
                            Thread.sleep(jCurrentTimeMillis3);
                        } catch (InterruptedException unused2) {
                            q(cVar);
                        }
                    }
                }
            }
        }
    }

    public final void G(byte[] bArr, int i, c cVar) {
        if (cVar.f495o) {
            return;
        }
        long j = cVar.j + ((long) i);
        cVar.j = j;
        this.d.c(this.b.f, j, bArr, i, null, 0L);
    }

    public final boolean H() {
        g gVar = this.b;
        return gVar.g + this.g.j > 0 || gVar.p;
    }

    public final void I(c cVar, byte[] bArr, int i) throws StopDownloadException {
        n(this.j, bArr, i);
        J(cVar, bArr, i);
        p(cVar);
        se6 se6VarA = au1.a();
        if (se6VarA != null) {
            se6VarA.a(i * 8);
        }
        G(bArr, i, cVar);
    }

    public final void J(c cVar, byte[] bArr, int i) throws StopDownloadException {
        if (TextUtils.isEmpty(cVar.b)) {
            try {
                g gVar = this.b;
                cVar.b = this.d.f(this.b.f, StorageUtil.a(gVar.e, cVar.i, gVar.d, cVar.n, gVar.n, cVar.k, null));
            } catch (StorageUtil.GenerateSaveFileException e) {
                q(cVar);
                throw new StopDownloadException(IBlockDownloadTask.BlockStatus.QUEUED_FOR_MEDIA, e.getMessage(), e, null);
            }
        }
        try {
            synchronized (cVar.s) {
                try {
                    q(cVar);
                    if (cVar.t == null) {
                        ek2 ek2Var = new ek2(cVar.b);
                        cVar.t = ek2Var;
                        ek2Var.c(this.h);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            cVar.t.d(bArr, 0, i);
        } catch (IOException e2) {
            ProductionEnv.logException("WriteDataException", e2);
            v(cVar, e2);
        }
    }

    @Override
    public int c() {
        return this.g.p;
    }

    @Override
    public void d(g gVar, cn3 cn3Var) {
        this.d = cn3Var;
        B(IBlockDownloadTask.BlockStatus.PENDING, this.g);
        this.e.execute(this.f);
    }

    @Override
    public void f(Map map) {
        this.k = map;
    }

    @Override
    public IBlockDownloadTask.BlockStatus getStatus() {
        return this.g.a;
    }

    @Override
    public int l() {
        return this.b.f;
    }

    public final void m() throws StopDownloadException {
        int i = a.a[t().ordinal()];
        if (i == 1 || i == 2) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.QUEUED_FOR_WIFI_OR_USB, "Download can not be executed caused by no wifi or ReverseProxy", (zf7) null);
        }
    }

    public final HttpGet r(c cVar) {
        HttpGet httpGet = new HttpGet(cVar.i);
        Map map = this.k;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Iterator it2 = ((List) entry.getValue()).iterator();
                while (it2.hasNext()) {
                    httpGet.addHeader((String) entry.getKey(), (String) it2.next());
                }
            }
        }
        if (H()) {
            g gVar = this.b;
            long j = gVar.g + cVar.j;
            this.h = j;
            long j2 = gVar.h;
            if (j > j2) {
                httpGet.addHeader(Command.HTTP_HEADER_RANGE, "bytes=" + j + "-");
            } else {
                httpGet.addHeader(Command.HTTP_HEADER_RANGE, "bytes=" + j + "-" + j2);
            }
            if (cVar.i.contains("wdjcdn.com")) {
                httpGet.addHeader(HttpHeader.KEY_REFERER, "http://android.wdjcdn.com/");
            }
            HeaderIterator headerIterator = httpGet.headerIterator();
            StringBuilder sb = new StringBuilder();
            while (headerIterator.hasNext()) {
                Header headerNextHeader = headerIterator.nextHeader();
                sb.append(headerNextHeader.getName());
                sb.append(":");
                sb.append(headerNextHeader.getValue());
                sb.append(";");
            }
            cVar.r = sb.toString();
        }
        return httpGet;
    }

    public final void s(c cVar, ch chVar) throws StopDownloadException {
        if (TextUtils.isEmpty(this.b.b)) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.URL_NULL_ERROR, "download url is null", (zf7) null);
        }
        D();
        HttpGet httpGetR = r(cVar);
        m();
        try {
            try {
                HttpResponse httpResponseExecute = FirebasePerfHttpClient.execute(chVar, httpGetR);
                w(cVar, httpResponseExecute);
                C(cVar, httpResponseExecute);
                InputStream content = httpResponseExecute.getEntity().getContent();
                B(IBlockDownloadTask.BlockStatus.RUNNING, cVar);
                F(cVar, content);
            } catch (IOException e) {
                e.printStackTrace();
                x(cVar, e);
            }
        } finally {
            httpGetR.abort();
        }
    }

    @Override
    public void stop() {
        if (this.g.f495o) {
            return;
        }
        this.g.f495o = true;
        synchronized (this.g.u) {
            try {
                ch chVar = this.g.v;
                if (chVar != null) {
                    chVar.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.g.s) {
            try {
                ek2 ek2Var = this.g.t;
                if (ek2Var != null) {
                    ek2Var.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.g.w) {
            try {
                Thread thread = this.g.x;
                if (thread != null) {
                    thread.interrupt();
                    this.g.x = null;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final NetworkType t() {
        int i = a.b[this.c.a().ordinal()];
        return (i == 1 || i == 2 || i == 3) ? NetworkType.NETWORK_OK : NetworkType.NETWORK_NO_CONNECTION;
    }

    public final void v(c cVar, IOException iOException) throws StopDownloadException {
        q(cVar);
        long jY = yj2.y(StorageUtil.i(cVar.b).getAbsolutePath());
        g gVar = this.b;
        if (jY < (gVar.h - (gVar.g + cVar.j)) + 1) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.INSUFFICIENT_STORAGE, "insufficient space while writing destination file", iOException, null);
        }
        o(cVar);
        throw new StopDownloadException(IBlockDownloadTask.BlockStatus.FILE_ERROR, iOException.getMessage(), iOException, null);
    }

    public final void w(c cVar, HttpResponse httpResponse) throws StopDownloadException, RetryDownloadException {
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        cVar.p = statusCode;
        if (statusCode == 200 && !this.b.p) {
            File file = cVar.c;
            if (file == null || !file.exists()) {
                return;
            }
            yj2.r(cVar.c);
            this.h = 0L;
            return;
        }
        if (statusCode == 206) {
            return;
        }
        if (statusCode >= 500) {
            A(cVar, httpResponse);
            return;
        }
        if (statusCode == 416) {
            z(cVar);
            return;
        }
        if (statusCode == 301 || statusCode == 302 || statusCode == 303 || statusCode == 307) {
            y(cVar, httpResponse);
            return;
        }
        throw new StopDownloadException(IBlockDownloadTask.BlockStatus.HTTP_ERROR, "http error " + cVar.p, (zf7) null);
    }

    public final void x(c cVar, IOException iOException) throws StopDownloadException, RetryDownloadException {
        q(cVar);
        int i = a.a[t().ordinal()];
        if (i == 1 || i == 2) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.QUEUED_FOR_WIFI_OR_USB, "WIFI is disconnected, can't getting data", iOException, null);
        }
        if ((iOException instanceof ConnectTimeoutException) || (iOException instanceof SocketTimeoutException)) {
            if (!q55.z(this.a)) {
                throw new StopDownloadException(IBlockDownloadTask.BlockStatus.INTERNET_NO_ACCESS, "no network access", iOException, null);
            }
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.CONNECTION_TIMEOUT, "unable to connect server.", iOException, null);
        }
        int i2 = cVar.h;
        if (i2 >= 5) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.EXCEED_MAX_RETRY_TIMES, "While getting data, IOException has been happens, and retried times has reached MAX_RETRIES", iOException, null);
        }
        int i3 = i2 + 1;
        cVar.h = i3;
        try {
            TimeUnit.MILLISECONDS.sleep(((long) (1 << i3)) * 500);
        } catch (InterruptedException unused) {
            q(cVar);
        }
        throw new RetryDownloadException("meet IO exception, we need retry", iOException, null);
    }

    public final void y(c cVar, HttpResponse httpResponse) throws StopDownloadException, RetryDownloadException {
        int i = cVar.f;
        cVar.f = i + 1;
        if (i >= 5) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.TOO_MANY_REDIRECTS, "too many redirects", (zf7) null);
        }
        Header firstHeader = httpResponse.getFirstHeader("Location");
        if (firstHeader == null || TextUtils.isEmpty(firstHeader.getValue())) {
            throw new StopDownloadException(IBlockDownloadTask.BlockStatus.RESOLVE_REDIRECT_URL_FAILED, "Redirect URI is null", (zf7) null);
        }
        String value = firstHeader.getValue();
        try {
            value = new URL(new URL(cVar.i), value).toString();
        } catch (Throwable unused) {
        }
        cVar.i = oj8.a(value);
        throw new RetryDownloadException("we get '" + httpResponse.getStatusLine().getStatusCode() + "' response code, which need to redirect to " + cVar.i, (yf7) null);
    }

    public final void z(c cVar) throws StopDownloadException, RetryDownloadException {
        int i = cVar.g;
        cVar.g = i + 1;
        if (i < 2) {
            cVar.j = 0L;
            throw new RetryDownloadException("we get '416' response code, which need to restart.", (yf7) null);
        }
        throw new StopDownloadException(IBlockDownloadTask.BlockStatus.HTTP_ERROR, "http error " + cVar.p, (zf7) null);
    }
}
