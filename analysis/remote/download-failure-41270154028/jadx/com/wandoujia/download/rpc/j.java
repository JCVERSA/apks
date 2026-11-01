package com.wandoujia.download.rpc;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.download.listener.NetworkStatusStub;
import com.wandoujia.mtdownload.Dispatcher;
import com.wandoujia.mtdownload.impl.StopRequestException;
import java.util.Map;
import o.cn3;
import o.kb0;
import o.pb4;
import o.q55;
import o.xu;
import o.yu;

public class j extends xu implements IBlockDownloadTask, Dispatcher.e, Dispatcher.d {
    public static HandlerThread r;
    public static Handler s;
    public static final pb4 t = new c();
    public final Context b;
    public final yu c;
    public final NetworkStatusStub d;
    public Dispatcher e;
    public g f;
    public cn3 g;
    public long h;
    public Map i;
    public long j;
    public com.wandoujia.mtdownload.c k;
    public StopRequestException m;

    public long f499o;
    public long p;
    public boolean q;
    public IBlockDownloadTask.BlockStatus l = IBlockDownloadTask.BlockStatus.PENDING;
    public boolean n = true;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            j.B(j.this, SystemClock.uptimeMillis());
            j jVar = j.this;
            j.A(jVar, new Dispatcher(j.r(jVar), j.w(j.this).b, j.w(j.this).c, j.v(j.this), j.x(j.this)));
            j.s(j.this).A(j.C());
            j.s(j.this).z(j.u(j.this));
            j.s(j.this).C(j.this);
            j.s(j.this).B(j.this);
            j.s(j.this).D(j.y(j.this), j.t(j.this));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            j.s(j.this).J(false);
            j.z(j.this, null);
            j.A(j.this, null);
        }
    }

    public class c implements pb4 {
        @Override
        public void a(String str) {
        }
    }

    public j(Context context, NetworkStatusStub networkStatusStub, yu yuVar, long j, boolean z) {
        this.b = context;
        this.d = networkStatusStub;
        this.c = yuVar;
        this.p = j;
        this.q = z;
        synchronized (j.class) {
            try {
                if (r == null) {
                    HandlerThread handlerThread = new HandlerThread("mtdownload-dispatcher");
                    r = handlerThread;
                    handlerThread.start();
                    s = new Handler(r.getLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void A(j jVar, Dispatcher dispatcher) {
        jVar.e = dispatcher;
    }

    public static void B(j jVar, long j) {
        jVar.f499o = j;
    }

    public static pb4 C() {
        return t;
    }

    public static Context r(j jVar) {
        return jVar.b;
    }

    public static Dispatcher s(j jVar) {
        return jVar.e;
    }

    public static com.wandoujia.mtdownload.c t(j jVar) {
        return jVar.k;
    }

    public static Map u(j jVar) {
        return jVar.i;
    }

    public static long v(j jVar) {
        return jVar.p;
    }

    public static g w(j jVar) {
        return jVar.f;
    }

    public static boolean x(j jVar) {
        return jVar.q;
    }

    public static long y(j jVar) {
        return jVar.j;
    }

    public static void z(j jVar, cn3 cn3Var) {
        jVar.g = cn3Var;
    }

    public final IBlockDownloadTask.BlockStatus D(StopRequestException stopRequestException) {
        int finalStatus = stopRequestException.getFinalStatus();
        if (finalStatus == 495 || finalStatus == 498) {
            if (this.d.a() == NetworkStatusStub.NetworkStatus.NETWORK_NO_CONNECTION) {
                return IBlockDownloadTask.BlockStatus.QUEUED_FOR_WIFI_OR_USB;
            }
            return !q55.z(this.b) ? IBlockDownloadTask.BlockStatus.INTERNET_NO_ACCESS : IBlockDownloadTask.BlockStatus.CONNECTION_TIMEOUT;
        }
        if (finalStatus == 492) {
            return IBlockDownloadTask.BlockStatus.FILE_ERROR;
        }
        if (finalStatus == 198) {
            return IBlockDownloadTask.BlockStatus.INSUFFICIENT_STORAGE;
        }
        return (finalStatus < 600 || finalStatus > 699) ? IBlockDownloadTask.BlockStatus.HTTP_ERROR : IBlockDownloadTask.BlockStatus.UMP_ERROR;
    }

    public void E(long j, com.wandoujia.mtdownload.c cVar) {
        this.j = j;
        this.k = new com.wandoujia.mtdownload.c(cVar);
    }

    public final void F(IBlockDownloadTask.BlockStatus blockStatus) {
        this.l = blockStatus;
        this.g.a(this, this.f.f, blockStatus);
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.g.b(this.f.f, jUptimeMillis - this.f499o);
        this.f499o = jUptimeMillis;
    }

    public final void G() {
        if (this.l == IBlockDownloadTask.BlockStatus.PENDING) {
            F(IBlockDownloadTask.BlockStatus.RUNNING);
        }
    }

    @Override
    public void a(Dispatcher dispatcher, StopRequestException stopRequestException) {
        this.m = stopRequestException;
        ProductionEnv.w("MultiThreadBlockDownloa", stopRequestException);
        F(D(stopRequestException));
        kb0.a(this.f, stopRequestException);
    }

    @Override
    public void b(Dispatcher dispatcher, int i) {
        G();
        this.g.h(i);
    }

    @Override
    public int c() {
        StopRequestException stopRequestException = this.m;
        if (stopRequestException != null) {
            return stopRequestException.getFinalStatus();
        }
        return 491;
    }

    @Override
    public void d(g gVar, cn3 cn3Var) {
        this.f = gVar;
        this.g = cn3Var;
        F(IBlockDownloadTask.BlockStatus.PENDING);
        this.c.g(this);
    }

    @Override
    public void e(Dispatcher dispatcher) {
        G();
        this.g.e();
    }

    @Override
    public void f(Map map) {
        this.i = map;
    }

    @Override
    public void g(Dispatcher dispatcher) {
        F(IBlockDownloadTask.BlockStatus.SUCCESS);
    }

    @Override
    public IBlockDownloadTask.BlockStatus getStatus() {
        return this.l;
    }

    @Override
    public void h(Dispatcher dispatcher, long j) {
        G();
        this.g.g(this.f.f, j);
    }

    @Override
    public void j(Dispatcher dispatcher) {
        o();
    }

    @Override
    public void k(Dispatcher dispatcher) {
        G();
        this.g.d();
    }

    @Override
    public int l() {
        return this.f.f;
    }

    @Override
    public void m(Dispatcher dispatcher, com.wandoujia.mtdownload.c cVar) {
        if (this.n) {
            this.n = false;
            F(IBlockDownloadTask.BlockStatus.RUNNING);
        }
        long jD = cVar.d();
        this.g.c(this.f.f, jD, null, (int) (jD - this.h), cVar, 0L);
        this.h = jD;
    }

    @Override
    public void n() {
        s.post(new b());
    }

    @Override
    public void q() {
        s.post(new a());
    }

    @Override
    public void stop() {
        this.c.f(this);
    }
}
