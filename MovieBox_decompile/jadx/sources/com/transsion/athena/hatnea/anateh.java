package com.transsion.athena.hatnea;

import android.os.Handler;
import androidx.annotation.NonNull;

public abstract class anateh implements Runnable {

    protected Handler f41636a;

    protected Thread f41637b;

    protected anateh() {
    }

    protected abstract void a();

    public String b() {
        return "Task-Athena-" + c();
    }

    protected abstract String c();

    @Override
    public void run() {
        Thread threadCurrentThread = Thread.currentThread();
        this.f41637b = threadCurrentThread;
        String name = threadCurrentThread.getName();
        this.f41637b.setName(b());
        try {
            a();
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            athena.a().b(this);
            this.f41637b.setName(name);
        }
    }

    protected anateh(@NonNull Handler handler) {
        this.f41636a = handler;
    }
}
