package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

class c1 {

    private static final long f31226i = TimeUnit.HOURS.toSeconds(8);

    private final Context f31227a;

    private final j0 f31228b;

    private final e0 f31229c;

    private final FirebaseMessaging f31230d;

    private final ScheduledExecutorService f31232f;

    private final a1 f31234h;

    private final Map f31231e = new androidx.collection.a();

    private boolean f31233g = false;

    private c1(FirebaseMessaging firebaseMessaging, j0 j0Var, a1 a1Var, e0 e0Var, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f31230d = firebaseMessaging;
        this.f31228b = j0Var;
        this.f31234h = a1Var;
        this.f31229c = e0Var;
        this.f31227a = context;
        this.f31232f = scheduledExecutorService;
    }

    private void b(z0 z0Var, TaskCompletionSource taskCompletionSource) {
        ArrayDeque arrayDeque;
        synchronized (this.f31231e) {
            try {
                String strE = z0Var.e();
                if (this.f31231e.containsKey(strE)) {
                    arrayDeque = (ArrayDeque) this.f31231e.get(strE);
                } else {
                    ArrayDeque arrayDeque2 = new ArrayDeque();
                    this.f31231e.put(strE, arrayDeque2);
                    arrayDeque = arrayDeque2;
                }
                arrayDeque.add(taskCompletionSource);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void c(Task task) throws IOException {
        try {
            Tasks.await(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e11);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e12) {
            e = e12;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    private void d(String str) throws IOException {
        c(this.f31229c.m(this.f31230d.m(), str));
    }

    private void e(String str) throws IOException {
        c(this.f31229c.n(this.f31230d.m(), str));
    }

    static Task f(final FirebaseMessaging firebaseMessaging, final j0 j0Var, final e0 e0Var, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable() {
            @Override
            public final Object call() {
                return c1.j(context, scheduledExecutorService, firebaseMessaging, j0Var, e0Var);
            }
        });
    }

    static boolean h() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    public static c1 j(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, j0 j0Var, e0 e0Var) {
        return new c1(firebaseMessaging, j0Var, a1.b(context, scheduledExecutorService), e0Var, context, scheduledExecutorService);
    }

    private void k(z0 z0Var) {
        synchronized (this.f31231e) {
            try {
                String strE = z0Var.e();
                if (this.f31231e.containsKey(strE)) {
                    ArrayDeque arrayDeque = (ArrayDeque) this.f31231e.get(strE);
                    TaskCompletionSource taskCompletionSource = (TaskCompletionSource) arrayDeque.poll();
                    if (taskCompletionSource != null) {
                        taskCompletionSource.setResult(null);
                    }
                    if (arrayDeque.isEmpty()) {
                        this.f31231e.remove(strE);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void p() {
        if (i()) {
            return;
        }
        t(0L);
    }

    boolean g() {
        return this.f31234h.c() != null;
    }

    synchronized boolean i() {
        return this.f31233g;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    boolean l(z0 z0Var) throws IOException {
        byte b10;
        try {
            String strB = z0Var.b();
            int iHashCode = strB.hashCode();
            if (iHashCode != 83) {
                if (iHashCode == 85 && strB.equals("U")) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
            } else if (strB.equals("S")) {
                b10 = 0;
            } else {
                b10 = -1;
            }
            if (b10 == 0) {
                d(z0Var.c());
                if (h()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Subscribe to topic: ");
                    sb2.append(z0Var.c());
                    sb2.append(" succeeded.");
                }
            } else if (b10 == 1) {
                e(z0Var.c());
                if (h()) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Unsubscribe from topic: ");
                    sb3.append(z0Var.c());
                    sb3.append(" succeeded.");
                }
            } else if (h()) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Unknown topic operation");
                sb4.append(z0Var);
                sb4.append(".");
            }
            return true;
        } catch (IOException e10) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e10.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e10.getMessage()) && !"TOO_MANY_SUBSCRIBERS".equals(e10.getMessage())) {
                if (e10.getMessage() != null) {
                    throw e10;
                }
                Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            }
            Log.e("FirebaseMessaging", "Topic operation failed: " + e10.getMessage() + ". Will retry Topic operation.");
            return false;
        }
    }

    void m(Runnable runnable, long j10) {
        this.f31232f.schedule(runnable, j10, TimeUnit.SECONDS);
    }

    Task n(z0 z0Var) {
        this.f31234h.a(z0Var);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        b(z0Var, taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    synchronized void o(boolean z10) {
        this.f31233g = z10;
    }

    void q() {
        if (g()) {
            p();
        }
    }

    Task r(String str) {
        Task taskN = n(z0.f(str));
        q();
        return taskN;
    }

    boolean s() {
        while (true) {
            synchronized (this) {
                try {
                    z0 z0VarC = this.f31234h.c();
                    if (z0VarC == null) {
                        h();
                        return true;
                    }
                    if (!l(z0VarC)) {
                        return false;
                    }
                    this.f31234h.e(z0VarC);
                    k(z0VarC);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    void t(long j10) {
        m(new TopicsSyncTask(this, this.f31227a, this.f31228b, Math.min(Math.max(30L, 2 * j10), f31226i)), j10);
        o(true);
    }

    Task u(String str) {
        Task taskN = n(z0.g(str));
        q();
        return taskN;
    }
}
