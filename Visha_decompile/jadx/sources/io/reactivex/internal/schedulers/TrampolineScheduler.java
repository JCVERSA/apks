package io.reactivex.internal.schedulers;

import defpackage.ac7;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class TrampolineScheduler extends Scheduler {
    public static final TrampolineScheduler c = new TrampolineScheduler();

    public static final class SleepingRunnable implements Runnable {
        private final long execTime;
        private final Runnable run;
        private final TrampolineWorker worker;

        public SleepingRunnable(Runnable runnable, TrampolineWorker trampolineWorker, long j) {
            this.run = runnable;
            this.worker = trampolineWorker;
            this.execTime = j;
        }

        @Override
        public void run() {
            if (this.worker.e) {
                return;
            }
            long jNow = this.worker.now(TimeUnit.MILLISECONDS);
            long j = this.execTime;
            if (j > jNow) {
                try {
                    Thread.sleep(j - jNow);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    yw8.s(e);
                    return;
                }
            }
            if (this.worker.e) {
                return;
            }
            this.run.run();
        }
    }

    public static final class TrampolineWorker extends Scheduler.Worker implements rc2 {
        public final PriorityBlockingQueue b = new PriorityBlockingQueue();
        public final AtomicInteger c = new AtomicInteger();
        public final AtomicInteger d = new AtomicInteger();
        public volatile boolean e;

        public final class AppendToQueueTask implements Runnable {
            final a timedRunnable;

            public AppendToQueueTask(a aVar) {
                this.timedRunnable = aVar;
            }

            @Override
            public void run() {
                this.timedRunnable.e = true;
                TrampolineWorker.this.b.remove(this.timedRunnable);
            }
        }

        public rc2 a(Runnable runnable, long j) {
            if (this.e) {
                return EmptyDisposable.INSTANCE;
            }
            a aVar = new a(runnable, Long.valueOf(j), this.d.incrementAndGet());
            this.b.add(aVar);
            if (this.c.getAndIncrement() != 0) {
                return io.reactivex.disposables.a.d(new AppendToQueueTask(aVar));
            }
            int iAddAndGet = 1;
            while (!this.e) {
                a aVar2 = (a) this.b.poll();
                if (aVar2 == null) {
                    iAddAndGet = this.c.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!aVar2.e) {
                    aVar2.b.run();
                }
            }
            this.b.clear();
            return EmptyDisposable.INSTANCE;
        }

        @Override
        public void dispose() {
            this.e = true;
        }

        @Override
        public boolean isDisposed() {
            return this.e;
        }

        @Override
        public rc2 schedule(Runnable runnable) {
            return a(runnable, now(TimeUnit.MILLISECONDS));
        }

        @Override
        public rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            long jNow = now(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j);
            return a(new SleepingRunnable(runnable, this, jNow), jNow);
        }
    }

    public static final class a implements Comparable {
        public final Runnable b;
        public final long c;
        public final int d;
        public volatile boolean e;

        public a(Runnable runnable, Long l, int i) {
            this.b = runnable;
            this.c = l.longValue();
            this.d = i;
        }

        @Override
        public int compareTo(a aVar) {
            int iB = ac7.b(this.c, aVar.c);
            return iB == 0 ? ac7.a(this.d, aVar.d) : iB;
        }
    }

    public static TrampolineScheduler f() {
        return c;
    }

    @Override
    public Scheduler.Worker b() {
        return new TrampolineWorker();
    }

    @Override
    public rc2 c(Runnable runnable) {
        yw8.v(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override
    public rc2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j);
            yw8.v(runnable).run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            yw8.s(e);
        }
        return EmptyDisposable.INSTANCE;
    }
}
