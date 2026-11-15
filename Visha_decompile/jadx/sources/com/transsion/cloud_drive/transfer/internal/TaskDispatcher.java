package com.transsion.cloud_drive.transfer.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import com.transsion.cloud_drive.transfer.exception.TransferException;
import com.transsion.cloud_drive.transfer.internal.TaskDispatcher;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.oq5;
import defpackage.wda;
import defpackage.x71;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class TaskDispatcher {
    public final String a;
    public final int b;
    public final boolean c;
    public final String d;
    public final ExecutorService e;
    public final Handler f;
    public final HandlerThread g;
    public b h;
    public LinkedBlockingQueue i;
    public final ConcurrentHashMap j;
    public final ConcurrentHashMap k;
    public final LinkedList l;
    public final LinkedList m;

    public static final class a implements ThreadFactory {
        public final AtomicInteger b = new AtomicInteger(1);

        public a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            y45.j(runnable, "r");
            Thread thread = new Thread(runnable);
            thread.setName("cloud-drive-" + TaskDispatcher.this.o() + "-thread-" + this.b.getAndIncrement());
            thread.setDaemon(false);
            thread.setPriority(5);
            return thread;
        }
    }

    public interface b {
        void a(wda wdaVar, Throwable th);
    }

    public TaskDispatcher(String str, int i, boolean z) {
        y45.j(str, "name");
        this.a = str;
        this.b = i;
        this.c = z;
        this.d = "TaskDispatcher";
        this.i = new LinkedBlockingQueue(i);
        if (i <= 0) {
            throw new IllegalArgumentException("task dispatcher need maxRunning > 0");
        }
        HandlerThread handlerThread = new HandlerThread("cloud-drive-schedule-" + str + "-thread");
        handlerThread.start();
        this.f = new Handler(handlerThread.getLooper());
        this.g = handlerThread;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, this.i, new a());
        this.e = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.j = new ConcurrentHashMap();
        this.k = new ConcurrentHashMap();
        this.l = new LinkedList();
        this.m = new LinkedList();
    }

    public static final void C(wda wdaVar, TaskDispatcher taskDispatcher) {
        y45.j(wdaVar, "$task");
        y45.j(taskDispatcher, "this$0");
        try {
            wdaVar.execute();
            th = null;
        } catch (Throwable th) {
            th = th;
            try {
                b bVar = taskDispatcher.h;
                if (bVar != null) {
                    bVar.a(wdaVar, th);
                }
            } finally {
                taskDispatcher.D(wdaVar, th);
            }
        }
    }

    public static final void x(c74 c74Var) {
        y45.j(c74Var, "$block");
        c74Var.invoke();
    }

    public final void A() {
        synchronized (this) {
            try {
                this.j.clear();
                this.l.clear();
                Collection collectionValues = this.k.values();
                y45.i(collectionValues, "<get-values>(...)");
                Iterator it = collectionValues.iterator();
                while (it.hasNext()) {
                    ((Future) it.next()).cancel(true);
                }
                this.k.clear();
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            this.e.shutdown();
            if (this.e.awaitTermination(5L, TimeUnit.SECONDS)) {
                this.e.shutdown();
            }
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th2));
        }
        this.g.quitSafely();
    }

    public final void B(final wda wdaVar) {
        this.j.put(wdaVar.getId(), wdaVar);
        try {
            Log.d(this.d, "enqueue-runningTask.size :" + this.j.size() + " , maxRunning: " + this.b + ", waitingQueue.size: " + this.l.size());
            Log.d(this.d, "enqueue-runningFutures.size: " + this.k.size() + ",pausedTaskQueue.size : " + this.m.size());
            Log.d(this.d, "enqueue-mQueue.size: " + this.i.size());
            ConcurrentHashMap concurrentHashMap = this.k;
            String id = wdaVar.getId();
            Future<?> futureSubmit = this.e.submit(new Runnable() {
                @Override
                public final void run() {
                    TaskDispatcher.C(wdaVar, this);
                }
            });
            y45.i(futureSubmit, "submit(...)");
            concurrentHashMap.put(id, futureSubmit);
        } catch (RejectedExecutionException unused) {
            this.l.offer(wdaVar);
            this.j.remove(wdaVar.getId());
        }
    }

    public final void D(final wda wdaVar, final Throwable th) {
        w(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m120invoke();
                return zfb.a;
            }

            public final void m120invoke() {
                TaskDispatcher taskDispatcher = this.this$0;
                wda wdaVar2 = wdaVar;
                Throwable th2 = th;
                synchronized (taskDispatcher) {
                    try {
                        taskDispatcher.j.remove(wdaVar2.getId());
                        taskDispatcher.k.remove(wdaVar2.getId());
                        if (th2 != null) {
                            taskDispatcher.m.offer(wdaVar2);
                            if (taskDispatcher.p()) {
                                TransferException transferException = th2 instanceof TransferException ? (TransferException) th2 : null;
                                if (transferException == null || !transferException.isNoNetwork()) {
                                    taskDispatcher.y();
                                }
                            }
                        } else {
                            if (wdaVar2.isCompleted()) {
                                oq5.a.a(taskDispatcher.d, "task is completed, clear block info");
                                wdaVar2.clear();
                            }
                            taskDispatcher.y();
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        });
    }

    public final void l(Future future) {
        future.cancel(true);
    }

    public final void m(final wda wdaVar) {
        y45.j(wdaVar, "task");
        w(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m116invoke();
                return zfb.a;
            }

            public final void m116invoke() {
                TaskDispatcher taskDispatcher = this.this$0;
                wda wdaVar2 = wdaVar;
                synchronized (taskDispatcher) {
                    try {
                        Log.d(taskDispatcher.d, "enqueue-runningTask.size :" + taskDispatcher.j.size() + " , maxRunning: " + taskDispatcher.n() + ", waitingQueue.size: " + taskDispatcher.l.size());
                        Log.d(taskDispatcher.d, "enqueue-runningFutures.size: " + taskDispatcher.k.size() + ",pausedTaskQueue.size : " + taskDispatcher.m.size());
                        Log.d(taskDispatcher.d, "enqueue-mQueue.size: " + taskDispatcher.i.size());
                        if (taskDispatcher.j.size() < taskDispatcher.n()) {
                            taskDispatcher.B(wdaVar2);
                        } else {
                            taskDispatcher.l.offer(wdaVar2);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    public final int n() {
        return this.b;
    }

    public final String o() {
        return this.a;
    }

    public final boolean p() {
        return this.c;
    }

    public final void q(String str) {
        y45.j(str, "taskId");
        r(x71.e(str));
    }

    public final void r(final List list) {
        y45.j(list, "taskIds");
        if (list.isEmpty()) {
            return;
        }
        w(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m117invoke();
                return zfb.a;
            }

            public final void m117invoke() {
                TaskDispatcher taskDispatcher = this.this$0;
                List<String> list2 = list;
                synchronized (taskDispatcher) {
                    try {
                        for (String str : list2) {
                            wda wdaVar = (wda) taskDispatcher.j.remove(str);
                            if (wdaVar != null) {
                                wdaVar.a(false);
                                taskDispatcher.m.offer(wdaVar);
                                Future future = (Future) taskDispatcher.k.remove(str);
                                if (future != null) {
                                    y45.g(future);
                                    taskDispatcher.l(future);
                                }
                            } else {
                                Iterator it = taskDispatcher.l.iterator();
                                int i = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i = -1;
                                        break;
                                    } else if (y45.e(((wda) it.next()).getId(), str)) {
                                        break;
                                    } else {
                                        i++;
                                    }
                                }
                                if (i >= 0) {
                                    wda wdaVar2 = (wda) taskDispatcher.l.remove(i);
                                    taskDispatcher.m.offer(wdaVar2);
                                    wdaVar2.a(false);
                                }
                            }
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.this$0.y();
            }
        });
    }

    public final void s(String str) {
        y45.j(str, "taskId");
        t(x71.e(str));
    }

    public final void t(final List list) {
        y45.j(list, "taskIds");
        w(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m118invoke();
                return zfb.a;
            }

            public final void m118invoke() {
                int i;
                TaskDispatcher taskDispatcher = this.this$0;
                List<String> list2 = list;
                synchronized (taskDispatcher) {
                    try {
                        for (String str : list2) {
                            wda wdaVar = (wda) taskDispatcher.j.remove(str);
                            if (wdaVar != null) {
                                wdaVar.a(true);
                                Future future = (Future) taskDispatcher.k.remove(str);
                                if (future != null) {
                                    y45.g(future);
                                    taskDispatcher.l(future);
                                }
                            } else {
                                Iterator it = taskDispatcher.m.iterator();
                                int i2 = 0;
                                int i3 = 0;
                                while (true) {
                                    i = -1;
                                    if (!it.hasNext()) {
                                        i3 = -1;
                                        break;
                                    } else if (y45.e(((wda) it.next()).getId(), str)) {
                                        break;
                                    } else {
                                        i3++;
                                    }
                                }
                                if (i3 >= 0) {
                                    wdaVar = (wda) taskDispatcher.m.remove(i3);
                                } else {
                                    Iterator it2 = taskDispatcher.l.iterator();
                                    while (it2.hasNext()) {
                                        if (y45.e(((wda) it2.next()).getId(), str)) {
                                            i = i2;
                                            break;
                                        }
                                        i2++;
                                    }
                                    if (i >= 0) {
                                        wdaVar = (wda) taskDispatcher.l.remove(i);
                                    }
                                }
                                if (wdaVar != null) {
                                    wdaVar.a(true);
                                    wdaVar.clear();
                                }
                            }
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.this$0.y();
            }
        });
    }

    public final void u(String str, final e74 e74Var) {
        y45.j(str, "taskId");
        y45.j(e74Var, "block");
        v(x71.e(str), new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((List<wda>) obj);
                return zfb.a;
            }

            public final void invoke(List<wda> list) {
                y45.j(list, "it");
                wda wdaVar = (wda) i81.q0(list);
                if (wdaVar != null) {
                    e74Var.invoke(wdaVar);
                }
            }
        });
    }

    public final void v(final List list, final e74 e74Var) {
        y45.j(list, "taskIds");
        y45.j(e74Var, "block");
        w(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m119invoke();
                return zfb.a;
            }

            public final void m119invoke() {
                ArrayList arrayList = new ArrayList();
                TaskDispatcher taskDispatcher = this.this$0;
                List<String> list2 = list;
                synchronized (taskDispatcher) {
                    try {
                        for (String str : list2) {
                            Iterator it = taskDispatcher.m.iterator();
                            int i = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i = -1;
                                    break;
                                } else if (y45.e(((wda) it.next()).getId(), str)) {
                                    break;
                                } else {
                                    i++;
                                }
                            }
                            if (i >= 0) {
                                Object objRemove = taskDispatcher.m.remove(i);
                                y45.i(objRemove, "removeAt(...)");
                                wda wdaVar = (wda) objRemove;
                                taskDispatcher.l.offer(wdaVar);
                                arrayList.add(wdaVar);
                            }
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                e74Var.invoke(arrayList);
                this.this$0.y();
            }
        });
    }

    public final void w(final c74 c74Var) {
        this.f.post(new Runnable() {
            @Override
            public final void run() {
                TaskDispatcher.x(c74Var);
            }
        });
    }

    public final void y() {
        wda wdaVar;
        synchronized (this) {
            while (this.j.size() < this.b && (wdaVar = (wda) this.l.poll()) != null) {
                try {
                    y45.g(wdaVar);
                    B(wdaVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            zfb zfbVar = zfb.a;
        }
    }

    public final void z(b bVar) {
        this.h = bVar;
    }

    public TaskDispatcher(String str, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, (i2 & 4) != 0 ? true : z);
    }
}
