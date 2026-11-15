package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d0;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;

public abstract class CancelWorkRunnable implements Runnable {
    private final androidx.work.impl.o mOperation = new androidx.work.impl.o();

    @NonNull
    public static CancelWorkRunnable forAll(@NonNull final d0 d0Var) {
        return new CancelWorkRunnable() {
            @Override
            void runInternal() {
                WorkDatabase workDatabaseT = d0Var.t();
                workDatabaseT.k();
                try {
                    Iterator it = workDatabaseT.n0().x().iterator();
                    while (it.hasNext()) {
                        cancel(d0Var, (String) it.next());
                    }
                    new o(d0Var.t()).e(System.currentTimeMillis());
                    workDatabaseT.e0();
                } finally {
                    workDatabaseT.t();
                }
            }
        };
    }

    @NonNull
    public static CancelWorkRunnable forId(@NonNull final UUID uuid, @NonNull final d0 d0Var) {
        return new CancelWorkRunnable() {
            @Override
            void runInternal() {
                WorkDatabase workDatabaseT = d0Var.t();
                workDatabaseT.k();
                try {
                    cancel(d0Var, uuid.toString());
                    workDatabaseT.e0();
                    workDatabaseT.t();
                    reschedulePendingWorkers(d0Var);
                } catch (Throwable th2) {
                    workDatabaseT.t();
                    throw th2;
                }
            }
        };
    }

    @NonNull
    public static CancelWorkRunnable forName(@NonNull final String str, @NonNull final d0 d0Var, final boolean z10) {
        return new CancelWorkRunnable() {
            @Override
            void runInternal() {
                WorkDatabase workDatabaseT = d0Var.t();
                workDatabaseT.k();
                try {
                    Iterator it = workDatabaseT.n0().g(str).iterator();
                    while (it.hasNext()) {
                        cancel(d0Var, (String) it.next());
                    }
                    workDatabaseT.e0();
                    workDatabaseT.t();
                    if (z10) {
                        reschedulePendingWorkers(d0Var);
                    }
                } catch (Throwable th2) {
                    workDatabaseT.t();
                    throw th2;
                }
            }
        };
    }

    @NonNull
    public static CancelWorkRunnable forTag(@NonNull final String str, @NonNull final d0 d0Var) {
        return new CancelWorkRunnable() {
            @Override
            void runInternal() {
                WorkDatabase workDatabaseT = d0Var.t();
                workDatabaseT.k();
                try {
                    Iterator it = workDatabaseT.n0().l(str).iterator();
                    while (it.hasNext()) {
                        cancel(d0Var, (String) it.next());
                    }
                    workDatabaseT.e0();
                    workDatabaseT.t();
                    reschedulePendingWorkers(d0Var);
                } catch (Throwable th2) {
                    workDatabaseT.t();
                    throw th2;
                }
            }
        };
    }

    private void iterativelyCancelWorkAndDependents(WorkDatabase workDatabase, String str) {
        j4.v vVarN0 = workDatabase.n0();
        j4.b bVarH0 = workDatabase.h0();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            WorkInfo.State stateI = vVarN0.i(str2);
            if (stateI != WorkInfo.State.SUCCEEDED && stateI != WorkInfo.State.FAILED) {
                vVarN0.u(WorkInfo.State.CANCELLED, str2);
            }
            linkedList.addAll(bVarH0.a(str2));
        }
    }

    void cancel(d0 d0Var, String str) {
        iterativelyCancelWorkAndDependents(d0Var.t(), str);
        d0Var.q().r(str);
        Iterator it = d0Var.r().iterator();
        while (it.hasNext()) {
            ((androidx.work.impl.s) it.next()).b(str);
        }
    }

    @NonNull
    public androidx.work.l getOperation() {
        return this.mOperation;
    }

    void reschedulePendingWorkers(d0 d0Var) {
        androidx.work.impl.t.b(d0Var.m(), d0Var.t(), d0Var.r());
    }

    @Override
    public void run() {
        try {
            runInternal();
            this.mOperation.a(androidx.work.l.f15406a);
        } catch (Throwable th2) {
            this.mOperation.a(new androidx.work.l.b.a(th2));
        }
    }

    abstract void runInternal();
}
