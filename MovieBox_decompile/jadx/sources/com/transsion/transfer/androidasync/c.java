package com.transsion.transfer.androidasync;

import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public class c {

    Semaphore f53132a = new Semaphore(0);

    public void a() {
        ThreadQueue orCreateThreadQueue = ThreadQueue.getOrCreateThreadQueue(Thread.currentThread());
        c cVar = orCreateThreadQueue.waiter;
        orCreateThreadQueue.waiter = this;
        Semaphore semaphore = orCreateThreadQueue.queueSemaphore;
        try {
            if (this.f53132a.tryAcquire()) {
                return;
            }
            while (true) {
                Runnable runnableRemove = orCreateThreadQueue.remove();
                if (runnableRemove == null) {
                    semaphore.acquire(Math.max(1, semaphore.availablePermits()));
                    if (this.f53132a.tryAcquire()) {
                        return;
                    }
                } else {
                    runnableRemove.run();
                }
            }
        } finally {
            orCreateThreadQueue.waiter = cVar;
        }
    }

    public void b() {
        this.f53132a.release();
        ThreadQueue.release(this);
    }

    public boolean c(long j10, TimeUnit timeUnit) {
        long jConvert = TimeUnit.MILLISECONDS.convert(j10, timeUnit);
        ThreadQueue orCreateThreadQueue = ThreadQueue.getOrCreateThreadQueue(Thread.currentThread());
        c cVar = orCreateThreadQueue.waiter;
        orCreateThreadQueue.waiter = this;
        Semaphore semaphore = orCreateThreadQueue.queueSemaphore;
        try {
            if (this.f53132a.tryAcquire()) {
                return true;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (true) {
                Runnable runnableRemove = orCreateThreadQueue.remove();
                if (runnableRemove != null) {
                    runnableRemove.run();
                } else {
                    if (!semaphore.tryAcquire(Math.max(1, semaphore.availablePermits()), jConvert, TimeUnit.MILLISECONDS)) {
                        return false;
                    }
                    if (this.f53132a.tryAcquire()) {
                        return true;
                    }
                    if (System.currentTimeMillis() - jCurrentTimeMillis >= jConvert) {
                        return false;
                    }
                }
            }
        } finally {
            orCreateThreadQueue.waiter = cVar;
        }
    }
}
