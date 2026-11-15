package io.appmetrica.analytics.impl;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class Vm implements Thread.UncaughtExceptionHandler {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    @Override
    public final void uncaughtException(Thread thread, Throwable th) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Thread.UncaughtExceptionHandler) it.next()).uncaughtException(thread, th);
        }
    }
}
