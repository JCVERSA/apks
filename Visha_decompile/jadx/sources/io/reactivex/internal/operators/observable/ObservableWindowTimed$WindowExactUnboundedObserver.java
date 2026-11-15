package io.reactivex.internal.operators.observable;

import defpackage.im8;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.TimeUnit;

final class ObservableWindowTimed$WindowExactUnboundedObserver<T> extends im8 implements pd7, rc2, Runnable {
    static final Object NEXT = new Object();
    final int bufferSize;
    final Scheduler scheduler;
    volatile boolean terminated;
    final SequentialDisposable timer;
    final long timespan;
    final TimeUnit unit;
    rc2 upstream;
    UnicastSubject window;

    public ObservableWindowTimed$WindowExactUnboundedObserver(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
        super(pd7Var, new MpscLinkedQueue());
        this.timer = new SequentialDisposable();
        this.timespan = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.bufferSize = i;
    }

    @Override
    public void dispose() {
        this.cancelled = true;
    }

    public void drainLoop() {
        MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.queue;
        pd7 pd7Var = this.downstream;
        UnicastSubject unicastSubjectN0 = this.window;
        int iLeave = 1;
        while (true) {
            boolean z = this.terminated;
            boolean z2 = this.done;
            Object objPoll = mpscLinkedQueue.poll();
            if (z2 && (objPoll == null || objPoll == NEXT)) {
                break;
            }
            if (objPoll == null) {
                iLeave = leave(-iLeave);
                if (iLeave == 0) {
                    return;
                }
            } else if (objPoll == NEXT) {
                unicastSubjectN0.onComplete();
                if (z) {
                    this.upstream.dispose();
                } else {
                    unicastSubjectN0 = UnicastSubject.n0(this.bufferSize);
                    this.window = unicastSubjectN0;
                    pd7Var.onNext(unicastSubjectN0);
                }
            } else {
                unicastSubjectN0.onNext(NotificationLite.getValue(objPoll));
            }
        }
        this.window = null;
        mpscLinkedQueue.clear();
        Throwable th = this.error;
        if (th != null) {
            unicastSubjectN0.onError(th);
        } else {
            unicastSubjectN0.onComplete();
        }
        this.timer.dispose();
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
        if (this.terminated) {
            return;
        }
        if (fastEnter()) {
            this.window.onNext(t);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            this.queue.offer(NotificationLite.next(t));
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
            this.window = UnicastSubject.n0(this.bufferSize);
            pd7 pd7Var = this.downstream;
            pd7Var.onSubscribe(this);
            pd7Var.onNext(this.window);
            if (this.cancelled) {
                return;
            }
            Scheduler scheduler = this.scheduler;
            long j = this.timespan;
            this.timer.replace(scheduler.e(this, j, j, this.unit));
        }
    }

    @Override
    public void run() {
        if (this.cancelled) {
            this.terminated = true;
        }
        this.queue.offer(NEXT);
        if (enter()) {
            drainLoop();
        }
    }
}
