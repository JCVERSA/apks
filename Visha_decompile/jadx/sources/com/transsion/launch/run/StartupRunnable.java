package com.transsion.launch.run;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import defpackage.pw9;
import defpackage.qw9;

public class StartupRunnable implements Runnable {
    private String TAG = "StartupRunnable";
    private Context context;
    private pw9 startup;
    private qw9 startupManager;

    public StartupRunnable(Context context, pw9 pw9Var, qw9 qw9Var) {
        this.context = context;
        this.startup = pw9Var;
        this.startupManager = qw9Var;
    }

    @Override
    public void run() {
        Process.setThreadPriority(this.startup.f());
        this.startup.d();
        Log.w(this.TAG, "task_start_" + this.startup.getClass().getSimpleName());
        try {
            this.startup.create(this.context);
            Log.w(this.TAG, "task_end_" + this.startup.getClass().getSimpleName());
        } catch (Throwable th) {
            Log.e(this.TAG, "task_failed_" + this.startup.getClass().getSimpleName(), th);
        }
        this.startupManager.b(this.startup);
    }
}
