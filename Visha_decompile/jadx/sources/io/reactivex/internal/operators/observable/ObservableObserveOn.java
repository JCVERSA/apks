package io.reactivex.internal.operators.observable;

import defpackage.fm8;
import defpackage.ld7;
import defpackage.mv9;
import defpackage.n3;
import defpackage.om9;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.schedulers.TrampolineScheduler;

public final class ObservableObserveOn extends n3 {
    public final Scheduler c;
    public final boolean d;
    public final int e;

    public static final class ObserveOnObserver<T> extends BasicIntQueueDisposable<T> implements pd7, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;
        final int bufferSize;
        final boolean delayError;
        volatile boolean disposed;
        volatile boolean done;
        final pd7 downstream;
        Throwable error;
        boolean outputFused;
        om9 queue;
        int sourceMode;
        rc2 upstream;
        final Scheduler.Worker worker;

        public ObserveOnObserver(pd7 pd7Var, Scheduler.Worker worker, boolean z, int i) {
            this.downstream = pd7Var;
            this.worker = worker;
            this.delayError = z;
            this.bufferSize = i;
        }

        public boolean checkTerminated(boolean z, boolean z2, pd7 pd7Var) {
            if (this.disposed) {
                this.queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                this.disposed = true;
                if (th != null) {
                    pd7Var.onError(th);
                } else {
                    pd7Var.onComplete();
                }
                this.worker.dispose();
                return true;
            }
            if (th != null) {
                this.disposed = true;
                this.queue.clear();
                pd7Var.onError(th);
                this.worker.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.disposed = true;
            pd7Var.onComplete();
            this.worker.dispose();
            return true;
        }

        @Override
        public void clear() {
            this.queue.clear();
        }

        @Override
        public void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.upstream.dispose();
            this.worker.dispose();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        public void drainFused() {
            int iAddAndGet = 1;
            while (!this.disposed) {
                boolean z = this.done;
                Throwable th = this.error;
                if (!this.delayError && z && th != null) {
                    this.disposed = true;
                    this.downstream.onError(this.error);
                    this.worker.dispose();
                    return;
                }
                this.downstream.onNext(null);
                if (z) {
                    this.disposed = true;
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        this.downstream.onError(th2);
                    } else {
                        this.downstream.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        public void drainNormal() {
            om9 om9Var = this.queue;
            pd7 pd7Var = this.downstream;
            int iAddAndGet = 1;
            while (!checkTerminated(this.done, om9Var.isEmpty(), pd7Var)) {
                while (true) {
                    boolean z = this.done;
                    try {
                        Object objPoll = om9Var.poll();
                        boolean z2 = objPoll == null;
                        if (checkTerminated(z, z2, pd7Var)) {
                            return;
                        }
                        if (z2) {
                            break;
                        } else {
                            pd7Var.onNext(objPoll);
                        }
                    } catch (Throwable th) {
                        re3.b(th);
                        this.disposed = true;
                        this.upstream.dispose();
                        om9Var.clear();
                        pd7Var.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            schedule();
        }

        @Override
        public void onError(Throwable th) {
            if (this.done) {
                yw8.s(th);
                return;
            }
            this.error = th;
            this.done = true;
            schedule();
        }

        @Override
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 2) {
                this.queue.offer(t);
            }
            schedule();
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.upstream, rc2Var)) {
                this.upstream = rc2Var;
                if (rc2Var instanceof fm8) {
                    fm8 fm8Var = (fm8) rc2Var;
                    int iRequestFusion = fm8Var.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = fm8Var;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        schedule();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = fm8Var;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                }
                this.queue = new mv9(this.bufferSize);
                this.downstream.onSubscribe(this);
            }
        }

        @Override
        public T poll() throws Exception {
            return (T) this.queue.poll();
        }

        @Override
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override
        public void run() {
            if (this.outputFused) {
                drainFused();
            } else {
                drainNormal();
            }
        }

        public void schedule() {
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }
    }

    public ObservableObserveOn(ld7 ld7Var, Scheduler scheduler, boolean z, int i) {
        super(ld7Var);
        this.c = scheduler;
        this.d = z;
        this.e = i;
    }

    @Override
    public void c0(pd7 pd7Var) {
        Scheduler scheduler = this.c;
        if (scheduler instanceof TrampolineScheduler) {
            this.b.subscribe(pd7Var);
        } else {
            this.b.subscribe(new ObserveOnObserver(pd7Var, scheduler.b(), this.d, this.e));
        }
    }
}
