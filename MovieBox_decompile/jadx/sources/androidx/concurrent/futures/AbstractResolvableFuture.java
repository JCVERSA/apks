package androidx.concurrent.futures;

import com.google.common.util.concurrent.r;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class AbstractResolvableFuture implements r {

    static final boolean f6256d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    private static final Logger f6257e = Logger.getLogger(AbstractResolvableFuture.class.getName());

    static final b f6258f;

    private static final Object f6259g;

    volatile Object f6260a;

    volatile d f6261b;

    volatile g f6262c;

    private static final class Failure {

        static final Failure f6263b = new Failure(new Throwable("Failure occurred while trying to finish a future.") {
            @Override
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        final Throwable f6264a;

        Failure(Throwable th2) {
            this.f6264a = (Throwable) AbstractResolvableFuture.h(th2);
        }
    }

    private static final class SetFuture<V> implements Runnable {
        final r future;
        final AbstractResolvableFuture owner;

        SetFuture(AbstractResolvableFuture abstractResolvableFuture, r rVar) {
            this.owner = abstractResolvableFuture;
            this.future = rVar;
        }

        @Override
        public void run() {
            if (this.owner.f6260a != this) {
                return;
            }
            if (AbstractResolvableFuture.f6258f.b(this.owner, this, AbstractResolvableFuture.o(this.future))) {
                AbstractResolvableFuture.l(this.owner);
            }
        }
    }

    private static abstract class b {
        private b() {
        }

        abstract boolean a(AbstractResolvableFuture abstractResolvableFuture, d dVar, d dVar2);

        abstract boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

        abstract boolean c(AbstractResolvableFuture abstractResolvableFuture, g gVar, g gVar2);

        abstract void d(g gVar, g gVar2);

        abstract void e(g gVar, Thread thread);
    }

    private static final class c {

        static final c f6265c;

        static final c f6266d;

        final boolean f6267a;

        final Throwable f6268b;

        static {
            if (AbstractResolvableFuture.f6256d) {
                f6266d = null;
                f6265c = null;
            } else {
                f6266d = new c(false, null);
                f6265c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th2) {
            this.f6267a = z10;
            this.f6268b = th2;
        }
    }

    private static final class d {

        static final d f6269d = new d(null, null);

        final Runnable f6270a;

        final Executor f6271b;

        d f6272c;

        d(Runnable runnable, Executor executor) {
            this.f6270a = runnable;
            this.f6271b = executor;
        }
    }

    private static final class e extends b {

        final AtomicReferenceFieldUpdater f6273a;

        final AtomicReferenceFieldUpdater f6274b;

        final AtomicReferenceFieldUpdater f6275c;

        final AtomicReferenceFieldUpdater f6276d;

        final AtomicReferenceFieldUpdater f6277e;

        e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.f6273a = atomicReferenceFieldUpdater;
            this.f6274b = atomicReferenceFieldUpdater2;
            this.f6275c = atomicReferenceFieldUpdater3;
            this.f6276d = atomicReferenceFieldUpdater4;
            this.f6277e = atomicReferenceFieldUpdater5;
        }

        @Override
        boolean a(AbstractResolvableFuture abstractResolvableFuture, d dVar, d dVar2) {
            return androidx.concurrent.futures.a.a(this.f6276d, abstractResolvableFuture, dVar, dVar2);
        }

        @Override
        boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f6277e, abstractResolvableFuture, obj, obj2);
        }

        @Override
        boolean c(AbstractResolvableFuture abstractResolvableFuture, g gVar, g gVar2) {
            return androidx.concurrent.futures.a.a(this.f6275c, abstractResolvableFuture, gVar, gVar2);
        }

        @Override
        void d(g gVar, g gVar2) {
            this.f6274b.lazySet(gVar, gVar2);
        }

        @Override
        void e(g gVar, Thread thread) {
            this.f6273a.lazySet(gVar, thread);
        }
    }

    private static final class f extends b {
        f() {
            super();
        }

        @Override
        boolean a(AbstractResolvableFuture abstractResolvableFuture, d dVar, d dVar2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f6261b != dVar) {
                        return false;
                    }
                    abstractResolvableFuture.f6261b = dVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f6260a != obj) {
                        return false;
                    }
                    abstractResolvableFuture.f6260a = obj2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        boolean c(AbstractResolvableFuture abstractResolvableFuture, g gVar, g gVar2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f6262c != gVar) {
                        return false;
                    }
                    abstractResolvableFuture.f6262c = gVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        void d(g gVar, g gVar2) {
            gVar.f6280b = gVar2;
        }

        @Override
        void e(g gVar, Thread thread) {
            gVar.f6279a = thread;
        }
    }

    private static final class g {

        static final g f6278c = new g(false);

        volatile Thread f6279a;

        volatile g f6280b;

        g(boolean z10) {
        }

        void a(g gVar) {
            AbstractResolvableFuture.f6258f.d(this, gVar);
        }

        void b() {
            Thread thread = this.f6279a;
            if (thread != null) {
                this.f6279a = null;
                LockSupport.unpark(thread);
            }
        }

        g() {
            AbstractResolvableFuture.f6258f.e(this, Thread.currentThread());
        }
    }

    static {
        b fVar;
        try {
            fVar = new e(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, g.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, d.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            fVar = new f();
        }
        f6258f = fVar;
        if (th != null) {
            f6257e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f6259g = new Object();
    }

    protected AbstractResolvableFuture() {
    }

    private void b(StringBuilder sb2) {
        try {
            Object objP = p(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(w(objP));
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e10.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e11.getCause());
            sb2.append("]");
        }
    }

    private static CancellationException g(String str, Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    static Object h(Object obj) {
        obj.getClass();
        return obj;
    }

    private d k(d dVar) {
        d dVar2;
        do {
            dVar2 = this.f6261b;
        } while (!f6258f.a(this, dVar2, d.f6269d));
        d dVar3 = dVar;
        d dVar4 = dVar2;
        while (dVar4 != null) {
            d dVar5 = dVar4.f6272c;
            dVar4.f6272c = dVar3;
            dVar3 = dVar4;
            dVar4 = dVar5;
        }
        return dVar3;
    }

    static void l(AbstractResolvableFuture abstractResolvableFuture) {
        d dVar = null;
        while (true) {
            abstractResolvableFuture.s();
            abstractResolvableFuture.d();
            d dVarK = abstractResolvableFuture.k(dVar);
            while (dVarK != null) {
                dVar = dVarK.f6272c;
                Runnable runnable = dVarK.f6270a;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractResolvableFuture = setFuture.owner;
                    if (abstractResolvableFuture.f6260a == setFuture) {
                        if (f6258f.b(abstractResolvableFuture, setFuture, o(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    m(runnable, dVarK.f6271b);
                }
                dVarK = dVar;
            }
            return;
        }
    }

    private static void m(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f6257e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    private Object n(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw g("Task was cancelled.", ((c) obj).f6268b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f6264a);
        }
        if (obj == f6259g) {
            return null;
        }
        return obj;
    }

    static Object o(r rVar) {
        if (rVar instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) rVar).f6260a;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            if (cVar.f6267a) {
                return cVar.f6268b != null ? new c(false, cVar.f6268b) : c.f6266d;
            }
            return obj;
        }
        boolean zIsCancelled = rVar.isCancelled();
        if ((!f6256d) && zIsCancelled) {
            return c.f6266d;
        }
        try {
            Object objP = p(rVar);
            return objP == null ? f6259g : objP;
        } catch (CancellationException e10) {
            if (zIsCancelled) {
                return new c(false, e10);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + rVar, e10));
        } catch (ExecutionException e11) {
            return new Failure(e11.getCause());
        } catch (Throwable th2) {
            return new Failure(th2);
        }
    }

    static Object p(Future future) {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private void s() {
        g gVar;
        do {
            gVar = this.f6262c;
        } while (!f6258f.c(this, gVar, g.f6278c));
        while (gVar != null) {
            gVar.b();
            gVar = gVar.f6280b;
        }
    }

    private void t(g gVar) {
        gVar.f6279a = null;
        while (true) {
            g gVar2 = this.f6262c;
            if (gVar2 == g.f6278c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f6280b;
                if (gVar2.f6279a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f6280b = gVar4;
                    if (gVar3.f6279a == null) {
                    }
                } else if (!f6258f.c(this, gVar2, gVar4)) {
                }
                gVar2 = gVar4;
            }
            return;
        }
    }

    private String w(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override
    public final void addListener(Runnable runnable, Executor executor) {
        h(runnable);
        h(executor);
        d dVar = this.f6261b;
        if (dVar != d.f6269d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f6272c = dVar;
                if (f6258f.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.f6261b;
                }
            } while (dVar != d.f6269d);
        }
        m(runnable, executor);
    }

    @Override
    public final boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.f6260a;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (f6256d) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z10 ? c.f6265c : c.f6266d;
        }
        AbstractResolvableFuture abstractResolvableFuture = this;
        boolean z11 = false;
        while (true) {
            if (f6258f.b(abstractResolvableFuture, obj, cVar)) {
                if (z10) {
                    abstractResolvableFuture.q();
                }
                l(abstractResolvableFuture);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                r rVar = ((SetFuture) obj).future;
                if (!(rVar instanceof AbstractResolvableFuture)) {
                    rVar.cancel(z10);
                    return true;
                }
                abstractResolvableFuture = (AbstractResolvableFuture) rVar;
                obj = abstractResolvableFuture.f6260a;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = abstractResolvableFuture.f6260a;
                if (!(obj instanceof SetFuture)) {
                    return z11;
                }
            }
        }
    }

    protected void d() {
    }

    @Override
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f6260a;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return n(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            g gVar = this.f6262c;
            if (gVar != g.f6278c) {
                g gVar2 = new g();
                while (true) {
                    gVar2.a(gVar);
                    if (f6258f.c(this, gVar, gVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                t(gVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f6260a;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return n(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        t(gVar2);
                        break;
                    }
                    gVar = this.f6262c;
                    if (gVar == g.f6278c) {
                    }
                }
            }
            return n(this.f6260a);
        }
        while (nanos > 0) {
            Object obj3 = this.f6260a;
            if ((obj3 != null) && (!(obj3 instanceof SetFuture))) {
                return n(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String str = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j11 = -nanos;
            long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
            long nanos2 = j11 - timeUnit.toNanos(jConvert);
            boolean z10 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + " " + lowerCase;
                if (z10) {
                    str3 = str3 + ",";
                }
                str2 = str3 + " ";
            }
            if (z10) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new TimeoutException(str + " but future completed as timeout expired");
        }
        throw new TimeoutException(str + " for " + string);
    }

    @Override
    public final boolean isCancelled() {
        return this.f6260a instanceof c;
    }

    @Override
    public final boolean isDone() {
        Object obj = this.f6260a;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    protected void q() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String r() {
        Object obj = this.f6260a;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + w(((SetFuture) obj).future) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public String toString() {
        String strR;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            b(sb2);
        } else {
            try {
                strR = r();
            } catch (RuntimeException e10) {
                strR = "Exception thrown from implementation: " + e10.getClass();
            }
            if (strR != null && !strR.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(strR);
                sb2.append("]");
            } else if (isDone()) {
                b(sb2);
            } else {
                sb2.append("PENDING");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    protected boolean u(Object obj) {
        if (obj == null) {
            obj = f6259g;
        }
        if (!f6258f.b(this, null, obj)) {
            return false;
        }
        l(this);
        return true;
    }

    protected boolean v(Throwable th2) {
        if (!f6258f.b(this, null, new Failure((Throwable) h(th2)))) {
            return false;
        }
        l(this);
        return true;
    }

    protected final boolean x() {
        Object obj = this.f6260a;
        return (obj instanceof c) && ((c) obj).f6267a;
    }

    @Override
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f6260a;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return n(obj2);
            }
            g gVar = this.f6262c;
            if (gVar != g.f6278c) {
                g gVar2 = new g();
                do {
                    gVar2.a(gVar);
                    if (f6258f.c(this, gVar, gVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f6260a;
                            } else {
                                t(gVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return n(obj);
                    }
                    gVar = this.f6262c;
                } while (gVar != g.f6278c);
            }
            return n(this.f6260a);
        }
        throw new InterruptedException();
    }
}
