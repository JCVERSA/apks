package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ExecutorService;

@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
public abstract class EnhancedIntentService extends Service {

    private Binder f31134b;

    private int f31136d;

    final ExecutorService f31133a = n.d();

    private final Object f31135c = new Object();

    private int f31137e = 0;

    class a implements g1.a {
        a() {
        }

        @Override
        public Task a(Intent intent) {
            return EnhancedIntentService.this.j(intent);
        }
    }

    private void d(Intent intent) {
        if (intent != null) {
            e1.c(intent);
        }
        synchronized (this.f31135c) {
            try {
                int i10 = this.f31137e - 1;
                this.f31137e = i10;
                if (i10 == 0) {
                    k(this.f31136d);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void h(Intent intent, Task task) {
        d(intent);
    }

    public void i(Intent intent, TaskCompletionSource taskCompletionSource) {
        try {
            f(intent);
        } finally {
            taskCompletionSource.setResult(null);
        }
    }

    public Task j(final Intent intent) {
        if (g(intent)) {
            return Tasks.forResult(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f31133a.execute(new Runnable() {
            @Override
            public final void run() {
                this.f31263a.i(intent, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    protected Intent e(Intent intent) {
        return intent;
    }

    public abstract void f(Intent intent);

    public boolean g(Intent intent) {
        return false;
    }

    boolean k(int i10) {
        return stopSelfResult(i10);
    }

    @Override
    public final synchronized IBinder onBind(Intent intent) {
        try {
            Log.isLoggable("EnhancedIntentService", 3);
            if (this.f31134b == null) {
                this.f31134b = new g1(new a());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f31134b;
    }

    @Override
    public void onDestroy() {
        this.f31133a.shutdown();
        super.onDestroy();
    }

    @Override
    public final int onStartCommand(final Intent intent, int i10, int i11) {
        synchronized (this.f31135c) {
            this.f31136d = i11;
            this.f31137e++;
        }
        Intent intentE = e(intent);
        if (intentE == null) {
            d(intent);
            return 2;
        }
        Task taskJ = j(intentE);
        if (taskJ.isComplete()) {
            d(intent);
            return 2;
        }
        taskJ.addOnCompleteListener(new v3.m(), new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                this.f31257a.h(intent, task);
            }
        });
        return 3;
    }
}
