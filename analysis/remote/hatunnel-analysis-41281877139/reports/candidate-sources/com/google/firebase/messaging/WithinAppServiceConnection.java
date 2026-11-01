package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class WithinAppServiceConnection implements ServiceConnection {
    private WithinAppServiceBinder binder;
    private boolean connectionInProgress;
    private final Intent connectionIntent;
    private final Context context;
    private final Queue<BindRequest> intentQueue;
    private final ScheduledExecutorService scheduledExecutorService;

    static class BindRequest {
        final Intent intent;
        private final TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();

        BindRequest(Intent intent) {
            this.intent = intent;
        }

        static void lambda$arrangeTimeout$1(ScheduledFuture scheduledFuture, Task task) {
            scheduledFuture.cancel(false);
        }

        void arrangeTimeout(ScheduledExecutorService scheduledExecutorService) {
            getTask().addOnCompleteListener(scheduledExecutorService, new WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda1(scheduledExecutorService.schedule(new WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0(this), 20L, TimeUnit.SECONDS)));
        }

        void finish() {
            this.taskCompletionSource.trySetResult(null);
        }

        Task<Void> getTask() {
            return this.taskCompletionSource.getTask();
        }

        void m758x9cf97a38() {
            String str = ProtectedFastSSH.s("餕") + this.intent.getAction() + ProtectedFastSSH.s("餖");
            ProtectedFastSSH.s("餗");
            finish();
        }
    }

    WithinAppServiceConnection(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new NamedThreadFactory(ProtectedFastSSH.s("餘"))));
    }

    WithinAppServiceConnection(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.intentQueue = new ArrayDeque();
        this.connectionInProgress = false;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.connectionIntent = new Intent(str).setPackage(applicationContext.getPackageName());
        this.scheduledExecutorService = scheduledExecutorService;
    }

    private void finishAllInQueue() {
        while (!this.intentQueue.isEmpty()) {
            this.intentQueue.poll().finish();
        }
    }

    private synchronized void flushQueue() {
        if (Log.isLoggable(ProtectedFastSSH.s("餙"), 3)) {
            ProtectedFastSSH.s("餙");
            ProtectedFastSSH.s("餚");
        }
        while (!this.intentQueue.isEmpty()) {
            if (Log.isLoggable(ProtectedFastSSH.s("餙"), 3)) {
                ProtectedFastSSH.s("餙");
                ProtectedFastSSH.s("餛");
            }
            WithinAppServiceBinder withinAppServiceBinder = this.binder;
            if (withinAppServiceBinder == null || !withinAppServiceBinder.isBinderAlive()) {
                startConnectionIfNeeded();
                return;
            }
            if (Log.isLoggable(ProtectedFastSSH.s("餙"), 3)) {
                ProtectedFastSSH.s("餙");
                ProtectedFastSSH.s("餜");
            }
            this.binder.send(this.intentQueue.poll());
        }
    }

    private void startConnectionIfNeeded() {
        if (Log.isLoggable(ProtectedFastSSH.s("餙"), 3)) {
            StringBuilder sb = new StringBuilder(ProtectedFastSSH.s("餝"));
            sb.append(!this.connectionInProgress);
            sb.toString();
        }
        if (this.connectionInProgress) {
            return;
        }
        this.connectionInProgress = true;
        try {
            if (ConnectionTracker.getInstance().bindService(this.context, this.connectionIntent, this, 65)) {
                return;
            } else {
                ProtectedFastSSH.s("餞");
            }
        } catch (SecurityException e) {
            ProtectedFastSSH.s("餟");
        }
        this.connectionInProgress = false;
        finishAllInQueue();
    }

    @Override
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String strS = ProtectedFastSSH.s("餠");
        String strS2 = ProtectedFastSSH.s("餡");
        synchronized (this) {
            if (Log.isLoggable(ProtectedFastSSH.s("餙"), 3)) {
                ProtectedFastSSH.s("餙");
                String str = strS2 + componentName;
            }
            this.connectionInProgress = false;
            if (iBinder instanceof WithinAppServiceBinder) {
                this.binder = (WithinAppServiceBinder) iBinder;
                flushQueue();
                return;
            }
            ProtectedFastSSH.s("餙");
            String str2 = strS + iBinder;
            finishAllInQueue();
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable(ProtectedFastSSH.s("餙"), 3)) {
            String str = ProtectedFastSSH.s("餢") + componentName;
        }
        flushQueue();
    }

    synchronized Task<Void> sendIntent(Intent intent) {
        BindRequest bindRequest;
        if (Log.isLoggable(ProtectedFastSSH.s("餙"), 3)) {
            ProtectedFastSSH.s("餙");
            ProtectedFastSSH.s("餣");
        }
        bindRequest = new BindRequest(intent);
        bindRequest.arrangeTimeout(this.scheduledExecutorService);
        this.intentQueue.add(bindRequest);
        flushQueue();
        return bindRequest.getTask();
    }
}
