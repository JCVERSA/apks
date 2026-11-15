package com.transsion.transfer.androidasync;

import java.io.Closeable;
import java.io.IOException;
import java.nio.channels.Selector;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

class x implements Closeable {

    private Selector f53526a;

    public AtomicBoolean f53527b = new AtomicBoolean(false);

    Semaphore f53528c = new Semaphore(0);

    public x(Selector selector) {
        this.f53526a = selector;
    }

    @Override
    public void close() throws IOException {
        this.f53526a.close();
    }

    public Selector d() {
        return this.f53526a;
    }

    public Set h() {
        return this.f53526a.keys();
    }

    public boolean isOpen() {
        return this.f53526a.isOpen();
    }

    public void k() {
        l(0L);
    }

    public void l(long j10) {
        try {
            this.f53528c.drainPermits();
            this.f53526a.select(j10);
        } finally {
            this.f53528c.release(Integer.MAX_VALUE);
        }
    }

    public int m() {
        return this.f53526a.selectNow();
    }

    public Set n() {
        return this.f53526a.selectedKeys();
    }

    public boolean o() {
        for (int i10 = 0; i10 < 100; i10++) {
            try {
                this.f53528c.tryAcquire(10L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                return true;
            }
        }
        return false;
    }

    public void p() {
        boolean zTryAcquire = this.f53528c.tryAcquire();
        this.f53526a.wakeup();
        if (zTryAcquire) {
            if (this.f53527b.getAndSet(true)) {
                this.f53526a.wakeup();
                return;
            }
            try {
                o();
                this.f53526a.wakeup();
            } finally {
                this.f53527b.set(false);
            }
        }
    }
}
