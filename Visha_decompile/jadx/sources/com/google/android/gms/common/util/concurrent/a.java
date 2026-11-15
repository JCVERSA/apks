package com.google.android.gms.common.util.concurrent;

import defpackage.wd8;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class a implements ThreadFactory {
    public final String b;
    public final ThreadFactory c = Executors.defaultThreadFactory();

    public a(String str) {
        wd8.m(str, "Name must not be null");
        this.b = str;
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.c.newThread(new zza(runnable, 0));
        threadNewThread.setName(this.b);
        return threadNewThread;
    }
}
