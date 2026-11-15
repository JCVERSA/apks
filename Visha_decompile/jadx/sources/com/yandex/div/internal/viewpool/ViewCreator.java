package com.yandex.div.internal.viewpool;

import android.os.Process;
import defpackage.af5;
import defpackage.ar0;
import defpackage.emb;
import defpackage.go8;
import defpackage.ld0;
import defpackage.xq8;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.PriorityQueue;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;

public final class ViewCreator {
    public static final a b = new a(null);
    public final ViewCreatorThread a;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\u001b\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\f\u001a\u0004\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR!\u0010\u001f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;", "Ljava/lang/Runnable;", "", "Lcom/yandex/div/internal/viewpool/a$a;", "channel", "", "priority", MethodDecl.initName, "(Lcom/yandex/div/internal/viewpool/a$a;I)V", "Lzfb;", "run", "()V", "other", "compareTo", "(Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;)I", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "I", "", "viewName", "Ljava/lang/String;", "getViewName", "()Ljava/lang/String;", "channelRef$delegate", "Lgo8;", "getChannelRef", "()Lcom/yandex/div/internal/viewpool/a$a;", "channelRef", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class CreateViewTask implements Runnable, Comparable<CreateViewTask> {
        static final af5[] $$delegatedProperties = {xq8.j(new PropertyReference1Impl(CreateViewTask.class, "channelRef", "getChannelRef()Lcom/yandex/div/internal/viewpool/AdvanceViewPool$Channel;", 0))};

        private final go8 channelRef;
        private final int priority;
        private final String viewName;

        public CreateViewTask(com.yandex.div.internal.viewpool.a.C0300a c0300a, int i) {
            y45.j(c0300a, "channel");
            this.priority = i;
            this.viewName = c0300a.j();
            this.channelRef = emb.c(c0300a);
        }

        private final com.yandex.div.internal.viewpool.a.C0300a getChannelRef() {
            return (com.yandex.div.internal.viewpool.a.C0300a) this.channelRef.getValue(this, $$delegatedProperties[0]);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!y45.e(CreateViewTask.class, other != null ? other.getClass() : null)) {
                return false;
            }
            y45.h(other, "null cannot be cast to non-null type com.yandex.div.internal.viewpool.ViewCreator.CreateViewTask");
            CreateViewTask createViewTask = (CreateViewTask) other;
            return y45.e(this.viewName, createViewTask.viewName) && this.priority == createViewTask.priority;
        }

        public final String getViewName() {
            return this.viewName;
        }

        public int hashCode() {
            return ((6913 + this.priority) * 31) + this.viewName.hashCode();
        }

        @Override
        public void run() {
            com.yandex.div.internal.viewpool.a.C0300a channelRef = getChannelRef();
            if (channelRef != null) {
                channelRef.f();
            }
        }

        @Override
        public int compareTo(CreateViewTask other) {
            y45.j(other, "other");
            int i = this.priority - other.priority;
            return i != 0 ? i : !y45.e(this.viewName, other.viewName) ? 1 : 0;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\fR%\u0010\u0010\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R(\u0010\u0015\u001a\u0004\u0018\u00010\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;", "Ljava/lang/Thread;", "", "name", "Lcom/yandex/div/histogram/a;", "cpuUsageHistogramReporter", MethodDecl.initName, "(Ljava/lang/String;Lcom/yandex/div/histogram/a;)V", "Lzfb;", "createView", "()V", "run", "Lcom/yandex/div/histogram/a;", "Lld0;", "Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;", "kotlin.jvm.PlatformType", "taskQueue", "Lld0;", "getTaskQueue", "()Lld0;", "<set-?>", "currentViewName", "Ljava/lang/String;", "getCurrentViewName", "()Ljava/lang/String;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ViewCreatorThread extends Thread {
        private final com.yandex.div.histogram.a cpuUsageHistogramReporter;
        private volatile String currentViewName;
        private final ld0 taskQueue;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewCreatorThread(String str, com.yandex.div.histogram.a aVar) {
            super(str);
            y45.j(str, "name");
            y45.j(aVar, "cpuUsageHistogramReporter");
            this.cpuUsageHistogramReporter = aVar;
            this.taskQueue = new ld0(new PriorityQueue(32));
            setPriority(5);
        }

        private final void createView() throws InterruptedException {
            CreateViewTask createViewTask = (CreateViewTask) this.taskQueue.poll();
            if (createViewTask == null) {
                try {
                    setPriority(3);
                    createViewTask = (CreateViewTask) this.taskQueue.take();
                    setPriority(5);
                    y45.i(createViewTask, "run {\n                //…          }\n            }");
                } catch (Throwable th) {
                    setPriority(5);
                    throw th;
                }
            }
            this.currentViewName = createViewTask.getViewName();
            createViewTask.run();
            this.currentViewName = null;
        }

        public final String getCurrentViewName() {
            return this.currentViewName;
        }

        public final ld0 getTaskQueue() {
            return this.taskQueue;
        }

        @Override
        public void run() {
            ar0 ar0VarA = this.cpuUsageHistogramReporter.a("Div.ViewPool.CPU", Process.myTid());
            while (true) {
                try {
                    try {
                        createView();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        ar0VarA.cancel();
                        return;
                    }
                } catch (Throwable th) {
                    ar0VarA.cancel();
                    throw th;
                }
            }
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public ViewCreator(com.yandex.div.histogram.a aVar) {
        y45.j(aVar, "cpuUsageHistogramReporter");
        ViewCreatorThread viewCreatorThread = new ViewCreatorThread("ViewPoolThread", aVar);
        this.a = viewCreatorThread;
        viewCreatorThread.start();
    }

    public final void a(com.yandex.div.internal.viewpool.a.C0300a c0300a) {
        y45.j(c0300a, "channel");
        if (y45.e(c0300a.j(), this.a.getCurrentViewName()) || c0300a.i()) {
            return;
        }
        ld0 taskQueue = this.a.getTaskQueue();
        taskQueue.c.lock();
        try {
            if (!y45.e(c0300a.j(), this.a.getCurrentViewName()) && !c0300a.i()) {
                taskQueue = this.a.getTaskQueue();
                taskQueue.c.lock();
                try {
                    Iterator it = taskQueue.b.iterator();
                    while (it.hasNext()) {
                        if (y45.e(((CreateViewTask) it.next()).getViewName(), c0300a.j())) {
                            it.remove();
                            break;
                        }
                    }
                    taskQueue.c.unlock();
                    this.a.getTaskQueue().offer(new CreateViewTask(c0300a, -1));
                    zfb zfbVar = zfb.a;
                    return;
                } finally {
                    taskQueue.c.unlock();
                }
            }
            taskQueue.c.unlock();
        } catch (Throwable th) {
            taskQueue.c.unlock();
            throw th;
        }
    }

    public final void b(com.yandex.div.internal.viewpool.a.C0300a c0300a, int i) {
        y45.j(c0300a, "channel");
        this.a.getTaskQueue().offer(new CreateViewTask(c0300a, i));
    }
}
