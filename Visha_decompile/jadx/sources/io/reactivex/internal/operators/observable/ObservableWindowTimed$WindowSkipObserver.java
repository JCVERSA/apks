package io.reactivex.internal.operators.observable;

import defpackage.im8;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.subjects.UnicastSubject;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

final class ObservableWindowTimed$WindowSkipObserver<T> extends im8 implements rc2, Runnable {
    final int bufferSize;
    volatile boolean terminated;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    rc2 upstream;
    final List<UnicastSubject> windows;
    final Scheduler.Worker worker;

    public final class CompletionTask implements Runnable {
        private final UnicastSubject w;

        public CompletionTask(UnicastSubject unicastSubject) {
            this.w = unicastSubject;
        }

        @Override
        public void run() {
            ObservableWindowTimed$WindowSkipObserver.this.complete(this.w);
        }
    }

    public static final class a {
        public final UnicastSubject a;
        public final boolean b;

        public a(UnicastSubject unicastSubject, boolean z) {
            this.a = unicastSubject;
            this.b = z;
        }
    }

    public ObservableWindowTimed$WindowSkipObserver(pd7 pd7Var, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker, int i) {
        super(pd7Var, new MpscLinkedQueue());
        this.timespan = j;
        this.timeskip = j2;
        this.unit = timeUnit;
        this.worker = worker;
        this.bufferSize = i;
        this.windows = new LinkedList();
    }

    public void complete(UnicastSubject unicastSubject) {
        this.queue.offer(new a(unicastSubject, false));
        if (enter()) {
            drainLoop();
        }
    }

    @Override
    public void dispose() {
        this.cancelled = true;
    }

    public void drainLoop() {
        MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.queue;
        pd7 pd7Var = this.downstream;
        List<UnicastSubject> list = this.windows;
        int iLeave = 1;
        while (!this.terminated) {
            boolean z = this.done;
            Object objPoll = mpscLinkedQueue.poll();
            boolean z2 = objPoll == null;
            boolean z3 = objPoll instanceof a;
            if (z && (z2 || z3)) {
                mpscLinkedQueue.clear();
                Throwable th = this.error;
                if (th != null) {
                    Iterator<UnicastSubject> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().onError(th);
                    }
                } else {
                    Iterator<UnicastSubject> it2 = list.iterator();
                    while (it2.hasNext()) {
                        it2.next().onComplete();
                    }
                }
                list.clear();
                this.worker.dispose();
                return;
            }
            if (z2) {
                iLeave = leave(-iLeave);
                if (iLeave == 0) {
                    return;
                }
            } else if (z3) {
                a aVar = (a) objPoll;
                if (!aVar.b) {
                    list.remove(aVar.a);
                    aVar.a.onComplete();
                    if (list.isEmpty() && this.cancelled) {
                        this.terminated = true;
                    }
                } else if (!this.cancelled) {
                    UnicastSubject unicastSubjectN0 = UnicastSubject.n0(this.bufferSize);
                    list.add(unicastSubjectN0);
                    pd7Var.onNext(unicastSubjectN0);
                    this.worker.schedule(new CompletionTask(unicastSubjectN0), this.timespan, this.unit);
                }
            } else {
                Iterator<UnicastSubject> it3 = list.iterator();
                while (it3.hasNext()) {
                    it3.next().onNext(objPoll);
                }
            }
        }
        this.upstream.dispose();
        mpscLinkedQueue.clear();
        list.clear();
        this.worker.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override
    public void onComplete() {
        this.done = true;
        if (enter()) {
            drainLoop();
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        if (enter()) {
            drainLoop();
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        if (fastEnter()) {
            Iterator<UnicastSubject> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            if (leave(-1) == 0) {
                return;
            }
        } else {
            this.queue.offer(t);
            if (!enter()) {
                return;
            }
        }
        drainLoop();
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            this.downstream.onSubscribe(this);
            if (this.cancelled) {
                return;
            }
            UnicastSubject unicastSubjectN0 = UnicastSubject.n0(this.bufferSize);
            this.windows.add(unicastSubjectN0);
            this.downstream.onNext(unicastSubjectN0);
            this.worker.schedule(new CompletionTask(unicastSubjectN0), this.timespan, this.unit);
            Scheduler.Worker worker = this.worker;
            long j = this.timeskip;
            worker.schedulePeriodically(this, j, j, this.unit);
        }
    }

    @Override
    public void run() {
        a aVar = new a(UnicastSubject.n0(this.bufferSize), true);
        if (!this.cancelled) {
            this.queue.offer(aVar);
        }
        if (enter()) {
            drainLoop();
        }
    }
}
