package androidx.media3.exoplayer.offline;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import androidx.media3.exoplayer.scheduler.Requirements;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

public final class DownloadManager {

    public static final Requirements f11997q = new Requirements(1);

    private final Context f11998a;

    private final t f11999b;

    private final Handler f12000c;

    private final c f12001d;

    private final e2.c.InterfaceC0716c f12002e;

    private int f12004g;

    private int f12005h;

    private boolean f12006i;

    private int f12010m;

    private boolean f12011n;

    private e2.c f12013p;

    private int f12008k = 3;

    private int f12009l = 5;

    private boolean f12007j = true;

    private List f12012o = Collections.emptyList();

    private final CopyOnWriteArraySet f12003f = new CopyOnWriteArraySet();

    private static class Task extends Thread implements o.a {
        private long contentLength;
        private final l downloadProgress;
        private final o downloader;

        @Nullable
        private Exception finalException;

        @Nullable
        private volatile c internalHandler;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private final DownloadRequest request;

        private static int getRetryDelayMillis(int i10) {
            return Math.min((i10 - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            if (z10) {
                this.internalHandler = null;
            }
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            this.downloader.cancel();
            interrupt();
        }

        @Override
        public void onProgress(long j10, long j11, float f10) {
            this.downloadProgress.f12112a = j11;
            this.downloadProgress.f12113b = f10;
            if (j10 != this.contentLength) {
                this.contentLength = j10;
                c cVar = this.internalHandler;
                if (cVar != null) {
                    cVar.obtainMessage(11, (int) (j10 >> 32), (int) j10, this).sendToTarget();
                }
            }
        }

        @Override
        public void run() {
            try {
                if (this.isRemove) {
                    this.downloader.remove();
                } else {
                    long j10 = -1;
                    int i10 = 0;
                    while (!this.isCanceled) {
                        try {
                            this.downloader.a(this);
                            break;
                        } catch (IOException e10) {
                            if (!this.isCanceled) {
                                long j11 = this.downloadProgress.f12112a;
                                if (j11 != j10) {
                                    i10 = 0;
                                    j10 = j11;
                                }
                                i10++;
                                if (i10 > this.minRetryCount) {
                                    throw e10;
                                }
                                Thread.sleep(getRetryDelayMillis(i10));
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e11) {
                this.finalException = e11;
            }
            c cVar = this.internalHandler;
            if (cVar != null) {
                cVar.obtainMessage(10, this).sendToTarget();
            }
        }

        private Task(DownloadRequest downloadRequest, o oVar, l lVar, boolean z10, int i10, c cVar) {
            this.request = downloadRequest;
            this.downloader = oVar;
            this.downloadProgress = lVar;
            this.isRemove = z10;
            this.minRetryCount = i10;
            this.internalHandler = cVar;
            this.contentLength = -1L;
        }
    }

    private static final class b {

        public final androidx.media3.exoplayer.offline.c f12014a;

        public final boolean f12015b;

        public final List f12016c;

        public final Exception f12017d;

        public b(androidx.media3.exoplayer.offline.c cVar, boolean z10, List list, Exception exc) {
            this.f12014a = cVar;
            this.f12015b = z10;
            this.f12016c = list;
            this.f12017d = exc;
        }
    }

    static final class c extends Handler {

        public boolean f12018a;

        private final HandlerThread f12019b;

        private final t f12020c;

        private final p f12021d;

        private final Handler f12022e;

        private final ArrayList f12023f;

        private final HashMap f12024g;

        private int f12025h;

        private boolean f12026i;

        private int f12027j;

        private int f12028k;

        private int f12029l;

        private boolean f12030m;

        public c(HandlerThread handlerThread, t tVar, p pVar, Handler handler, int i10, int i11, boolean z10) {
            super(handlerThread.getLooper());
            this.f12019b = handlerThread;
            this.f12020c = tVar;
            this.f12021d = pVar;
            this.f12022e = handler;
            this.f12027j = i10;
            this.f12028k = i11;
            this.f12026i = z10;
            this.f12023f = new ArrayList();
            this.f12024g = new HashMap();
        }

        private void A(Task task) {
            if (task != null) {
                androidx.media3.common.util.a.g(!task.isRemove);
                task.cancel(false);
            }
        }

        private void B() {
            int i10 = 0;
            for (int i11 = 0; i11 < this.f12023f.size(); i11++) {
                androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) this.f12023f.get(i11);
                Task taskY = (Task) this.f12024g.get(cVar.f12101a.f12031id);
                int i12 = cVar.f12102b;
                if (i12 == 0) {
                    taskY = y(taskY, cVar);
                } else if (i12 == 1) {
                    A(taskY);
                } else if (i12 == 2) {
                    androidx.media3.common.util.a.e(taskY);
                    x(taskY, cVar, i10);
                } else {
                    if (i12 != 5 && i12 != 7) {
                        throw new IllegalStateException();
                    }
                    z(taskY, cVar);
                }
                if (taskY != null && !taskY.isRemove) {
                    i10++;
                }
            }
        }

        private void C() {
            for (int i10 = 0; i10 < this.f12023f.size(); i10++) {
                androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) this.f12023f.get(i10);
                if (cVar.f12102b == 2) {
                    try {
                        this.f12020c.b(cVar);
                    } catch (IOException e10) {
                        u.d("DownloadManager", "Failed to update index.", e10);
                    }
                }
            }
            sendEmptyMessageDelayed(12, 5000L);
        }

        private void b(DownloadRequest downloadRequest, int i10) {
            androidx.media3.exoplayer.offline.c cVarF = f(downloadRequest.f12031id, true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (cVarF != null) {
                m(DownloadManager.n(cVarF, downloadRequest, i10, jCurrentTimeMillis));
            } else {
                m(new androidx.media3.exoplayer.offline.c(downloadRequest, i10 == 0 ? 0 : 1, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i10, 0));
            }
            B();
        }

        private boolean c() {
            return !this.f12026i && this.f12025h == 0;
        }

        public static int d(androidx.media3.exoplayer.offline.c cVar, androidx.media3.exoplayer.offline.c cVar2) {
            return a1.n(cVar.f12103c, cVar2.f12103c);
        }

        private static androidx.media3.exoplayer.offline.c e(androidx.media3.exoplayer.offline.c cVar, int i10, int i11) {
            return new androidx.media3.exoplayer.offline.c(cVar.f12101a, i10, cVar.f12103c, System.currentTimeMillis(), cVar.f12105e, i11, 0, cVar.f12108h);
        }

        private androidx.media3.exoplayer.offline.c f(String str, boolean z10) {
            int iG = g(str);
            if (iG != -1) {
                return (androidx.media3.exoplayer.offline.c) this.f12023f.get(iG);
            }
            if (!z10) {
                return null;
            }
            try {
                return this.f12020c.h(str);
            } catch (IOException e10) {
                u.d("DownloadManager", "Failed to load download: " + str, e10);
                return null;
            }
        }

        private int g(String str) {
            for (int i10 = 0; i10 < this.f12023f.size(); i10++) {
                if (((androidx.media3.exoplayer.offline.c) this.f12023f.get(i10)).f12101a.f12031id.equals(str)) {
                    return i10;
                }
            }
            return -1;
        }

        private void h(int i10) {
            this.f12025h = i10;
            e eVarE = null;
            try {
                try {
                    this.f12020c.g();
                    eVarE = this.f12020c.e(0, 1, 2, 5, 7);
                    while (eVarE.moveToNext()) {
                        this.f12023f.add(eVarE.N());
                    }
                } catch (IOException e10) {
                    u.d("DownloadManager", "Failed to load index.", e10);
                    this.f12023f.clear();
                }
                a1.m(eVarE);
                this.f12022e.obtainMessage(1, new ArrayList(this.f12023f)).sendToTarget();
                B();
            } catch (Throwable th2) {
                a1.m(eVarE);
                throw th2;
            }
        }

        private void i(Task task, long j10) {
            androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) androidx.media3.common.util.a.e(f(task.request.f12031id, false));
            if (j10 == cVar.f12105e || j10 == -1) {
                return;
            }
            m(new androidx.media3.exoplayer.offline.c(cVar.f12101a, cVar.f12102b, cVar.f12103c, System.currentTimeMillis(), j10, cVar.f12106f, cVar.f12107g, cVar.f12108h));
        }

        private void j(androidx.media3.exoplayer.offline.c cVar, Exception exc) {
            androidx.media3.exoplayer.offline.c cVar2 = new androidx.media3.exoplayer.offline.c(cVar.f12101a, exc == null ? 3 : 4, cVar.f12103c, System.currentTimeMillis(), cVar.f12105e, cVar.f12106f, exc == null ? 0 : 1, cVar.f12108h);
            this.f12023f.remove(g(cVar2.f12101a.f12031id));
            try {
                this.f12020c.b(cVar2);
            } catch (IOException e10) {
                u.d("DownloadManager", "Failed to update index.", e10);
            }
            this.f12022e.obtainMessage(3, new b(cVar2, false, new ArrayList(this.f12023f), exc)).sendToTarget();
        }

        private void k(androidx.media3.exoplayer.offline.c cVar) {
            if (cVar.f12102b == 7) {
                int i10 = cVar.f12106f;
                n(cVar, i10 == 0 ? 0 : 1, i10);
                B();
            } else {
                this.f12023f.remove(g(cVar.f12101a.f12031id));
                try {
                    this.f12020c.c(cVar.f12101a.f12031id);
                } catch (IOException unused) {
                    u.c("DownloadManager", "Failed to remove from database");
                }
                this.f12022e.obtainMessage(3, new b(cVar, true, new ArrayList(this.f12023f), null)).sendToTarget();
            }
        }

        private void l(Task task) {
            String str = task.request.f12031id;
            this.f12024g.remove(str);
            boolean z10 = task.isRemove;
            if (z10) {
                this.f12030m = false;
            } else {
                int i10 = this.f12029l - 1;
                this.f12029l = i10;
                if (i10 == 0) {
                    removeMessages(12);
                }
            }
            if (task.isCanceled) {
                B();
                return;
            }
            Exception exc = task.finalException;
            if (exc != null) {
                u.d("DownloadManager", "Task failed: " + task.request + ", " + z10, exc);
            }
            androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) androidx.media3.common.util.a.e(f(str, false));
            int i11 = cVar.f12102b;
            if (i11 == 2) {
                androidx.media3.common.util.a.g(!z10);
                j(cVar, exc);
            } else {
                if (i11 != 5 && i11 != 7) {
                    throw new IllegalStateException();
                }
                androidx.media3.common.util.a.g(z10);
                k(cVar);
            }
            B();
        }

        private androidx.media3.exoplayer.offline.c m(androidx.media3.exoplayer.offline.c cVar) {
            int i10 = cVar.f12102b;
            androidx.media3.common.util.a.g((i10 == 3 || i10 == 4) ? false : true);
            int iG = g(cVar.f12101a.f12031id);
            if (iG == -1) {
                this.f12023f.add(cVar);
                Collections.sort(this.f12023f, new i());
            } else {
                boolean z10 = cVar.f12103c != ((androidx.media3.exoplayer.offline.c) this.f12023f.get(iG)).f12103c;
                this.f12023f.set(iG, cVar);
                if (z10) {
                    Collections.sort(this.f12023f, new i());
                }
            }
            try {
                this.f12020c.b(cVar);
            } catch (IOException e10) {
                u.d("DownloadManager", "Failed to update index.", e10);
            }
            this.f12022e.obtainMessage(3, new b(cVar, false, new ArrayList(this.f12023f), null)).sendToTarget();
            return cVar;
        }

        private androidx.media3.exoplayer.offline.c n(androidx.media3.exoplayer.offline.c cVar, int i10, int i11) {
            androidx.media3.common.util.a.g((i10 == 3 || i10 == 4) ? false : true);
            return m(e(cVar, i10, i11));
        }

        private void o() {
            Iterator it = this.f12024g.values().iterator();
            while (it.hasNext()) {
                ((Task) it.next()).cancel(true);
            }
            try {
                this.f12020c.g();
            } catch (IOException e10) {
                u.d("DownloadManager", "Failed to update index.", e10);
            }
            this.f12023f.clear();
            this.f12019b.quit();
            synchronized (this) {
                this.f12018a = true;
                notifyAll();
            }
        }

        private void p() {
            ArrayList arrayList = new ArrayList();
            try {
                e eVarE = this.f12020c.e(3, 4);
                while (eVarE.moveToNext()) {
                    try {
                        arrayList.add(eVarE.N());
                    } catch (Throwable th2) {
                        if (eVarE != null) {
                            try {
                                eVarE.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
                eVarE.close();
            } catch (IOException unused) {
                u.c("DownloadManager", "Failed to load downloads.");
            }
            for (int i10 = 0; i10 < this.f12023f.size(); i10++) {
                ArrayList arrayList2 = this.f12023f;
                arrayList2.set(i10, e((androidx.media3.exoplayer.offline.c) arrayList2.get(i10), 5, 0));
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                this.f12023f.add(e((androidx.media3.exoplayer.offline.c) arrayList.get(i11), 5, 0));
            }
            Collections.sort(this.f12023f, new i());
            try {
                this.f12020c.f();
            } catch (IOException e10) {
                u.d("DownloadManager", "Failed to update index.", e10);
            }
            ArrayList arrayList3 = new ArrayList(this.f12023f);
            for (int i12 = 0; i12 < this.f12023f.size(); i12++) {
                this.f12022e.obtainMessage(3, new b((androidx.media3.exoplayer.offline.c) this.f12023f.get(i12), false, arrayList3, null)).sendToTarget();
            }
            B();
        }

        private void q(String str) {
            androidx.media3.exoplayer.offline.c cVarF = f(str, true);
            if (cVarF != null) {
                n(cVarF, 5, 0);
                B();
            } else {
                u.c("DownloadManager", "Failed to remove nonexistent download: " + str);
            }
        }

        private void r(boolean z10) {
            this.f12026i = z10;
            B();
        }

        private void s(int i10) {
            this.f12027j = i10;
            B();
        }

        private void t(int i10) {
            this.f12028k = i10;
        }

        private void u(int i10) {
            this.f12025h = i10;
            B();
        }

        private void v(androidx.media3.exoplayer.offline.c cVar, int i10) {
            if (i10 == 0) {
                if (cVar.f12102b == 1) {
                    n(cVar, 0, 0);
                }
            } else if (i10 != cVar.f12106f) {
                int i11 = cVar.f12102b;
                if (i11 == 0 || i11 == 2) {
                    i11 = 1;
                }
                m(new androidx.media3.exoplayer.offline.c(cVar.f12101a, i11, cVar.f12103c, System.currentTimeMillis(), cVar.f12105e, i10, 0, cVar.f12108h));
            }
        }

        private void w(String str, int i10) {
            if (str == null) {
                for (int i11 = 0; i11 < this.f12023f.size(); i11++) {
                    v((androidx.media3.exoplayer.offline.c) this.f12023f.get(i11), i10);
                }
                try {
                    this.f12020c.d(i10);
                } catch (IOException e10) {
                    u.d("DownloadManager", "Failed to set manual stop reason", e10);
                }
            } else {
                androidx.media3.exoplayer.offline.c cVarF = f(str, false);
                if (cVarF != null) {
                    v(cVarF, i10);
                } else {
                    try {
                        this.f12020c.a(str, i10);
                    } catch (IOException e11) {
                        u.d("DownloadManager", "Failed to set manual stop reason: " + str, e11);
                    }
                }
            }
            B();
        }

        private void x(Task task, androidx.media3.exoplayer.offline.c cVar, int i10) {
            androidx.media3.common.util.a.g(!task.isRemove);
            if (!c() || i10 >= this.f12027j) {
                n(cVar, 0, 0);
                task.cancel(false);
            }
        }

        private Task y(Task task, androidx.media3.exoplayer.offline.c cVar) {
            if (task != null) {
                androidx.media3.common.util.a.g(!task.isRemove);
                task.cancel(false);
                return task;
            }
            if (!c() || this.f12029l >= this.f12027j) {
                return null;
            }
            androidx.media3.exoplayer.offline.c cVarN = n(cVar, 2, 0);
            Task task2 = new Task(cVarN.f12101a, this.f12021d.a(cVarN.f12101a), cVarN.f12108h, false, this.f12028k, this);
            this.f12024g.put(cVarN.f12101a.f12031id, task2);
            int i10 = this.f12029l;
            this.f12029l = i10 + 1;
            if (i10 == 0) {
                sendEmptyMessageDelayed(12, 5000L);
            }
            task2.start();
            return task2;
        }

        private void z(Task task, androidx.media3.exoplayer.offline.c cVar) {
            if (task != null) {
                if (task.isRemove) {
                    return;
                }
                task.cancel(false);
            } else {
                if (this.f12030m) {
                    return;
                }
                Task task2 = new Task(cVar.f12101a, this.f12021d.a(cVar.f12101a), cVar.f12108h, true, this.f12028k, this);
                this.f12024g.put(cVar.f12101a.f12031id, task2);
                this.f12030m = true;
                task2.start();
            }
        }

        @Override
        public void handleMessage(Message message) {
            int i10 = 0;
            switch (message.what) {
                case 1:
                    h(message.arg1);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 2:
                    r(message.arg1 != 0);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 3:
                    u(message.arg1);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 4:
                    w((String) message.obj, message.arg1);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 5:
                    s(message.arg1);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 6:
                    t(message.arg1);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 7:
                    b((DownloadRequest) message.obj, message.arg1);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 8:
                    q((String) message.obj);
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 9:
                    p();
                    i10 = 1;
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 10:
                    l((Task) message.obj);
                    this.f12022e.obtainMessage(2, i10, this.f12024g.size()).sendToTarget();
                    return;
                case 11:
                    i((Task) message.obj, a1.v1(message.arg1, message.arg2));
                    return;
                case 12:
                    C();
                    return;
                case 13:
                    o();
                    return;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    public interface d {
        void a(DownloadManager downloadManager, boolean z10);

        void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar);

        void c(DownloadManager downloadManager, boolean z10);

        void d(DownloadManager downloadManager);

        void e(DownloadManager downloadManager, Requirements requirements, int i10);

        void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar, Exception exc);

        void g(DownloadManager downloadManager);
    }

    public DownloadManager(Context context, t tVar, p pVar) {
        this.f11998a = context.getApplicationContext();
        this.f11999b = tVar;
        Handler handlerD = a1.D(new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.f12109a.j(message);
            }
        });
        this.f12000c = handlerD;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        c cVar = new c(handlerThread, tVar, pVar, handlerD, this.f12008k, this.f12009l, this.f12007j);
        this.f12001d = cVar;
        e2.c.InterfaceC0716c interfaceC0716c = new e2.c.InterfaceC0716c() {
            @Override
            public final void a(e2.c cVar2, int i10) {
                this.f12110a.s(cVar2, i10);
            }
        };
        this.f12002e = interfaceC0716c;
        e2.c cVar2 = new e2.c(context, interfaceC0716c, f11997q);
        this.f12013p = cVar2;
        int i10 = cVar2.i();
        this.f12010m = i10;
        this.f12004g = 1;
        cVar.obtainMessage(1, i10, 0).sendToTarget();
    }

    private boolean B() {
        boolean z10;
        if (!this.f12007j && this.f12010m != 0) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f12012o.size()) {
                    z10 = false;
                    break;
                }
                if (((androidx.media3.exoplayer.offline.c) this.f12012o.get(i10)).f12102b == 0) {
                    z10 = true;
                    break;
                }
                i10++;
            }
        } else {
            z10 = false;
            break;
        }
        boolean z11 = this.f12011n != z10;
        this.f12011n = z10;
        return z11;
    }

    public boolean j(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            q((List) message.obj);
        } else if (i10 == 2) {
            r(message.arg1, message.arg2);
        } else {
            if (i10 != 3) {
                throw new IllegalStateException();
            }
            p((b) message.obj);
        }
        return true;
    }

    static androidx.media3.exoplayer.offline.c n(androidx.media3.exoplayer.offline.c cVar, DownloadRequest downloadRequest, int i10, long j10) {
        int i11;
        int i12 = cVar.f12102b;
        long j11 = (i12 == 5 || cVar.c()) ? j10 : cVar.f12103c;
        if (i12 == 5 || i12 == 7) {
            i11 = 7;
        } else {
            i11 = i10 != 0 ? 1 : 0;
        }
        return new androidx.media3.exoplayer.offline.c(cVar.f12101a.copyWithMergedRequest(downloadRequest), i11, j11, j10, -1L, i10, 0);
    }

    private void o() {
        Iterator it = this.f12003f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(this, this.f12011n);
        }
    }

    private void p(b bVar) {
        this.f12012o = Collections.unmodifiableList(bVar.f12016c);
        androidx.media3.exoplayer.offline.c cVar = bVar.f12014a;
        boolean zB = B();
        if (bVar.f12015b) {
            Iterator it = this.f12003f.iterator();
            while (it.hasNext()) {
                ((d) it.next()).b(this, cVar);
            }
        } else {
            Iterator it2 = this.f12003f.iterator();
            while (it2.hasNext()) {
                ((d) it2.next()).f(this, cVar, bVar.f12017d);
            }
        }
        if (zB) {
            o();
        }
    }

    private void q(List list) {
        this.f12006i = true;
        this.f12012o = Collections.unmodifiableList(list);
        boolean zB = B();
        Iterator it = this.f12003f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).g(this);
        }
        if (zB) {
            o();
        }
    }

    private void r(int i10, int i11) {
        this.f12004g -= i10;
        this.f12005h = i11;
        if (k()) {
            Iterator it = this.f12003f.iterator();
            while (it.hasNext()) {
                ((d) it.next()).d(this);
            }
        }
    }

    public void s(e2.c cVar, int i10) {
        Requirements requirementsF = cVar.f();
        if (this.f12010m != i10) {
            this.f12010m = i10;
            this.f12004g++;
            this.f12001d.obtainMessage(3, i10, 0).sendToTarget();
        }
        boolean zB = B();
        Iterator it = this.f12003f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).e(this, requirementsF, i10);
        }
        if (zB) {
            o();
        }
    }

    private void y(boolean z10) {
        if (this.f12007j == z10) {
            return;
        }
        this.f12007j = z10;
        this.f12004g++;
        this.f12001d.obtainMessage(2, z10 ? 1 : 0, 0).sendToTarget();
        boolean zB = B();
        Iterator it = this.f12003f.iterator();
        while (it.hasNext()) {
            ((d) it.next()).c(this, z10);
        }
        if (zB) {
            o();
        }
    }

    public void A(String str, int i10) {
        this.f12004g++;
        this.f12001d.obtainMessage(4, i10, 0, str).sendToTarget();
    }

    public void c(DownloadRequest downloadRequest, int i10) {
        this.f12004g++;
        this.f12001d.obtainMessage(7, i10, 0, downloadRequest).sendToTarget();
    }

    public void d(d dVar) {
        androidx.media3.common.util.a.e(dVar);
        this.f12003f.add(dVar);
    }

    public List e() {
        return this.f12012o;
    }

    public f f() {
        return this.f11999b;
    }

    public boolean g() {
        return this.f12007j;
    }

    public int h() {
        return this.f12010m;
    }

    public Requirements i() {
        return this.f12013p.f();
    }

    public boolean k() {
        return this.f12005h == 0 && this.f12004g == 0;
    }

    public boolean l() {
        return this.f12006i;
    }

    public boolean m() {
        return this.f12011n;
    }

    public void t() {
        y(true);
    }

    public void u() {
        this.f12004g++;
        this.f12001d.obtainMessage(9).sendToTarget();
    }

    public void v(String str) {
        this.f12004g++;
        this.f12001d.obtainMessage(8, str).sendToTarget();
    }

    public void w(d dVar) {
        this.f12003f.remove(dVar);
    }

    public void x() {
        y(false);
    }

    public void z(Requirements requirements) {
        if (requirements.equals(this.f12013p.f())) {
            return;
        }
        this.f12013p.j();
        e2.c cVar = new e2.c(this.f11998a, this.f12002e, requirements);
        this.f12013p = cVar;
        s(this.f12013p, cVar.i());
    }
}
