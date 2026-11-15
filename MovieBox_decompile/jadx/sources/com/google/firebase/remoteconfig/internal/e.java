package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class e {

    private static final Map f31669d = new HashMap();

    private static final Executor f31670e = new v3.m();

    private final Executor f31671a;

    private final r f31672b;

    private Task f31673c = null;

    private static class b implements OnSuccessListener, OnFailureListener, OnCanceledListener {

        private final CountDownLatch f31674a;

        private b() {
            this.f31674a = new CountDownLatch(1);
        }

        public boolean a(long j10, TimeUnit timeUnit) {
            return this.f31674a.await(j10, timeUnit);
        }

        @Override
        public void onCanceled() {
            this.f31674a.countDown();
        }

        @Override
        public void onFailure(Exception exc) {
            this.f31674a.countDown();
        }

        @Override
        public void onSuccess(Object obj) {
            this.f31674a.countDown();
        }
    }

    private e(Executor executor, r rVar) {
        this.f31671a = executor;
        this.f31672b = rVar;
    }

    private static Object c(Task task, long j10, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        b bVar = new b();
        Executor executor = f31670e;
        task.addOnSuccessListener(executor, bVar);
        task.addOnFailureListener(executor, bVar);
        task.addOnCanceledListener(executor, bVar);
        if (!bVar.a(j10, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }

    public static synchronized e h(Executor executor, r rVar) {
        String strB;
        Map map;
        try {
            strB = rVar.b();
            map = f31669d;
            if (!map.containsKey(strB)) {
                map.put(strB, new e(executor, rVar));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (e) map.get(strB);
    }

    public Void i(f fVar) {
        return this.f31672b.e(fVar);
    }

    public Task j(boolean z10, f fVar, Void r10) {
        if (z10) {
            m(fVar);
        }
        return Tasks.forResult(fVar);
    }

    private synchronized void m(f fVar) {
        this.f31673c = Tasks.forResult(fVar);
    }

    public void d() {
        synchronized (this) {
            this.f31673c = Tasks.forResult(null);
        }
        this.f31672b.a();
    }

    public synchronized Task e() {
        try {
            Task task = this.f31673c;
            if (task == null || (task.isComplete() && !this.f31673c.isSuccessful())) {
                Executor executor = this.f31671a;
                final r rVar = this.f31672b;
                Objects.requireNonNull(rVar);
                this.f31673c = Tasks.call(executor, new Callable() {
                    @Override
                    public final Object call() {
                        return rVar.d();
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f31673c;
    }

    public f f() {
        return g(5L);
    }

    f g(long j10) {
        synchronized (this) {
            try {
                Task task = this.f31673c;
                if (task == null || !task.isSuccessful()) {
                    try {
                        return (f) c(e(), j10, TimeUnit.SECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                        return null;
                    }
                }
                return (f) this.f31673c.getResult();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Task k(f fVar) {
        return l(fVar, true);
    }

    public Task l(final f fVar, final boolean z10) {
        return Tasks.call(this.f31671a, new Callable() {
            @Override
            public final Object call() {
                return this.f31664a.i(fVar);
            }
        }).onSuccessTask(this.f31671a, new SuccessContinuation() {
            @Override
            public final Task then(Object obj) {
                return this.f31666a.j(z10, fVar, (Void) obj);
            }
        });
    }
}
