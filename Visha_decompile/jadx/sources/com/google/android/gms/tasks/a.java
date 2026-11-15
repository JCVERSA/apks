package com.google.android.gms.tasks;

import defpackage.eoj;
import defpackage.fea;
import defpackage.hae;
import defpackage.wd8;
import defpackage.xda;
import defpackage.y8e;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class a {
    public static Object a(xda xdaVar) throws InterruptedException {
        wd8.j();
        wd8.h();
        wd8.m(xdaVar, "Task must not be null");
        if (xdaVar.p()) {
            return f(xdaVar);
        }
        y8e y8eVar = new y8e(null);
        g(xdaVar, y8eVar);
        y8eVar.c();
        return f(xdaVar);
    }

    public static Object b(xda xdaVar, long j, TimeUnit timeUnit) throws TimeoutException {
        wd8.j();
        wd8.h();
        wd8.m(xdaVar, "Task must not be null");
        wd8.m(timeUnit, "TimeUnit must not be null");
        if (xdaVar.p()) {
            return f(xdaVar);
        }
        y8e y8eVar = new y8e(null);
        g(xdaVar, y8eVar);
        if (y8eVar.d(j, timeUnit)) {
            return f(xdaVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static xda c(Executor executor, Callable callable) {
        wd8.m(executor, "Executor must not be null");
        wd8.m(callable, "Callback must not be null");
        eoj eojVar = new eoj();
        executor.execute(new zzz(eojVar, callable));
        return eojVar;
    }

    public static xda d(Exception exc) {
        eoj eojVar = new eoj();
        eojVar.s(exc);
        return eojVar;
    }

    public static xda e(Object obj) {
        eoj eojVar = new eoj();
        eojVar.t(obj);
        return eojVar;
    }

    public static Object f(xda xdaVar) throws ExecutionException {
        if (xdaVar.q()) {
            return xdaVar.m();
        }
        if (xdaVar.o()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(xdaVar.l());
    }

    public static void g(xda xdaVar, hae haeVar) {
        Executor executor = fea.b;
        xdaVar.g(executor, haeVar);
        xdaVar.e(executor, haeVar);
        xdaVar.a(executor, haeVar);
    }
}
