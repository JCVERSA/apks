package com.google.common.util.concurrent;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.b7i;
import defpackage.im5;
import defpackage.j45;
import defpackage.k45;
import defpackage.kj5;
import defpackage.s37;
import defpackage.t0a;
import defpackage.u3;
import defpackage.wt7;
import defpackage.xd8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
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
import org.apache.commons.lang3.BooleanUtils;
import org.mozilla.javascript.ES6Iterator;
import sun.misc.Unsafe;

public abstract class AbstractFuture extends j45 implements im5 {
    private static final b ATOMIC_HELPER;
    static final boolean GENERATE_CANCELLATION_CAUSES;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    static final kj5 log;
    private volatile d listeners;
    private volatile Object value;
    private volatile j waiters;

    public static final class Failure {
        public static final Failure b = new Failure(new Throwable("Failure occurred while trying to finish a future.") {
            @Override
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        public final Throwable a;

        public Failure(Throwable th) {
            this.a = (Throwable) xd8.o(th);
        }
    }

    public static final class SetFuture<V> implements Runnable {
        final im5 future;
        final AbstractFuture owner;

        public SetFuture(AbstractFuture abstractFuture, im5 im5Var) {
            this.owner = abstractFuture;
            this.future = im5Var;
        }

        @Override
        public void run() {
            if (this.owner.value != this) {
                return;
            }
            if (AbstractFuture.ATOMIC_HELPER.b(this.owner, this, AbstractFuture.k(this.future))) {
                AbstractFuture.h(this.owner, false);
            }
        }
    }

    public static abstract class b {
        public b() {
        }

        public abstract boolean a(AbstractFuture abstractFuture, d dVar, d dVar2);

        public abstract boolean b(AbstractFuture abstractFuture, Object obj, Object obj2);

        public abstract boolean c(AbstractFuture abstractFuture, j jVar, j jVar2);

        public abstract d d(AbstractFuture abstractFuture, d dVar);

        public abstract j e(AbstractFuture abstractFuture, j jVar);

        public abstract void f(j jVar, j jVar2);

        public abstract void g(j jVar, Thread thread);
    }

    public static final class c {
        public static final c c;
        public static final c d;
        public final boolean a;
        public final Throwable b;

        static {
            if (AbstractFuture.GENERATE_CANCELLATION_CAUSES) {
                d = null;
                c = null;
            } else {
                d = new c(false, null);
                c = new c(true, null);
            }
        }

        public c(boolean z, Throwable th) {
            this.a = z;
            this.b = th;
        }
    }

    public static final class e extends b {
        public final AtomicReferenceFieldUpdater a;
        public final AtomicReferenceFieldUpdater b;
        public final AtomicReferenceFieldUpdater c;
        public final AtomicReferenceFieldUpdater d;
        public final AtomicReferenceFieldUpdater e;

        public e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override
        public boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return u3.a(this.d, abstractFuture, dVar, dVar2);
        }

        @Override
        public boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return u3.a(this.e, abstractFuture, obj, obj2);
        }

        @Override
        public boolean c(AbstractFuture abstractFuture, j jVar, j jVar2) {
            return u3.a(this.c, abstractFuture, jVar, jVar2);
        }

        @Override
        public d d(AbstractFuture abstractFuture, d dVar) {
            return (d) this.d.getAndSet(abstractFuture, dVar);
        }

        @Override
        public j e(AbstractFuture abstractFuture, j jVar) {
            return (j) this.c.getAndSet(abstractFuture, jVar);
        }

        @Override
        public void f(j jVar, j jVar2) {
            this.b.lazySet(jVar, jVar2);
        }

        @Override
        public void g(j jVar, Thread thread) {
            this.a.lazySet(jVar, thread);
        }
    }

    public static final class f extends b {
        public f() {
            super();
        }

        @Override
        public boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.listeners != dVar) {
                        return false;
                    }
                    abstractFuture.listeners = dVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.value != obj) {
                        return false;
                    }
                    abstractFuture.value = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public boolean c(AbstractFuture abstractFuture, j jVar, j jVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.waiters != jVar) {
                        return false;
                    }
                    abstractFuture.waiters = jVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public d d(AbstractFuture abstractFuture, d dVar) {
            d dVar2;
            synchronized (abstractFuture) {
                try {
                    dVar2 = abstractFuture.listeners;
                    if (dVar2 != dVar) {
                        abstractFuture.listeners = dVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return dVar2;
        }

        @Override
        public j e(AbstractFuture abstractFuture, j jVar) {
            j jVar2;
            synchronized (abstractFuture) {
                try {
                    jVar2 = abstractFuture.waiters;
                    if (jVar2 != jVar) {
                        abstractFuture.waiters = jVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return jVar2;
        }

        @Override
        public void f(j jVar, j jVar2) {
            jVar.b = jVar2;
        }

        @Override
        public void g(j jVar, Thread thread) {
            jVar.a = thread;
        }
    }

    public interface g extends im5 {
    }

    public static abstract class h extends AbstractFuture implements g {
        @Override
        public void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override
        public boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override
        public Object get() throws ExecutionException, InterruptedException {
            return super.get();
        }

        @Override
        public boolean isCancelled() {
            return super.isCancelled();
        }

        @Override
        public final boolean isDone() {
            return super.isDone();
        }

        @Override
        public final Object get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return super.get(j, timeUnit);
        }
    }

    public static final class i extends b {
        public static final Unsafe a;
        public static final long b;
        public static final long c;
        public static final long d;
        public static final long e;
        public static final long f;

        public class a implements PrivilegedExceptionAction {
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
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                c = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("waiters"));
                b = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("listeners"));
                d = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(ES6Iterator.VALUE_PROPERTY));
                e = unsafe.objectFieldOffset(j.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
                f = unsafe.objectFieldOffset(j.class.getDeclaredField("b"));
                a = unsafe;
            } catch (NoSuchFieldException e3) {
                throw new RuntimeException(e3);
            }
        }

        public i() {
            super();
        }

        @Override
        public boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return b7i.a(a, abstractFuture, b, dVar, dVar2);
        }

        @Override
        public boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return b7i.a(a, abstractFuture, d, obj, obj2);
        }

        @Override
        public boolean c(AbstractFuture abstractFuture, j jVar, j jVar2) {
            return b7i.a(a, abstractFuture, c, jVar, jVar2);
        }

        @Override
        public d d(AbstractFuture abstractFuture, d dVar) {
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
        public j e(AbstractFuture abstractFuture, j jVar) {
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
        public void f(j jVar, j jVar2) {
            a.putObject(jVar, f, jVar2);
        }

        @Override
        public void g(j jVar, Thread thread) {
            a.putObject(jVar, e, thread);
        }
    }

    public static final class j {
        public static final j c = new j(false);
        public volatile Thread a;
        public volatile j b;

        public j(boolean z) {
        }

        public void a(j jVar) {
            AbstractFuture.ATOMIC_HELPER.f(this, jVar);
        }

        public void b() {
            Thread thread = this.a;
            if (thread != null) {
                this.a = null;
                LockSupport.unpark(thread);
            }
        }

        public j() {
            AbstractFuture.ATOMIC_HELPER.g(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.common.util.concurrent.AbstractFuture$a] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v9 */
    static {
        boolean z;
        b fVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", BooleanUtils.FALSE));
        } catch (SecurityException unused) {
            z = false;
        }
        GENERATE_CANCELLATION_CAUSES = z;
        log = new kj5(AbstractFuture.class);
        ?? r1 = 0;
        r1 = 0;
        try {
            fVar = new i();
            e = null;
        } catch (Error | Exception e2) {
            e = e2;
            try {
                fVar = new e(AtomicReferenceFieldUpdater.newUpdater(j.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(j.class, j.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, j.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, d.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, ES6Iterator.VALUE_PROPERTY));
            } catch (Error | Exception e3) {
                fVar = new f();
                r1 = e3;
            }
        }
        ATOMIC_HELPER = fVar;
        if (r1 != 0) {
            kj5 kj5Var = log;
            Logger loggerA = kj5Var.a();
            Level level = Level.SEVERE;
            loggerA.log(level, "UnsafeAtomicHelper is broken!", e);
            kj5Var.a().log(level, "SafeAtomicHelper is broken!", r1);
        }
        NULL = new Object();
    }

    public static CancellationException f(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public static void h(AbstractFuture abstractFuture, boolean z) {
        d dVar = null;
        while (true) {
            abstractFuture.m();
            if (z) {
                abstractFuture.interruptTask();
                z = false;
            }
            abstractFuture.afterDone();
            d dVarG = abstractFuture.g(dVar);
            while (dVarG != null) {
                dVar = dVarG.c;
                Runnable runnable = dVarG.a;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable2;
                    abstractFuture = setFuture.owner;
                    if (abstractFuture.value == setFuture) {
                        if (ATOMIC_HELPER.b(abstractFuture, setFuture, k(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = dVarG.b;
                    Objects.requireNonNull(executor);
                    i(runnable2, executor);
                }
                dVarG = dVar;
            }
            return;
        }
    }

    public static void i(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            log.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object k(im5 im5Var) {
        Throwable thA;
        if (im5Var instanceof g) {
            Object cVar = ((AbstractFuture) im5Var).value;
            if (cVar instanceof c) {
                c cVar2 = (c) cVar;
                if (cVar2.a) {
                    cVar = cVar2.b != null ? new c(false, cVar2.b) : c.d;
                }
            }
            Objects.requireNonNull(cVar);
            return cVar;
        }
        if ((im5Var instanceof j45) && (thA = k45.a((j45) im5Var)) != null) {
            return new Failure(thA);
        }
        boolean zIsCancelled = im5Var.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            c cVar3 = c.d;
            Objects.requireNonNull(cVar3);
            return cVar3;
        }
        try {
            Object objL = l(im5Var);
            if (!zIsCancelled) {
                return objL == null ? NULL : objL;
            }
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + im5Var));
        } catch (Error | Exception e2) {
            return new Failure(e2);
        } catch (CancellationException e3) {
            if (zIsCancelled) {
                return new c(false, e3);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + im5Var, e3));
        } catch (ExecutionException e4) {
            if (!zIsCancelled) {
                return new Failure(e4.getCause());
            }
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + im5Var, e4));
        }
    }

    private static Object l(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        try {
            Object objL = l(this);
            sb.append("SUCCESS, result=[");
            d(sb, objL);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        } catch (Exception e3) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e3.getClass());
            sb.append(" thrown from get()]");
        }
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        d dVar;
        xd8.p(runnable, "Runnable was null.");
        xd8.p(executor, "Executor was null.");
        if (!isDone() && (dVar = this.listeners) != d.d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.c = dVar;
                if (ATOMIC_HELPER.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.listeners;
                }
            } while (dVar != d.d);
        }
        i(runnable, executor);
    }

    public void afterDone() {
    }

    public final void c(StringBuilder sb) {
        String strA;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            sb.append(", setFuture=[");
            e(sb, ((SetFuture) obj).future);
            sb.append("]");
        } else {
            try {
                strA = t0a.a(pendingToString());
            } catch (Exception | StackOverflowError e2) {
                strA = "Exception thrown from implementation: " + e2.getClass();
            }
            if (strA != null) {
                sb.append(", info=[");
                sb.append(strA);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            a(sb);
        }
    }

    @Override
    public boolean cancel(boolean z) {
        c cVar;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (GENERATE_CANCELLATION_CAUSES) {
            cVar = new c(z, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z ? c.c : c.d;
            Objects.requireNonNull(cVar);
        }
        boolean z2 = false;
        while (true) {
            if (ATOMIC_HELPER.b(this, obj, cVar)) {
                h(this, z);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                im5 im5Var = ((SetFuture) obj).future;
                if (!(im5Var instanceof g)) {
                    im5Var.cancel(z);
                    return true;
                }
                this = (AbstractFuture) im5Var;
                obj = this.value;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = this.value;
                if (!(obj instanceof SetFuture)) {
                    return z2;
                }
            }
        }
    }

    public final void d(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    public final void e(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (Exception | StackOverflowError e2) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e2.getClass());
        }
    }

    public final d g(d dVar) {
        d dVarD = ATOMIC_HELPER.d(this, d.d);
        d dVar2 = dVar;
        while (dVarD != null) {
            d dVar3 = dVarD.c;
            dVarD.c = dVar2;
            dVar2 = dVarD;
            dVarD = dVar3;
        }
        return dVar2;
    }

    @Override
    public Object get(long j2, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return j(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            j jVar = this.waiters;
            if (jVar != j.c) {
                j jVar2 = new j();
                while (true) {
                    jVar2.a(jVar);
                    if (ATOMIC_HELPER.c(this, jVar, jVar2)) {
                        do {
                            wt7.a(this, nanos);
                            if (Thread.interrupted()) {
                                n(jVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return j(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        n(jVar2);
                        break;
                    }
                    jVar = this.waiters;
                    if (jVar == j.c) {
                    }
                }
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return j(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.value;
            if ((obj4 != null) && (!(obj4 instanceof SetFuture))) {
                return j(obj4);
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
        String str = "Waited " + j2 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + " " + lowerCase;
                if (z) {
                    str3 = str3 + StringUtils.COMMA;
                }
                str2 = str3 + " ";
            }
            if (z) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new TimeoutException(str + " but future completed as timeout expired");
        }
        throw new TimeoutException(str + " for " + string);
    }

    public void interruptTask() {
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

    public final Object j(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw f("Task was cancelled.", ((c) obj).b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).a);
        }
        return obj == NULL ? s37.b() : obj;
    }

    public final void m() {
        for (j jVarE = ATOMIC_HELPER.e(this, j.c); jVarE != null; jVarE = jVarE.b) {
            jVarE.b();
        }
    }

    public final void maybePropagateCancellationTo(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    public final void n(j jVar) {
        jVar.a = null;
        while (true) {
            j jVar2 = this.waiters;
            if (jVar2 == j.c) {
                return;
            }
            j jVar3 = null;
            while (jVar2 != null) {
                j jVar4 = jVar2.b;
                if (jVar2.a != null) {
                    jVar3 = jVar2;
                } else if (jVar3 != null) {
                    jVar3.b = jVar4;
                    if (jVar3.a == null) {
                    }
                } else if (!ATOMIC_HELPER.c(this, jVar2, jVar4)) {
                }
                jVar2 = jVar4;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String pendingToString() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean set(Object obj) {
        if (obj == null) {
            obj = NULL;
        }
        if (!ATOMIC_HELPER.b(this, null, obj)) {
            return false;
        }
        h(this, false);
        return true;
    }

    public boolean setException(Throwable th) {
        if (!ATOMIC_HELPER.b(this, null, new Failure((Throwable) xd8.o(th)))) {
            return false;
        }
        h(this, false);
        return true;
    }

    public boolean setFuture(im5 im5Var) {
        Failure failure;
        xd8.o(im5Var);
        Object obj = this.value;
        if (obj == null) {
            if (im5Var.isDone()) {
                if (!ATOMIC_HELPER.b(this, null, k(im5Var))) {
                    return false;
                }
                h(this, false);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, im5Var);
            if (ATOMIC_HELPER.b(this, null, setFuture)) {
                try {
                    im5Var.addListener(setFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Error | Exception unused) {
                        failure = Failure.b;
                    }
                    ATOMIC_HELPER.b(this, setFuture, failure);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof c) {
            im5Var.cancel(((c) obj).a);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            c(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override
    public final Throwable tryInternalFastPathGetFailure() {
        if (!(this instanceof g)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof Failure) {
            return ((Failure) obj).a;
        }
        return null;
    }

    public final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof c) && ((c) obj).a;
    }

    public static final class d {
        public static final d d = new d();
        public final Runnable a;
        public final Executor b;
        public d c;

        public d(Runnable runnable, Executor executor) {
            this.a = runnable;
            this.b = executor;
        }

        public d() {
            this.a = null;
            this.b = null;
        }
    }

    @Override
    public Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return j(obj2);
            }
            j jVar = this.waiters;
            if (jVar != j.c) {
                j jVar2 = new j();
                do {
                    jVar2.a(jVar);
                    if (ATOMIC_HELPER.c(this, jVar, jVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                n(jVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return j(obj);
                    }
                    jVar = this.waiters;
                } while (jVar != j.c);
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return j(obj3);
        }
        throw new InterruptedException();
    }
}
