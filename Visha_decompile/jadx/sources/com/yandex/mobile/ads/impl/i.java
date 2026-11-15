package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.BooleanUtils;

public abstract class i<V> extends rp0 implements Future {
    private static final boolean e;
    private static final Logger f;
    private static final a g;
    private static final Object h;
    private volatile Object b;
    private volatile d c;
    private volatile C0317i d;

    public static abstract class a {
        public abstract void a(C0317i c0317i, C0317i c0317i2);

        public abstract void a(C0317i c0317i, Thread thread);

        public abstract boolean a(i<?> iVar, d dVar, d dVar2);

        public abstract boolean a(i<?> iVar, C0317i c0317i, C0317i c0317i2);

        public abstract boolean a(i<?> iVar, Object obj, Object obj2);

        private a() {
        }
    }

    public static final class b {
        static final b b;
        static final b c;
        final Throwable a;

        static {
            if (i.e) {
                c = null;
                b = null;
            } else {
                c = new b(false, null);
                b = new b(true, null);
            }
        }

        public b(boolean z, Throwable th) {
            this.a = th;
        }
    }

    public static final class c {
        final Throwable a;

        public class a extends Throwable {
            public a() {
                super("Failure occurred while trying to finish a future.");
            }

            @Override
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new c(new a());
        }

        public c(Throwable th) {
            this.a = (Throwable) vj1.a(th);
        }
    }

    public static final class d {
        static final d b = new d();
        d a;
    }

    public static final class e extends a {
        final AtomicReferenceFieldUpdater<C0317i, Thread> a;
        final AtomicReferenceFieldUpdater<C0317i, C0317i> b;
        final AtomicReferenceFieldUpdater<i, C0317i> c;
        final AtomicReferenceFieldUpdater<i, d> d;
        final AtomicReferenceFieldUpdater<i, Object> e;

        public e(AtomicReferenceFieldUpdater<C0317i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C0317i, C0317i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<i, C0317i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<i, d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<i, Object> atomicReferenceFieldUpdater5) {
            super();
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override
        public final boolean a(i<?> iVar, d dVar, d dVar2) {
            return defpackage.u3.a(this.d, iVar, dVar, dVar2);
        }

        @Override
        public final boolean a(i<?> iVar, Object obj, Object obj2) {
            return defpackage.u3.a(this.e, iVar, obj, obj2);
        }

        @Override
        public final boolean a(i<?> iVar, C0317i c0317i, C0317i c0317i2) {
            return defpackage.u3.a(this.c, iVar, c0317i, c0317i2);
        }

        @Override
        public final void a(C0317i c0317i, C0317i c0317i2) {
            this.b.lazySet(c0317i, c0317i2);
        }

        @Override
        public final void a(C0317i c0317i, Thread thread) {
            this.a.lazySet(c0317i, thread);
        }
    }

    public static final class f<V> implements Runnable {
        @Override
        public final void run() {
            throw null;
        }
    }

    public static final class g extends a {
        @Override
        public final boolean a(i<?> iVar, d dVar, d dVar2) {
            synchronized (iVar) {
                try {
                    if (((i) iVar).c != dVar) {
                        return false;
                    }
                    ((i) iVar).c = dVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private g() {
            super();
        }

        @Override
        public final boolean a(i<?> iVar, Object obj, Object obj2) {
            synchronized (iVar) {
                try {
                    if (((i) iVar).b != obj) {
                        return false;
                    }
                    ((i) iVar).b = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public final boolean a(i<?> iVar, C0317i c0317i, C0317i c0317i2) {
            synchronized (iVar) {
                try {
                    if (((i) iVar).d != c0317i) {
                        return false;
                    }
                    ((i) iVar).d = c0317i2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public final void a(C0317i c0317i, C0317i c0317i2) {
            c0317i.b = c0317i2;
        }

        @Override
        public final void a(C0317i c0317i, Thread thread) {
            c0317i.a = thread;
        }
    }

    public static abstract class h<V> extends i<V> implements Future {
        @Override
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override
        public V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override
        public final boolean isCancelled() {
            return ((i) this).b instanceof b;
        }

        @Override
        public final boolean isDone() {
            return super.isDone();
        }

        @Override
        public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z;
        a gVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", BooleanUtils.FALSE));
        } catch (SecurityException unused) {
            z = false;
        }
        e = z;
        f = Logger.getLogger(i.class.getName());
        Throwable th = null;
        Object[] objArr = 0;
        try {
            gVar = new e(AtomicReferenceFieldUpdater.newUpdater(C0317i.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(C0317i.class, C0317i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(i.class, C0317i.class, "d"), AtomicReferenceFieldUpdater.newUpdater(i.class, d.class, "c"), AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "b"));
        } catch (Throwable th2) {
            gVar = new g();
            th = th2;
        }
        g = gVar;
        if (th != null) {
            f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        h = new Object();
    }

    private void a(StringBuilder sb) {
        V v;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e3) {
                sb.append("FAILURE, cause=[");
                sb.append(e3.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        a(sb, v);
        sb.append("]");
    }

    public boolean b(V v) {
        if (!g.a((i<?>) this, (Object) null, (Object) v)) {
            return false;
        }
        a((i<?>) this);
        return true;
    }

    @Override
    public boolean cancel(boolean z) {
        b bVar;
        Object obj = this.b;
        if ((obj == null) | (obj instanceof f)) {
            if (e) {
                bVar = new b(z, new CancellationException("Future.cancel() was called."));
            } else {
                bVar = z ? b.b : b.c;
                Objects.requireNonNull(bVar);
            }
            while (!g.a((i<?>) this, obj, (Object) bVar)) {
                obj = this.b;
                if (!(obj instanceof f)) {
                }
            }
            a((i<?>) this);
            if (!(obj instanceof f)) {
                return true;
            }
            ((f) obj).getClass();
            throw null;
        }
        return false;
    }

    @Override
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.b;
        if ((obj != null) && (!(obj instanceof f))) {
            return (V) a(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            C0317i c0317i = this.d;
            if (c0317i != C0317i.c) {
                C0317i c0317i2 = new C0317i();
                while (true) {
                    a aVar = g;
                    aVar.a(c0317i2, c0317i);
                    if (aVar.a((i<?>) this, c0317i, c0317i2)) {
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                a(c0317i2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.b;
                            if ((obj2 != null) && (!(obj2 instanceof f))) {
                                return (V) a(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        a(c0317i2);
                        break;
                    }
                    c0317i = this.d;
                    if (c0317i == C0317i.c) {
                    }
                }
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return (V) a(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.b;
            if ((obj4 != null) && (!(obj4 instanceof f))) {
                return (V) a(obj4);
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
        String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
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

    @Override
    public boolean isCancelled() {
        return this.b instanceof b;
    }

    @Override
    public boolean isDone() {
        Object obj = this.b;
        return (!(obj instanceof f)) & (obj != null);
    }

    public final String toString() {
        String strA;
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
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.b;
            if (obj instanceof f) {
                sb.append(", setFuture=[");
                ((f) obj).getClass();
                try {
                    sb.append((Object) null);
                } catch (RuntimeException | StackOverflowError e2) {
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e2.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strA = i32.a(a());
                } catch (RuntimeException | StackOverflowError e3) {
                    strA = "Exception thrown from implementation: " + e3.getClass();
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
        sb.append("]");
        return sb.toString();
    }

    public static final class C0317i {
        static final C0317i c = new C0317i(0);
        volatile Thread a;
        volatile C0317i b;

        public C0317i() {
            i.g.a(this, Thread.currentThread());
        }

        public C0317i(int i) {
        }
    }

    private void a(StringBuilder sb, Object obj) {
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

    private static void a(i<?> iVar) {
        C0317i c0317i;
        d dVar;
        do {
            c0317i = ((i) iVar).d;
        } while (!g.a(iVar, c0317i, C0317i.c));
        while (c0317i != null) {
            Thread thread = c0317i.a;
            if (thread != null) {
                c0317i.a = null;
                LockSupport.unpark(thread);
            }
            c0317i = c0317i.b;
        }
        do {
            dVar = ((i) iVar).c;
        } while (!g.a(iVar, dVar, d.b));
        d dVar2 = null;
        while (dVar != null) {
            d dVar3 = dVar.a;
            dVar.a = dVar2;
            dVar2 = dVar;
            dVar = dVar3;
        }
        if (dVar2 != null) {
            throw null;
        }
    }

    private static Object a(Object obj) throws ExecutionException {
        if (!(obj instanceof b)) {
            if (!(obj instanceof c)) {
                if (obj == h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((c) obj).a);
        }
        Throwable th = ((b) obj).a;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    private void a(C0317i c0317i) {
        c0317i.a = null;
        while (true) {
            C0317i c0317i2 = this.d;
            if (c0317i2 == C0317i.c) {
                return;
            }
            C0317i c0317i3 = null;
            while (c0317i2 != null) {
                C0317i c0317i4 = c0317i2.b;
                if (c0317i2.a != null) {
                    c0317i3 = c0317i2;
                } else if (c0317i3 != null) {
                    c0317i3.b = c0317i4;
                    if (c0317i3.a == null) {
                    }
                } else if (!g.a((i<?>) this, c0317i2, c0317i4)) {
                }
                c0317i2 = c0317i4;
            }
            return;
        }
    }

    @Override
    public V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.b;
            if ((obj2 != null) & (!(obj2 instanceof f))) {
                return (V) a(obj2);
            }
            C0317i c0317i = this.d;
            if (c0317i != C0317i.c) {
                C0317i c0317i2 = new C0317i();
                do {
                    a aVar = g;
                    aVar.a(c0317i2, c0317i);
                    if (aVar.a((i<?>) this, c0317i, c0317i2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.b;
                            } else {
                                a(c0317i2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof f))));
                        return (V) a(obj);
                    }
                    c0317i = this.d;
                } while (c0317i != C0317i.c);
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return (V) a(obj3);
        }
        throw new InterruptedException();
    }

    public boolean a(Throwable th) {
        if (!g.a((i<?>) this, (Object) null, (Object) new c(th))) {
            return false;
        }
        a((i<?>) this);
        return true;
    }
}
