package com.google.common.util.concurrent;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
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
import sun.misc.Unsafe;

public abstract class AbstractFuture extends ib.a implements r {
    private static final b ATOMIC_HELPER;
    static final boolean GENERATE_CANCELLATION_CAUSES;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    static final q log;
    private volatile d listeners;
    private volatile Object value;
    private volatile j waiters;

    private static final class Failure {

        static final Failure f30145b = new Failure(new Throwable("Failure occurred while trying to finish a future.") {
            @Override
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        final Throwable f30146a;

        Failure(Throwable th2) {
            this.f30146a = (Throwable) com.google.common.base.m.o(th2);
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
            if (this.owner.value != this) {
                return;
            }
            if (AbstractFuture.ATOMIC_HELPER.b(this.owner, this, AbstractFuture.o(this.future))) {
                AbstractFuture.l(this.owner, false);
            }
        }
    }

    private static abstract class b {
        private b() {
        }

        abstract boolean a(AbstractFuture abstractFuture, d dVar, d dVar2);

        abstract boolean b(AbstractFuture abstractFuture, Object obj, Object obj2);

        abstract boolean c(AbstractFuture abstractFuture, j jVar, j jVar2);

        abstract d d(AbstractFuture abstractFuture, d dVar);

        abstract j e(AbstractFuture abstractFuture, j jVar);

        abstract void f(j jVar, j jVar2);

        abstract void g(j jVar, Thread thread);
    }

    private static final class c {

        static final c f30147c;

        static final c f30148d;

        final boolean f30149a;

        final Throwable f30150b;

        static {
            if (AbstractFuture.GENERATE_CANCELLATION_CAUSES) {
                f30148d = null;
                f30147c = null;
            } else {
                f30148d = new c(false, null);
                f30147c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th2) {
            this.f30149a = z10;
            this.f30150b = th2;
        }
    }

    private static final class e extends b {

        final AtomicReferenceFieldUpdater f30155a;

        final AtomicReferenceFieldUpdater f30156b;

        final AtomicReferenceFieldUpdater f30157c;

        final AtomicReferenceFieldUpdater f30158d;

        final AtomicReferenceFieldUpdater f30159e;

        e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.f30155a = atomicReferenceFieldUpdater;
            this.f30156b = atomicReferenceFieldUpdater2;
            this.f30157c = atomicReferenceFieldUpdater3;
            this.f30158d = atomicReferenceFieldUpdater4;
            this.f30159e = atomicReferenceFieldUpdater5;
        }

        @Override
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return androidx.concurrent.futures.a.a(this.f30158d, abstractFuture, dVar, dVar2);
        }

        @Override
        boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f30159e, abstractFuture, obj, obj2);
        }

        @Override
        boolean c(AbstractFuture abstractFuture, j jVar, j jVar2) {
            return androidx.concurrent.futures.a.a(this.f30157c, abstractFuture, jVar, jVar2);
        }

        @Override
        d d(AbstractFuture abstractFuture, d dVar) {
            return (d) this.f30158d.getAndSet(abstractFuture, dVar);
        }

        @Override
        j e(AbstractFuture abstractFuture, j jVar) {
            return (j) this.f30157c.getAndSet(abstractFuture, jVar);
        }

        @Override
        void f(j jVar, j jVar2) {
            this.f30156b.lazySet(jVar, jVar2);
        }

        @Override
        void g(j jVar, Thread thread) {
            this.f30155a.lazySet(jVar, thread);
        }
    }

    private static final class f extends b {
        private f() {
            super();
        }

        @Override
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.listeners != dVar) {
                        return false;
                    }
                    abstractFuture.listeners = dVar2;
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
                    if (abstractFuture.value != obj) {
                        return false;
                    }
                    abstractFuture.value = obj2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        boolean c(AbstractFuture abstractFuture, j jVar, j jVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.waiters != jVar) {
                        return false;
                    }
                    abstractFuture.waiters = jVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        d d(AbstractFuture abstractFuture, d dVar) {
            d dVar2;
            synchronized (abstractFuture) {
                try {
                    dVar2 = abstractFuture.listeners;
                    if (dVar2 != dVar) {
                        abstractFuture.listeners = dVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return dVar2;
        }

        @Override
        j e(AbstractFuture abstractFuture, j jVar) {
            j jVar2;
            synchronized (abstractFuture) {
                try {
                    jVar2 = abstractFuture.waiters;
                    if (jVar2 != jVar) {
                        abstractFuture.waiters = jVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return jVar2;
        }

        @Override
        void f(j jVar, j jVar2) {
            jVar.f30168b = jVar2;
        }

        @Override
        void g(j jVar, Thread thread) {
            jVar.f30167a = thread;
        }
    }

    interface g extends r {
    }

    static abstract class h extends AbstractFuture implements g {
        h() {
        }

        @Override
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override
        public final boolean cancel(boolean z10) {
            return super.cancel(z10);
        }

        @Override
        public final Object get() throws ExecutionException, InterruptedException {
            return super.get();
        }

        @Override
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override
        public final boolean isDone() {
            return super.isDone();
        }

        @Override
        public final Object get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return super.get(j10, timeUnit);
        }
    }

    private static final class i extends b {

        static final Unsafe f30160a;

        static final long f30161b;

        static final long f30162c;

        static final long f30163d;

        static final long f30164e;

        static final long f30165f;

        class a implements PrivilegedExceptionAction {
            a() {
            }

            @Override
            public Unsafe run() throws IllegalAccessException {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e10) {
                    throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                f30162c = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("waiters"));
                f30161b = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("listeners"));
                f30163d = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                f30164e = unsafe.objectFieldOffset(j.class.getDeclaredField("a"));
                f30165f = unsafe.objectFieldOffset(j.class.getDeclaredField(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B));
                f30160a = unsafe;
            } catch (NoSuchFieldException e11) {
                throw new RuntimeException(e11);
            }
        }

        private i() {
            super();
        }

        @Override
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return com.google.android.libraries.places.internal.a.a(f30160a, abstractFuture, f30161b, dVar, dVar2);
        }

        @Override
        boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return com.google.android.libraries.places.internal.a.a(f30160a, abstractFuture, f30163d, obj, obj2);
        }

        @Override
        boolean c(AbstractFuture abstractFuture, j jVar, j jVar2) {
            return com.google.android.libraries.places.internal.a.a(f30160a, abstractFuture, f30162c, jVar, jVar2);
        }

        @Override
        d d(AbstractFuture abstractFuture, d dVar) {
            d dVar2;
            do {
                dVar2 = abstractFuture.listeners;
                if (dVar == dVar2) {
                    return dVar2;
                }
            } while (!a(abstractFuture, dVar2, dVar));
            return dVar2;
        }

        @Override
        j e(AbstractFuture abstractFuture, j jVar) {
            j jVar2;
            do {
                jVar2 = abstractFuture.waiters;
                if (jVar == jVar2) {
                    return jVar2;
                }
            } while (!c(abstractFuture, jVar2, jVar));
            return jVar2;
        }

        @Override
        void f(j jVar, j jVar2) {
            f30160a.putObject(jVar, f30165f, jVar2);
        }

        @Override
        void g(j jVar, Thread thread) {
            f30160a.putObject(jVar, f30164e, thread);
        }
    }

    private static final class j {

        static final j f30166c = new j(false);

        volatile Thread f30167a;

        volatile j f30168b;

        j(boolean z10) {
        }

        void a(j jVar) {
            AbstractFuture.ATOMIC_HELPER.f(this, jVar);
        }

        void b() {
            Thread thread = this.f30167a;
            if (thread != null) {
                this.f30167a = null;
                LockSupport.unpark(thread);
            }
        }

        j() {
            AbstractFuture.ATOMIC_HELPER.g(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.common.util.concurrent.AbstractFuture$a] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v9 */
    static {
        boolean z10;
        b fVar;
        try {
            z10 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z10 = false;
        }
        GENERATE_CANCELLATION_CAUSES = z10;
        log = new q(AbstractFuture.class);
        ?? r10 = 0;
        r10 = 0;
        try {
            fVar = new i();
            e = null;
        } catch (Error | Exception e10) {
            e = e10;
            try {
                fVar = new e(AtomicReferenceFieldUpdater.newUpdater(j.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(j.class, j.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, j.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, d.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, AppMeasurementSdk.ConditionalUserProperty.VALUE));
            } catch (Error | Exception e11) {
                fVar = new f();
                r10 = e11;
            }
        }
        ATOMIC_HELPER = fVar;
        if (r10 != 0) {
            q qVar = log;
            Logger loggerA = qVar.a();
            Level level = Level.SEVERE;
            loggerA.log(level, "UnsafeAtomicHelper is broken!", e);
            qVar.a().log(level, "SafeAtomicHelper is broken!", r10);
        }
        NULL = new Object();
    }

    protected AbstractFuture() {
    }

    private void b(StringBuilder sb2) {
        try {
            Object objP = p(this);
            sb2.append("SUCCESS, result=[");
            d(sb2, objP);
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (ExecutionException e10) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e10.getCause());
            sb2.append("]");
        } catch (Exception e11) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e11.getClass());
            sb2.append(" thrown from get()]");
        }
    }

    private void c(StringBuilder sb2) {
        String strA;
        int length = sb2.length();
        sb2.append("PENDING");
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            sb2.append(", setFuture=[");
            g(sb2, ((SetFuture) obj).future);
            sb2.append("]");
        } else {
            try {
                strA = com.google.common.base.p.a(pendingToString());
            } catch (Exception | StackOverflowError e10) {
                strA = "Exception thrown from implementation: " + e10.getClass();
            }
            if (strA != null) {
                sb2.append(", info=[");
                sb2.append(strA);
                sb2.append("]");
            }
        }
        if (isDone()) {
            sb2.delete(length, sb2.length());
            b(sb2);
        }
    }

    private void d(StringBuilder sb2, Object obj) {
        if (obj == null) {
            sb2.append("null");
        } else {
            if (obj == this) {
                sb2.append("this future");
                return;
            }
            sb2.append(obj.getClass().getName());
            sb2.append("@");
            sb2.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    private void g(StringBuilder sb2, Object obj) {
        try {
            if (obj == this) {
                sb2.append("this future");
            } else {
                sb2.append(obj);
            }
        } catch (Exception e10) {
            e = e10;
            sb2.append("Exception thrown from implementation: ");
            sb2.append(e.getClass());
        } catch (StackOverflowError e11) {
            e = e11;
            sb2.append("Exception thrown from implementation: ");
            sb2.append(e.getClass());
        }
    }

    private static CancellationException h(String str, Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    private d k(d dVar) {
        d dVar2 = dVar;
        d dVarD = ATOMIC_HELPER.d(this, d.f30151d);
        while (dVarD != null) {
            d dVar3 = dVarD.f30154c;
            dVarD.f30154c = dVar2;
            dVar2 = dVarD;
            dVarD = dVar3;
        }
        return dVar2;
    }

    public static void l(AbstractFuture abstractFuture, boolean z10) {
        d dVar = null;
        while (true) {
            abstractFuture.q();
            if (z10) {
                abstractFuture.interruptTask();
                z10 = false;
            }
            abstractFuture.afterDone();
            d dVarK = abstractFuture.k(dVar);
            while (dVarK != null) {
                dVar = dVarK.f30154c;
                Runnable runnable = dVarK.f30152a;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable2;
                    abstractFuture = setFuture.owner;
                    if (abstractFuture.value == setFuture) {
                        if (ATOMIC_HELPER.b(abstractFuture, setFuture, o(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = dVarK.f30153b;
                    Objects.requireNonNull(executor);
                    m(runnable2, executor);
                }
                dVarK = dVar;
            }
            return;
        }
    }

    private static void m(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e10) {
            log.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    private Object n(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw h("Task was cancelled.", ((c) obj).f30150b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f30146a);
        }
        return obj == NULL ? u.b() : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object o(r rVar) {
        Throwable thA;
        if (rVar instanceof g) {
            Object cVar = ((AbstractFuture) rVar).value;
            if (cVar instanceof c) {
                c cVar2 = (c) cVar;
                if (cVar2.f30149a) {
                    cVar = cVar2.f30150b != null ? new c(false, cVar2.f30150b) : c.f30148d;
                }
            }
            Objects.requireNonNull(cVar);
            return cVar;
        }
        if ((rVar instanceof ib.a) && (thA = ib.b.a((ib.a) rVar)) != null) {
            return new Failure(thA);
        }
        boolean zIsCancelled = rVar.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            c cVar3 = c.f30148d;
            Objects.requireNonNull(cVar3);
            return cVar3;
        }
        try {
            Object objP = p(rVar);
            if (!zIsCancelled) {
                return objP == null ? NULL : objP;
            }
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + rVar));
        } catch (Error e10) {
            e = e10;
            return new Failure(e);
        } catch (CancellationException e11) {
            if (zIsCancelled) {
                return new c(false, e11);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + rVar, e11));
        } catch (ExecutionException e12) {
            if (!zIsCancelled) {
                return new Failure(e12.getCause());
            }
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + rVar, e12));
        } catch (Exception e13) {
            e = e13;
            return new Failure(e);
        }
    }

    private static Object p(Future future) {
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

    private void q() {
        for (j jVarE = ATOMIC_HELPER.e(this, j.f30166c); jVarE != null; jVarE = jVarE.f30168b) {
            jVarE.b();
        }
    }

    private void r(j jVar) {
        jVar.f30167a = null;
        while (true) {
            j jVar2 = this.waiters;
            if (jVar2 == j.f30166c) {
                return;
            }
            j jVar3 = null;
            while (jVar2 != null) {
                j jVar4 = jVar2.f30168b;
                if (jVar2.f30167a != null) {
                    jVar3 = jVar2;
                } else if (jVar3 != null) {
                    jVar3.f30168b = jVar4;
                    if (jVar3.f30167a == null) {
                    }
                } else if (!ATOMIC_HELPER.c(this, jVar2, jVar4)) {
                }
                jVar2 = jVar4;
            }
            return;
        }
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        d dVar;
        com.google.common.base.m.p(runnable, "Runnable was null.");
        com.google.common.base.m.p(executor, "Executor was null.");
        if (!isDone() && (dVar = this.listeners) != d.f30151d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f30154c = dVar;
                if (ATOMIC_HELPER.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.listeners;
                }
            } while (dVar != d.f30151d);
        }
        m(runnable, executor);
    }

    protected void afterDone() {
    }

    @Override
    public boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (GENERATE_CANCELLATION_CAUSES) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z10 ? c.f30147c : c.f30148d;
            Objects.requireNonNull(cVar);
        }
        AbstractFuture abstractFuture = this;
        boolean z11 = false;
        while (true) {
            if (ATOMIC_HELPER.b(abstractFuture, obj, cVar)) {
                l(abstractFuture, z10);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                r rVar = ((SetFuture) obj).future;
                if (!(rVar instanceof g)) {
                    rVar.cancel(z10);
                    return true;
                }
                abstractFuture = (AbstractFuture) rVar;
                obj = abstractFuture.value;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = abstractFuture.value;
                if (!(obj instanceof SetFuture)) {
                    return z11;
                }
            }
        }
    }

    @Override
    public Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return n(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            j jVar = this.waiters;
            if (jVar != j.f30166c) {
                j jVar2 = new j();
                while (true) {
                    jVar2.a(jVar);
                    if (ATOMIC_HELPER.c(this, jVar, jVar2)) {
                        do {
                            v.a(this, nanos);
                            if (Thread.interrupted()) {
                                r(jVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return n(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        r(jVar2);
                        break;
                    }
                    jVar = this.waiters;
                    if (jVar == j.f30166c) {
                    }
                }
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return n(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.value;
            if ((obj4 != null) && (!(obj4 instanceof SetFuture))) {
                return n(obj4);
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

    protected void interruptTask() {
    }

    @Override
    public boolean isCancelled() {
        return this.value instanceof c;
    }

    @Override
    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    final void maybePropagateCancellationTo(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String pendingToString() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    protected boolean set(Object obj) {
        if (obj == null) {
            obj = NULL;
        }
        if (!ATOMIC_HELPER.b(this, null, obj)) {
            return false;
        }
        l(this, false);
        return true;
    }

    protected boolean setException(Throwable th2) {
        if (!ATOMIC_HELPER.b(this, null, new Failure((Throwable) com.google.common.base.m.o(th2)))) {
            return false;
        }
        l(this, false);
        return true;
    }

    protected boolean setFuture(r rVar) {
        Failure failure;
        com.google.common.base.m.o(rVar);
        Object obj = this.value;
        if (obj == null) {
            if (rVar.isDone()) {
                if (!ATOMIC_HELPER.b(this, null, o(rVar))) {
                    return false;
                }
                l(this, false);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, rVar);
            if (ATOMIC_HELPER.b(this, null, setFuture)) {
                try {
                    rVar.addListener(setFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th2) {
                    try {
                        failure = new Failure(th2);
                    } catch (Error | Exception unused) {
                        failure = Failure.f30145b;
                    }
                    ATOMIC_HELPER.b(this, setFuture, failure);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof c) {
            rVar.cancel(((c) obj).f30149a);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb2.append(getClass().getSimpleName());
        } else {
            sb2.append(getClass().getName());
        }
        sb2.append('@');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            b(sb2);
        } else {
            c(sb2);
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    protected final Throwable tryInternalFastPathGetFailure() {
        if (!(this instanceof g)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof Failure) {
            return ((Failure) obj).f30146a;
        }
        return null;
    }

    protected final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof c) && ((c) obj).f30149a;
    }

    private static final class d {

        static final d f30151d = new d();

        final Runnable f30152a;

        final Executor f30153b;

        d f30154c;

        d(Runnable runnable, Executor executor) {
            this.f30152a = runnable;
            this.f30153b = executor;
        }

        d() {
            this.f30152a = null;
            this.f30153b = null;
        }
    }

    @Override
    public Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return n(obj2);
            }
            j jVar = this.waiters;
            if (jVar != j.f30166c) {
                j jVar2 = new j();
                do {
                    jVar2.a(jVar);
                    if (ATOMIC_HELPER.c(this, jVar, jVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                r(jVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return n(obj);
                    }
                    jVar = this.waiters;
                } while (jVar != j.f30166c);
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return n(obj3);
        }
        throw new InterruptedException();
    }
}
