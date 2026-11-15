package androidx.concurrent.futures;

import com.google.common.util.concurrent.r;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public abstract class CallbackToFutureAdapter {

    static final class FutureGarbageCollectedException extends Throwable {
        FutureGarbageCollectedException(String str) {
            super(str);
        }

        @Override
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    public static final class a {

        Object f6281a;

        c f6282b;

        private androidx.concurrent.futures.b f6283c = androidx.concurrent.futures.b.y();

        private boolean f6284d;

        a() {
        }

        private void d() {
            this.f6281a = null;
            this.f6282b = null;
            this.f6283c = null;
        }

        void a() {
            this.f6281a = null;
            this.f6282b = null;
            this.f6283c.u(null);
        }

        public boolean b(Object obj) {
            this.f6284d = true;
            c cVar = this.f6282b;
            boolean z10 = cVar != null && cVar.c(obj);
            if (z10) {
                d();
            }
            return z10;
        }

        public boolean c() {
            this.f6284d = true;
            c cVar = this.f6282b;
            boolean z10 = cVar != null && cVar.b(true);
            if (z10) {
                d();
            }
            return z10;
        }

        public boolean e(Throwable th2) {
            this.f6284d = true;
            c cVar = this.f6282b;
            boolean z10 = cVar != null && cVar.d(th2);
            if (z10) {
                d();
            }
            return z10;
        }

        protected void finalize() {
            androidx.concurrent.futures.b bVar;
            c cVar = this.f6282b;
            if (cVar != null && !cVar.isDone()) {
                cVar.d(new FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f6281a));
            }
            if (this.f6284d || (bVar = this.f6283c) == null) {
                return;
            }
            bVar.u(null);
        }
    }

    public interface b {
        Object a(a aVar);
    }

    private static final class c implements r {

        final WeakReference f6285a;

        private final AbstractResolvableFuture f6286b = new a();

        class a extends AbstractResolvableFuture {
            a() {
            }

            @Override
            protected String r() {
                a aVar = (a) c.this.f6285a.get();
                if (aVar == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + aVar.f6281a + "]";
            }
        }

        c(a aVar) {
            this.f6285a = new WeakReference(aVar);
        }

        @Override
        public void addListener(Runnable runnable, Executor executor) {
            this.f6286b.addListener(runnable, executor);
        }

        boolean b(boolean z10) {
            return this.f6286b.cancel(z10);
        }

        boolean c(Object obj) {
            return this.f6286b.u(obj);
        }

        @Override
        public boolean cancel(boolean z10) {
            a aVar = (a) this.f6285a.get();
            boolean zCancel = this.f6286b.cancel(z10);
            if (zCancel && aVar != null) {
                aVar.a();
            }
            return zCancel;
        }

        boolean d(Throwable th2) {
            return this.f6286b.v(th2);
        }

        @Override
        public Object get() {
            return this.f6286b.get();
        }

        @Override
        public boolean isCancelled() {
            return this.f6286b.isCancelled();
        }

        @Override
        public boolean isDone() {
            return this.f6286b.isDone();
        }

        public String toString() {
            return this.f6286b.toString();
        }

        @Override
        public Object get(long j10, TimeUnit timeUnit) {
            return this.f6286b.get(j10, timeUnit);
        }
    }

    public static r a(b bVar) {
        a aVar = new a();
        c cVar = new c(aVar);
        aVar.f6282b = cVar;
        aVar.f6281a = bVar.getClass();
        try {
            Object objA = bVar.a(aVar);
            if (objA != null) {
                aVar.f6281a = objA;
            }
        } catch (Exception e10) {
            cVar.d(e10);
        }
        return cVar;
    }
}
