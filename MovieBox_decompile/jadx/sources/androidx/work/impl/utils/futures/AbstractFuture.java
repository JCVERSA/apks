package androidx.work.impl.utils.futures;

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

public abstract class AbstractFuture implements r {

    static final boolean f15340d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    private static final Logger f15341e = Logger.getLogger(AbstractFuture.class.getName());

    static final b f15342f;

    private static final Object f15343g;

    volatile Object f15344a;

    volatile d f15345b;

    volatile g f15346c;

    private static final class Failure {

        static final Failure f15347b = new Failure(new Throwable("Failure occurred while trying to finish a future.") {
            @Override
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        final Throwable f15348a;

        Failure(Throwable th2) {
            this.f15348a = (Throwable) AbstractFuture.g(th2);
        }
    }

    private static final class SetFuture<V> implements Runnable {
        final r future;
        final AbstractFuture owner;

        SetFuture(AbstractFuture abstractFuture, r rVar) {
            this.owner = abstractFuture;
            this.future = rVar;
        }

        @Override
        public void run() {
            if (this.owner.f15344a != this) {
                return;
            }
            if (AbstractFuture.f15342f.b(this.owner, this, AbstractFuture.n(this.future))) {
                AbstractFuture.k(this.owner);
            }
        }
    }

    private static abstract class b {
        private b() {
        }

        abstract boolean a(AbstractFuture abstractFuture, d dVar, d dVar2);

        abstract boolean b(AbstractFuture abstractFuture, Object obj, Object obj2);

        abstract boolean c(AbstractFuture abstractFuture, g gVar, g gVar2);

        abstract void d(g gVar, g gVar2);

        abstract void e(g gVar, Thread thread);
    }

    private static final class c {

        static final c f15349c;

        static final c f15350d;

        final boolean f15351a;

        final Throwable f15352b;

        static {
            if (AbstractFuture.f15340d) {
                f15350d = null;
                f15349c = null;
            } else {
                f15350d = new c(false, null);
                f15349c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th2) {
            this.f15351a = z10;
            this.f15352b = th2;
        }
    }

    private static final class d {

        static final d f15353d = new d(null, null);

        final Runnable f15354a;

        final Executor f15355b;

        d f15356c;

        d(Runnable runnable, Executor executor) {
            this.f15354a = runnable;
            this.f15355b = executor;
        }
    }

    private static final class e extends b {

        final AtomicReferenceFieldUpdater f15357a;

        final AtomicReferenceFieldUpdater f15358b;

        final AtomicReferenceFieldUpdater f15359c;

        final AtomicReferenceFieldUpdater f15360d;

        final AtomicReferenceFieldUpdater f15361e;

        e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.f15357a = atomicReferenceFieldUpdater;
            this.f15358b = atomicReferenceFieldUpdater2;
            this.f15359c = atomicReferenceFieldUpdater3;
            this.f15360d = atomicReferenceFieldUpdater4;
            this.f15361e = atomicReferenceFieldUpdater5;
        }

        @Override
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return androidx.concurrent.futures.a.a(this.f15360d, abstractFuture, dVar, dVar2);
        }

        @Override
        boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f15361e, abstractFuture, obj, obj2);
        }

        @Override
        boolean c(AbstractFuture abstractFuture, g gVar, g gVar2) {
            return androidx.concurrent.futures.a.a(this.f15359c, abstractFuture, gVar, gVar2);
        }

        @Override
        void d(g gVar, g gVar2) {
            this.f15358b.lazySet(gVar, gVar2);
        }

        @Override
        void e(g gVar, Thread thread) {
            this.f15357a.lazySet(gVar, thread);
        }
    }

    private static final class f extends b {
        f() {
            super();
        }

        @Override
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f15345b != dVar) {
                        return false;
                    }
                    abstractFuture.f15345b = dVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f15344a != obj) {
                        return false;
                    }
                    abstractFuture.f15344a = obj2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        boolean c(AbstractFuture abstractFuture, g gVar, g gVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f15346c != gVar) {
                        return false;
                    }
                    abstractFuture.f15346c = gVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        void d(g gVar, g gVar2) {
            gVar.f15364b = gVar2;
        }

        @Override
        void e(g gVar, Thread thread) {
            gVar.f15363a = thread;
        }
    }

    private static final class g {

        static final g f15362c = new g(false);

        volatile Thread f15363a;

        volatile g f15364b;

        g(boolean z10) {
        }

        void a(g gVar) {
            AbstractFuture.f15342f.d(this, gVar);
        }

        void b() {
            Thread thread = this.f15363a;
            if (thread != null) {
                this.f15363a = null;
                LockSupport.unpark(thread);
            }
        }

        g() {
            AbstractFuture.f15342f.e(this, Thread.currentThread());
        }
    }

    static {
        b fVar;
        try {
            fVar = new e(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, g.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, d.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            fVar = new f();
        }
        f15342f = fVar;
        if (th != null) {
            f15341e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f15343g = new Object();
    }

    protected AbstractFuture() {
    }

    private void b(StringBuilder sb2) {
        try {
            Object objO = o(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(w(objO));
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

    private static CancellationException d(String str, Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    static Object g(Object obj) {
        obj.getClass();
        return obj;
    }

    private d h(d dVar) {
        d dVar2;
        do {
            dVar2 = this.f15345b;
        } while (!f15342f.a(this, dVar2, d.f15353d));
        d dVar3 = dVar;
        d dVar4 = dVar2;
        while (dVar4 != null) {
            d dVar5 = dVar4.f15356c;
            dVar4.f15356c = dVar3;
            dVar3 = dVar4;
            dVar4 = dVar5;
        }
        return dVar3;
    }

    static void k(AbstractFuture abstractFuture) {
        d dVar = null;
        while (true) {
            abstractFuture.r();
            abstractFuture.c();
            d dVarH = abstractFuture.h(dVar);
            while (dVarH != null) {
                dVar = dVarH.f15356c;
                Runnable runnable = dVarH.f15354a;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractFuture = setFuture.owner;
                    if (abstractFuture.f15344a == setFuture) {
                        if (f15342f.b(abstractFuture, setFuture, n(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    l(runnable, dVarH.f15355b);
                }
                dVarH = dVar;
            }
            return;
        }
    }

    private static void l(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f15341e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    private Object m(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw d("Task was cancelled.", ((c) obj).f15352b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f15348a);
        }
        if (obj == f15343g) {
            return null;
        }
        return obj;
    }

    static Object n(r rVar) {
        if (rVar instanceof AbstractFuture) {
            Object obj = ((AbstractFuture) rVar).f15344a;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            if (cVar.f15351a) {
                return cVar.f15352b != null ? new c(false, cVar.f15352b) : c.f15350d;
            }
            return obj;
        }
        boolean zIsCancelled = rVar.isCancelled();
        if ((!f15340d) && zIsCancelled) {
            return c.f15350d;
        }
        try {
            Object objO = o(rVar);
            return objO == null ? f15343g : objO;
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

    private static Object o(Future future) {
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

    private void r() {
        g gVar;
        do {
            gVar = this.f15346c;
        } while (!f15342f.c(this, gVar, g.f15362c));
        while (gVar != null) {
            gVar.b();
            gVar = gVar.f15364b;
        }
    }

    private void s(g gVar) {
        gVar.f15363a = null;
        while (true) {
            g gVar2 = this.f15346c;
            if (gVar2 == g.f15362c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f15364b;
                if (gVar2.f15363a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f15364b = gVar4;
                    if (gVar3.f15363a == null) {
                    }
                } else if (!f15342f.c(this, gVar2, gVar4)) {
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
        g(runnable);
        g(executor);
        d dVar = this.f15345b;
        if (dVar != d.f15353d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f15356c = dVar;
                if (f15342f.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.f15345b;
                }
            } while (dVar != d.f15353d);
        }
        l(runnable, executor);
    }

    protected void c() {
    }

    @Override
    public final boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.f15344a;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (f15340d) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z10 ? c.f15349c : c.f15350d;
        }
        AbstractFuture abstractFuture = this;
        boolean z11 = false;
        while (true) {
            if (f15342f.b(abstractFuture, obj, cVar)) {
                if (z10) {
                    abstractFuture.p();
                }
                k(abstractFuture);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                r rVar = ((SetFuture) obj).future;
                if (!(rVar instanceof AbstractFuture)) {
                    rVar.cancel(z10);
                    return true;
                }
                abstractFuture = (AbstractFuture) rVar;
                obj = abstractFuture.f15344a;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = abstractFuture.f15344a;
                if (!(obj instanceof SetFuture)) {
                    return z11;
                }
            }
        }
    }

    @Override
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f15344a;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return m(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            g gVar = this.f15346c;
            if (gVar != g.f15362c) {
                g gVar2 = new g();
                while (true) {
                    gVar2.a(gVar);
                    if (f15342f.c(this, gVar, gVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                s(gVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f15344a;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return m(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        s(gVar2);
                        break;
                    }
                    gVar = this.f15346c;
                    if (gVar == g.f15362c) {
                    }
                }
            }
            return m(this.f15344a);
        }
        while (nanos > 0) {
            Object obj3 = this.f15344a;
            if ((obj3 != null) && (!(obj3 instanceof SetFuture))) {
                return m(obj3);
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
        return this.f15344a instanceof c;
    }

    @Override
    public final boolean isDone() {
        Object obj = this.f15344a;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    protected void p() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String q() {
        Object obj = this.f15344a;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + w(((SetFuture) obj).future) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    protected boolean t(Object obj) {
        if (obj == null) {
            obj = f15343g;
        }
        if (!f15342f.b(this, null, obj)) {
            return false;
        }
        k(this);
        return true;
    }

    public String toString() {
        String strQ;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            b(sb2);
        } else {
            try {
                strQ = q();
            } catch (RuntimeException e10) {
                strQ = "Exception thrown from implementation: " + e10.getClass();
            }
            if (strQ != null && !strQ.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(strQ);
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

    protected boolean u(Throwable th2) {
        if (!f15342f.b(this, null, new Failure((Throwable) g(th2)))) {
            return false;
        }
        k(this);
        return true;
    }

    protected boolean v(r rVar) {
        Failure failure;
        g(rVar);
        Object obj = this.f15344a;
        if (obj == null) {
            if (rVar.isDone()) {
                if (!f15342f.b(this, null, n(rVar))) {
                    return false;
                }
                k(this);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, rVar);
            if (f15342f.b(this, null, setFuture)) {
                try {
                    rVar.addListener(setFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th2) {
                    try {
                        failure = new Failure(th2);
                    } catch (Throwable unused) {
                        failure = Failure.f15347b;
                    }
                    f15342f.b(this, setFuture, failure);
                }
                return true;
            }
            obj = this.f15344a;
        }
        if (obj instanceof c) {
            rVar.cancel(((c) obj).f15351a);
        }
        return false;
    }

    @Override
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f15344a;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return m(obj2);
            }
            g gVar = this.f15346c;
            if (gVar != g.f15362c) {
                g gVar2 = new g();
                do {
                    gVar2.a(gVar);
                    if (f15342f.c(this, gVar, gVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f15344a;
                            } else {
                                s(gVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return m(obj);
                    }
                    gVar = this.f15346c;
                } while (gVar != g.f15362c);
            }
            return m(this.f15344a);
        }
        throw new InterruptedException();
    }
}
