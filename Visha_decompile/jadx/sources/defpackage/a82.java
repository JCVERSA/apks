package defpackage;

import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class a82 extends AbstractResolvableFuture implements ScheduledFuture {
    public final ScheduledFuture b;

    public class a implements b {
        public a() {
        }

        @Override
        public void a(Throwable th) {
            a82.this.setException(th);
        }

        @Override
        public void set(Object obj) {
            a82.this.set(obj);
        }
    }

    public interface b {
        void a(Throwable th);

        void set(Object obj);
    }

    public interface c {
        ScheduledFuture a(b bVar);
    }

    public a82(c cVar) {
        this.b = cVar.a(new a());
    }

    @Override
    public void afterDone() {
        this.b.cancel(wasInterrupted());
    }

    @Override
    public int compareTo(Delayed delayed) {
        return this.b.compareTo(delayed);
    }

    @Override
    public long getDelay(TimeUnit timeUnit) {
        return this.b.getDelay(timeUnit);
    }
}
