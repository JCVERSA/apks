package androidx.work.impl;

import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.impl.utils.EnqueueRunnable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class WorkerUpdater {
    public static final androidx.work.l c(final d0 d0Var, final String name, final androidx.work.r workRequest) {
        Intrinsics.h(d0Var, "<this>");
        Intrinsics.h(name, "name");
        Intrinsics.h(workRequest, "workRequest");
        final o oVar = new o();
        final Function0<Unit> function0 = new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m197invoke();
                return Unit.f64096a;
            }

            public final void m197invoke() {
                new EnqueueRunnable(new w(d0Var, name, ExistingWorkPolicy.KEEP, CollectionsKt.e(workRequest)), oVar).run();
            }
        };
        d0Var.u().b().execute(new Runnable() {
            @Override
            public final void run() {
                WorkerUpdater.d(d0Var, name, oVar, function0, workRequest);
            }
        });
        return oVar;
    }

    public static final void d(d0 this_enqueueUniquelyNamedPeriodic, String name, o operation, Function0 enqueueNew, androidx.work.r workRequest) {
        Intrinsics.h(this_enqueueUniquelyNamedPeriodic, "$this_enqueueUniquelyNamedPeriodic");
        Intrinsics.h(name, "$name");
        Intrinsics.h(operation, "$operation");
        Intrinsics.h(enqueueNew, "$enqueueNew");
        Intrinsics.h(workRequest, "$workRequest");
        j4.v vVarN0 = this_enqueueUniquelyNamedPeriodic.t().n0();
        List listS = vVarN0.s(name);
        if (listS.size() > 1) {
            e(operation, "Can't apply UPDATE policy to the chains of work.");
            return;
        }
        j4.u.b bVar = (j4.u.b) CollectionsKt.k0(listS);
        if (bVar == null) {
            enqueueNew.invoke();
            return;
        }
        j4.u uVarJ = vVarN0.j(bVar.f63007a);
        if (uVarJ == null) {
            operation.a(new androidx.work.l.b.a(new IllegalStateException("WorkSpec with " + bVar.f63007a + ", that matches a name \"" + name + "\", wasn't found")));
            return;
        }
        if (!uVarJ.j()) {
            e(operation, "Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
            return;
        }
        if (bVar.f63008b == WorkInfo.State.CANCELLED) {
            vVarN0.a(bVar.f63007a);
            enqueueNew.invoke();
            return;
        }
        j4.u uVarD = workRequest.d();
        j4.u uVarD2 = uVarD.d((1048574 & 1) != 0 ? uVarD.f62987a : bVar.f63007a, (1048574 & 2) != 0 ? uVarD.f62988b : null, (1048574 & 4) != 0 ? uVarD.f62989c : null, (1048574 & 8) != 0 ? uVarD.f62990d : null, (1048574 & 16) != 0 ? uVarD.f62991e : null, (1048574 & 32) != 0 ? uVarD.f62992f : null, (1048574 & 64) != 0 ? uVarD.f62993g : 0L, (1048574 & 128) != 0 ? uVarD.f62994h : 0L, (1048574 & 256) != 0 ? uVarD.f62995i : 0L, (1048574 & 512) != 0 ? uVarD.f62996j : null, (1048574 & 1024) != 0 ? uVarD.f62997k : 0, (1048574 & 2048) != 0 ? uVarD.f62998l : null, (1048574 & 4096) != 0 ? uVarD.f62999m : 0L, (1048574 & 8192) != 0 ? uVarD.f63000n : 0L, (1048574 & 16384) != 0 ? uVarD.f63001o : 0L, (1048574 & 32768) != 0 ? uVarD.f63002p : 0L, (1048574 & 65536) != 0 ? uVarD.f63003q : false, (131072 & 1048574) != 0 ? uVarD.f63004r : null, (1048574 & 262144) != 0 ? uVarD.f63005s : 0, (1048574 & 524288) != 0 ? uVarD.f63006t : 0);
        try {
            Processor processor = this_enqueueUniquelyNamedPeriodic.q();
            Intrinsics.g(processor, "processor");
            WorkDatabase workDatabase = this_enqueueUniquelyNamedPeriodic.t();
            Intrinsics.g(workDatabase, "workDatabase");
            androidx.work.a configuration = this_enqueueUniquelyNamedPeriodic.m();
            Intrinsics.g(configuration, "configuration");
            List schedulers = this_enqueueUniquelyNamedPeriodic.r();
            Intrinsics.g(schedulers, "schedulers");
            f(processor, workDatabase, configuration, schedulers, uVarD2, workRequest.c());
            operation.a(androidx.work.l.f15406a);
        } catch (Throwable th2) {
            operation.a(new androidx.work.l.b.a(th2));
        }
    }

    private static final void e(o oVar, String str) {
        oVar.a(new androidx.work.l.b.a(new UnsupportedOperationException(str)));
    }

    private static final WorkManager.UpdateResult f(Processor processor, final WorkDatabase workDatabase, androidx.work.a aVar, final List list, final j4.u uVar, final Set set) {
        final String str = uVar.f62987a;
        final j4.u uVarJ = workDatabase.n0().j(str);
        if (uVarJ == null) {
            throw new IllegalArgumentException("Worker with " + str + " doesn't exist");
        }
        if (uVarJ.f62988b.isFinished()) {
            return WorkManager.UpdateResult.NOT_APPLIED;
        }
        if (uVarJ.j() ^ uVar.j()) {
            WorkerUpdater$updateWorkImpl$type$1 workerUpdater$updateWorkImpl$type$1 = new Function1<j4.u, String>() {
                @Override
                public final String invoke(j4.u spec) {
                    Intrinsics.h(spec, "spec");
                    return spec.j() ? "Periodic" : "OneTime";
                }
            };
            throw new UnsupportedOperationException("Can't update " + ((String) workerUpdater$updateWorkImpl$type$1.invoke((Object) uVarJ)) + " Worker to " + ((String) workerUpdater$updateWorkImpl$type$1.invoke((Object) uVar)) + " Worker. Update operation must preserve worker's type.");
        }
        final boolean zK = processor.k(str);
        if (!zK) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((s) it.next()).b(str);
            }
        }
        workDatabase.a0(new Runnable() {
            @Override
            public final void run() {
                WorkerUpdater.g(workDatabase, uVar, uVarJ, list, str, set, zK);
            }
        });
        if (!zK) {
            t.b(aVar, workDatabase, list);
        }
        return zK ? WorkManager.UpdateResult.APPLIED_FOR_NEXT_RUN : WorkManager.UpdateResult.APPLIED_IMMEDIATELY;
    }

    public static final void g(WorkDatabase workDatabase, j4.u newWorkSpec, j4.u oldWorkSpec, List schedulers, String workSpecId, Set tags, boolean z10) {
        Intrinsics.h(workDatabase, "$workDatabase");
        Intrinsics.h(newWorkSpec, "$newWorkSpec");
        Intrinsics.h(oldWorkSpec, "$oldWorkSpec");
        Intrinsics.h(schedulers, "$schedulers");
        Intrinsics.h(workSpecId, "$workSpecId");
        Intrinsics.h(tags, "$tags");
        j4.v vVarN0 = workDatabase.n0();
        j4.z zVarO0 = workDatabase.o0();
        vVarN0.f(androidx.work.impl.utils.b.b(schedulers, newWorkSpec.d((1048574 & 1) != 0 ? newWorkSpec.f62987a : null, (1048574 & 2) != 0 ? newWorkSpec.f62988b : oldWorkSpec.f62988b, (1048574 & 4) != 0 ? newWorkSpec.f62989c : null, (1048574 & 8) != 0 ? newWorkSpec.f62990d : null, (1048574 & 16) != 0 ? newWorkSpec.f62991e : null, (1048574 & 32) != 0 ? newWorkSpec.f62992f : null, (1048574 & 64) != 0 ? newWorkSpec.f62993g : 0L, (1048574 & 128) != 0 ? newWorkSpec.f62994h : 0L, (1048574 & 256) != 0 ? newWorkSpec.f62995i : 0L, (1048574 & 512) != 0 ? newWorkSpec.f62996j : null, (1048574 & 1024) != 0 ? newWorkSpec.f62997k : oldWorkSpec.f62997k, (1048574 & 2048) != 0 ? newWorkSpec.f62998l : null, (1048574 & 4096) != 0 ? newWorkSpec.f62999m : 0L, (1048574 & 8192) != 0 ? newWorkSpec.f63000n : oldWorkSpec.f63000n, (1048574 & 16384) != 0 ? newWorkSpec.f63001o : 0L, (1048574 & 32768) != 0 ? newWorkSpec.f63002p : 0L, (1048574 & 65536) != 0 ? newWorkSpec.f63003q : false, (131072 & 1048574) != 0 ? newWorkSpec.f63004r : null, (1048574 & 262144) != 0 ? newWorkSpec.f63005s : 0, (1048574 & 524288) != 0 ? newWorkSpec.f63006t : oldWorkSpec.f() + 1)));
        zVarO0.c(workSpecId);
        zVarO0.d(workSpecId, tags);
        if (z10) {
            return;
        }
        vVarN0.r(workSpecId, -1L);
        workDatabase.m0().a(workSpecId);
    }
}
