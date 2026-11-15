package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;

class u0 {

    private final Executor f31340a;

    private final Map f31341b = new androidx.collection.a();

    interface a {
        Task start();
    }

    u0(Executor executor) {
        this.f31340a = executor;
    }

    public Task c(String str, Task task) {
        synchronized (this) {
            this.f31341b.remove(str);
        }
        return task;
    }

    synchronized Task b(final String str, a aVar) {
        Task task = (Task) this.f31341b.get(str);
        if (task != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Joining ongoing request for: ");
                sb2.append(str);
            }
            return task;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Making new request for: ");
            sb3.append(str);
        }
        Task taskContinueWithTask = aVar.start().continueWithTask(this.f31340a, new Continuation() {
            @Override
            public final Object then(Task task2) {
                return this.f31337a.c(str, task2);
            }
        });
        this.f31341b.put(str, taskContinueWithTask);
        return taskContinueWithTask;
    }
}
