package com.google.firebase.concurrent;

import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class p extends AbstractResolvableFuture implements ScheduledFuture {

    private final ScheduledFuture f30302h;

    class a implements b {
        a() {
        }

        @Override
        public void a(Throwable th2) {
            p.this.v(th2);
        }

        @Override
        public void set(Object obj) {
            p.this.u(obj);
        }
    }

    interface b {
        void a(Throwable th2);

        void set(Object obj);
    }

    interface c {
        ScheduledFuture a(b bVar);
    }

    p(c cVar) {
        this.f30302h = cVar.a(new a());
    }

    @Override
    public int compareTo(Delayed delayed) {
        return this.f30302h.compareTo(delayed);
    }

    @Override
    protected void d() {
        this.f30302h.cancel(x());
    }

    @Override
    public long getDelay(TimeUnit timeUnit) {
        return this.f30302h.getDelay(timeUnit);
    }
}
