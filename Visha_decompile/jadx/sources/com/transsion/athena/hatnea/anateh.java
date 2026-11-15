package com.transsion.athena.hatnea;

import android.os.Handler;
import androidx.annotation.NonNull;

public abstract class anateh implements Runnable {
    protected Handler a;
    protected Thread b;

    public anateh() {
    }

    public abstract void a();

    public String b() {
        return "Task-Athena-" + c();
    }

    public abstract String c();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void run() {
        Thread threadCurrentThread = Thread.currentThread();
        this.b = threadCurrentThread;
        String name = threadCurrentThread.getName();
        this.b.setName(b());
        try {
            a();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            c.d().h(this);
            this.b.setName(name);
        }
    }

    public anateh(@NonNull Handler handler) {
        this.a = handler;
    }
}
