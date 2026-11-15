package com.google.android.gms.internal.ads;

import defpackage.a8i;
import defpackage.im5;
import defpackage.j3i;
import defpackage.j7i;
import defpackage.k7i;
import defpackage.m2i;
import defpackage.n7i;
import defpackage.n8i;
import defpackage.v7i;
import defpackage.w7i;
import defpackage.z7i;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class j8 extends z7i {
    public static w7i a(Iterable iterable) {
        return new w7i(false, zzfww.zzk(iterable), null);
    }

    public static w7i b(Iterable iterable) {
        return new w7i(true, zzfww.zzk(iterable), null);
    }

    public static w7i c(im5... im5VarArr) {
        return new w7i(true, zzfww.zzm(im5VarArr), null);
    }

    public static im5 d(Iterable iterable) {
        return new n7i(zzfww.zzk(iterable), true);
    }

    public static im5 e(im5 im5Var, Class cls, m2i m2iVar, Executor executor) {
        int i = zzgaf.zzd;
        zzgae zzgaeVar = new zzgae(im5Var, cls, m2iVar);
        im5Var.addListener(zzgaeVar, m8.d(executor, zzgaeVar));
        return zzgaeVar;
    }

    public static im5 f(im5 im5Var, Class cls, k7i k7iVar, Executor executor) {
        int i = zzgaf.zzd;
        zzgad zzgadVar = new zzgad(im5Var, cls, k7iVar);
        im5Var.addListener(zzgadVar, m8.d(executor, zzgadVar));
        return zzgadVar;
    }

    public static im5 g(Throwable th) {
        th.getClass();
        return new k8(th);
    }

    public static im5 h(Object obj) {
        return obj == null ? a8i.c : new a8i(obj);
    }

    public static im5 i() {
        return a8i.c;
    }

    public static im5 j(Callable callable, Executor executor) {
        zzgct zzgctVar = new zzgct(callable);
        executor.execute(zzgctVar);
        return zzgctVar;
    }

    public static im5 k(j7i j7iVar, Executor executor) {
        zzgct zzgctVar = new zzgct(j7iVar);
        executor.execute(zzgctVar);
        return zzgctVar;
    }

    public static im5 l(im5... im5VarArr) {
        return new n7i(zzfww.zzm(im5VarArr), false);
    }

    public static im5 m(im5 im5Var, m2i m2iVar, Executor executor) {
        int i = zzgap.zzc;
        zzgao zzgaoVar = new zzgao(im5Var, m2iVar);
        im5Var.addListener(zzgaoVar, m8.d(executor, zzgaoVar));
        return zzgaoVar;
    }

    public static im5 n(im5 im5Var, k7i k7iVar, Executor executor) {
        int i = zzgap.zzc;
        zzgan zzganVar = new zzgan(im5Var, k7iVar);
        im5Var.addListener(zzganVar, m8.d(executor, zzganVar));
        return zzganVar;
    }

    public static im5 o(im5 im5Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return im5Var.isDone() ? im5Var : o8.k(im5Var, j, timeUnit, scheduledExecutorService);
    }

    public static Object p(Future future) {
        if (future.isDone()) {
            return n8i.a(future);
        }
        throw new IllegalStateException(j3i.b("Future was expected to be done: %s", future));
    }

    public static Object q(Future future) {
        try {
            return n8i.a(future);
        } catch (ExecutionException e) {
            if (e.getCause() instanceof Error) {
                throw new zzgbh((Error) e.getCause());
            }
            throw new zzgcu(e.getCause());
        }
    }

    public static void r(im5 im5Var, v7i v7iVar, Executor executor) {
        v7iVar.getClass();
        im5Var.addListener(new zzgbp(im5Var, v7iVar), executor);
    }
}
