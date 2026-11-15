package com.mbridge.msdk.tracker;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

class s {

    private final c f37879a;

    private final int f37880b;

    private final int f37881c;

    private final int f37882d;

    private final k f37883e;

    private Handler f37887i;

    private final AtomicInteger f37884f = new AtomicInteger(0);

    private final AtomicInteger f37885g = new AtomicInteger(0);

    private final Object f37886h = new Object();

    private boolean f37888j = true;

    private long f37889k = 0;

    private volatile boolean f37890l = false;

    private volatile boolean f37891m = false;

    private static final class b extends Handler {

        private final s f37894a;

        public b(Looper looper, s sVar) {
            super(looper);
            this.f37894a = sVar;
        }

        private void a(String str) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f37894a.f37883e.v());
            sb2.append(" ");
            sb2.append(str);
            sb2.append(this.f37894a.f37885g.addAndGet(0));
            sb2.append(" 数据库记录数：");
            sb2.append(this.f37894a.f37879a.b());
        }

        private void b() {
            try {
                removeMessages(1);
                removeMessages(6);
                removeMessages(2);
                removeMessages(3);
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    Log.e("TrackManager", this.f37894a.f37883e.v() + " removeMessages failed ", e10);
                }
            }
            if (this.f37894a.g()) {
                return;
            }
            try {
                sendMessageDelayed(Message.obtain(this, 1), y.a(this.f37894a.f37884f.get(), this.f37894a.f37889k, this.f37894a.f37881c));
            } catch (Exception e11) {
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    Log.e("TrackManager", this.f37894a.f37883e.v() + " sendMessageDelayed failed ", e11);
                }
            }
        }

        @Override
        public void dispatchMessage(Message message) {
            super.dispatchMessage(message);
            int i10 = message.what;
            if (i10 == 2 || i10 == 3) {
                b();
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    a("触发上报（report result）当前 Event 数量：");
                }
                a();
                return;
            }
            if (i10 == 5) {
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    a("触发删除 当前 Event 数量：");
                }
                this.f37894a.a();
                sendMessageDelayed(Message.obtain(this, 5), TmcConstants.DEBUG_REQUEST_TIME_INTERVAL);
                return;
            }
            if (i10 != 6) {
                if (i10 != 7) {
                    b();
                    if (com.mbridge.msdk.tracker.a.f37664a) {
                        a("触发上报（timer）当前 Event 数量：");
                    }
                    a();
                    return;
                }
                this.f37894a.k();
                b();
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    a("触发上报（flush）当前 Event 数量：");
                }
                a();
                return;
            }
            Object obj = message.obj;
            e eVar = obj instanceof e ? (e) obj : null;
            if (com.mbridge.msdk.tracker.a.f37664a && !y.b(eVar)) {
                a(String.format("收到 Event( %s )，当前 Event 数量：", eVar.b()));
            }
            if (y.a(eVar) || this.f37894a.f()) {
                b();
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    a("触发上报（notice check）当前 Event 数量：");
                }
                a();
            }
        }

        private synchronized void a() {
            try {
                this.f37894a.h();
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    Log.e("TrackManager", this.f37894a.f37883e.v() + " report failed ", e10);
                }
            }
        }
    }

    public s(k kVar) {
        this.f37879a = kVar.d();
        this.f37880b = kVar.i();
        this.f37881c = kVar.l();
        this.f37882d = kVar.j();
        this.f37883e = kVar;
    }

    private void l() {
        this.f37879a.c();
    }

    public void k() {
        synchronized (this.f37886h) {
            try {
                if (!this.f37890l) {
                    this.f37890l = true;
                    l();
                }
                if (!this.f37891m) {
                    this.f37891m = true;
                    this.f37885g.addAndGet(this.f37879a.b());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private List<i> c() {
        return this.f37879a.a(this.f37880b);
    }

    public int d() {
        return this.f37884f.getAndIncrement();
    }

    public void h() {
        List<i> listC = c();
        if (y.b((List<?>) listC)) {
            if (com.mbridge.msdk.tracker.a.f37664a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f37883e.v());
                sb2.append(" report: 没有可以上报的数据");
                return;
            }
            return;
        }
        a(listC);
        int size = listC.size();
        this.f37885g.addAndGet(-size);
        boolean zA = false;
        if (com.mbridge.msdk.tracker.a.f37664a) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.f37883e.v());
            sb3.append(" report: 上报的数量 = ");
            sb3.append(size);
            sb3.append(" 当前剩余事件数 = ");
            sb3.append(this.f37885g.addAndGet(0));
            sb3.append(" 数据库中剩余事件数 = ");
            sb3.append(this.f37879a.b());
        }
        try {
            zA = this.f37883e.a();
        } catch (IllegalStateException e10) {
            if (com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", this.f37883e.v() + " report environment check failed ", e10);
            }
        }
        if (!zA) {
            if (com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", this.f37883e.v() + " report 失败，请检查 TrackConfig 配置是否正确");
                return;
            }
            return;
        }
        o oVarM = this.f37883e.m();
        oVarM.a(new a(this.f37887i, this));
        Map<String, String> map = new HashMap<>();
        try {
            map = this.f37883e.f().a(this.f37883e.u(), listC, this.f37883e.o());
        } catch (Exception e11) {
            if (com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", this.f37883e.v() + " report decorate request params failed ", e11);
            }
        }
        oVarM.b(new t(listC), map, y.a(listC));
    }

    public void i() {
        this.f37884f.set(0);
    }

    public void b() {
        this.f37887i.removeMessages(1);
        Handler handler = this.f37887i;
        handler.sendMessage(Message.obtain(handler, 7));
    }

    public void e() {
        this.f37885g.incrementAndGet();
    }

    protected boolean f() {
        return this.f37885g.addAndGet(0) >= this.f37880b;
    }

    boolean g() {
        return this.f37888j;
    }

    public void j() {
        HandlerThread handlerThread = new HandlerThread("report_timer");
        handlerThread.start();
        b bVar = new b(handlerThread.getLooper(), this);
        this.f37887i = bVar;
        bVar.sendMessageDelayed(Message.obtain(bVar, 5), 5000L);
        Handler handler = this.f37887i;
        handler.sendMessageDelayed(Message.obtain(handler, 1), this.f37881c);
        this.f37888j = false;
    }

    public void b(List<i> list) {
        if (y.b((List<?>) list)) {
            return;
        }
        this.f37879a.c(list);
    }

    public void a(e eVar) {
        if (this.f37887i.hasMessages(6)) {
            return;
        }
        long jA = y.a(this.f37884f.get(), this.f37889k, this.f37881c);
        if (jA > this.f37881c) {
            Handler handler = this.f37887i;
            handler.sendMessageDelayed(Message.obtain(handler, 6, eVar), (long) (jA * 0.1f));
        } else {
            Handler handler2 = this.f37887i;
            handler2.sendMessage(Message.obtain(handler2, 6, eVar));
        }
    }

    private static final class a implements r {

        private final Handler f37892a;

        private final s f37893b;

        public a(Handler handler, s sVar) {
            this.f37892a = handler;
            this.f37893b = sVar;
        }

        @Override
        public void a(t tVar) {
            this.f37893b.b(tVar.a());
            this.f37893b.i();
            this.f37893b.f37889k = 0L;
            if (this.f37893b.f()) {
                Handler handler = this.f37892a;
                handler.sendMessage(Message.obtain(handler, 2));
            }
            if (com.mbridge.msdk.tracker.a.f37664a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f37893b.f37883e.v());
                sb2.append(" report success ");
                sb2.append(tVar.a().size());
                sb2.append(" 剩余事件数：");
                sb2.append(this.f37893b.f37885g.addAndGet(0));
                sb2.append(" 个，数据库记录数：");
                sb2.append(this.f37893b.f37879a.b());
                sb2.append(" 个");
            }
        }

        @Override
        public void a(t tVar, int i10, String str) {
            this.f37893b.a(tVar.a(), str);
            this.f37893b.f37889k = System.currentTimeMillis();
            int iD = this.f37893b.d();
            if (iD <= 10) {
                this.f37892a.removeMessages(3);
                Handler handler = this.f37892a;
                handler.sendMessageDelayed(Message.obtain(handler, 3), ((long) iD) * 1000);
            }
            if (com.mbridge.msdk.tracker.a.f37664a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f37893b.f37883e.v());
                sb2.append(" report failed ");
                sb2.append(tVar.a().size());
                sb2.append(" 剩余事件数：");
                sb2.append(this.f37893b.f37885g.addAndGet(0));
                sb2.append(" 个，数据库记录数：");
                sb2.append(this.f37893b.f37879a.b());
                sb2.append(" 个 连续失败次数： ");
                sb2.append(iD);
            }
        }
    }

    private void a(List<i> list) {
        this.f37879a.b(list);
    }

    public void a() {
        if (com.mbridge.msdk.tracker.a.f37664a) {
            return;
        }
        int iA = this.f37879a.a();
        if (com.mbridge.msdk.tracker.a.f37664a) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f37883e.v());
            sb2.append(" 删除无效数据的数量 = ");
            sb2.append(iA);
            sb2.append(" 当前剩余事件数 = ");
            sb2.append(this.f37885g.addAndGet(0));
            sb2.append(" 数据库中剩余事件数 = ");
            sb2.append(this.f37879a.b());
        }
    }

    public void a(List<i> list, String str) {
        if (y.b((List<?>) list)) {
            return;
        }
        int i10 = 0;
        for (i iVar : list) {
            if (!y.b(iVar)) {
                boolean z10 = !iVar.g() && iVar.c() >= this.f37882d;
                boolean z11 = !iVar.h() && iVar.b() < System.currentTimeMillis();
                if (!z10 && !z11) {
                    iVar.a(iVar.c() + 1);
                    iVar.b(3);
                    iVar.a(str);
                    i10++;
                } else {
                    iVar.b(-1);
                }
            }
        }
        this.f37879a.a(list);
        this.f37885g.addAndGet(i10);
    }
}
