package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class TrampolineScheduler extends Scheduler {

    private static final TrampolineScheduler f62490c = new TrampolineScheduler();

    static final class SleepingRunnable implements Runnable {
        private final long execTime;
        private final Runnable run;
        private final TrampolineWorker worker;

        SleepingRunnable(Runnable runnable, TrampolineWorker trampolineWorker, long j10) {
            this.run = runnable;
            this.worker = trampolineWorker;
            this.execTime = j10;
        }

        @Override
        public void run() {
            if (this.worker.f62494d) {
                return;
            }
            long jNow = this.worker.now(TimeUnit.MILLISECONDS);
            long j10 = this.execTime;
            if (j10 > jNow) {
                try {
                    Thread.sleep(j10 - jNow);
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    dy.a.r(e10);
                    return;
                }
            }
            if (this.worker.f62494d) {
                return;
            }
            this.run.run();
        }
    }

    static final class TrampolineWorker extends Scheduler.Worker {

        final PriorityBlockingQueue f62491a = new PriorityBlockingQueue();

        private final AtomicInteger f62492b = new AtomicInteger();

        final AtomicInteger f62493c = new AtomicInteger();

        volatile boolean f62494d;

        final class AppendToQueueTask implements Runnable {
            final a timedRunnable;

            AppendToQueueTask(a aVar) {
                this.timedRunnable = aVar;
            }

            @Override
            public void run() {
                this.timedRunnable.f62498d = true;
                TrampolineWorker.this.f62491a.remove(this.timedRunnable);
            }
        }

        TrampolineWorker() {
        }

        io.reactivex.rxjava3.disposables.c a(Runnable runnable, long j10) {
            if (this.f62494d) {
                return EmptyDisposable.INSTANCE;
            }
            a aVar = new a(runnable, Long.valueOf(j10), this.f62493c.incrementAndGet());
            this.f62491a.add(aVar);
            if (this.f62492b.getAndIncrement() != 0) {
                return io.reactivex.rxjava3.disposables.b.b(new AppendToQueueTask(aVar));
            }
            int iAddAndGet = 1;
            while (!this.f62494d) {
                a aVar2 = (a) this.f62491a.poll();
                if (aVar2 == null) {
                    iAddAndGet = this.f62492b.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!aVar2.f62498d) {
                    aVar2.f62495a.run();
                }
            }
            this.f62491a.clear();
            return EmptyDisposable.INSTANCE;
        }

        @Override
        public void dispose() {
            this.f62494d = true;
        }

        @Override
        public boolean isDisposed() {
            return this.f62494d;
        }

        @Override
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
            return a(runnable, now(TimeUnit.MILLISECONDS));
        }

        @Override
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            long jNow = now(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j10);
            return a(new SleepingRunnable(runnable, this, jNow), jNow);
        }
    }

    static final class a implements Comparable {

        final Runnable f62495a;

        final long f62496b;

        final int f62497c;

        volatile boolean f62498d;

        a(Runnable runnable, Long l10, int i10) {
            this.f62495a = runnable;
            this.f62496b = l10.longValue();
            this.f62497c = i10;
        }

        @Override
        public int compareTo(a aVar) {
            int iCompare = Long.compare(this.f62496b, aVar.f62496b);
            return iCompare == 0 ? Integer.compare(this.f62497c, aVar.f62497c) : iCompare;
        }
    }

    TrampolineScheduler() {
    }

    public static TrampolineScheduler g() {
        return f62490c;
    }

    @Override
    public Scheduler.Worker c() {
        return new TrampolineWorker();
    }

    @Override
    public io.reactivex.rxjava3.disposables.c d(Runnable runnable) {
        dy.a.t(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override
    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j10, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j10);
            dy.a.t(runnable).run();
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            dy.a.r(e10);
        }
        return EmptyDisposable.INSTANCE;
    }
}
