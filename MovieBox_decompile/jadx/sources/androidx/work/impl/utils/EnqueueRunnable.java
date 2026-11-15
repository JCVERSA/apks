package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.d0;
import androidx.work.impl.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class EnqueueRunnable implements Runnable {
    private static final String TAG = androidx.work.j.i("EnqueueRunnable");
    private final androidx.work.impl.o mOperation;
    private final w mWorkContinuation;

    public EnqueueRunnable(@NonNull w wVar) {
        this(wVar, new androidx.work.impl.o());
    }

    private static boolean enqueueContinuation(@NonNull w wVar) {
        boolean zEnqueueWorkWithPrerequisites = enqueueWorkWithPrerequisites(wVar.g(), wVar.f(), (String[]) w.l(wVar).toArray(new String[0]), wVar.d(), wVar.b());
        wVar.k();
        return zEnqueueWorkWithPrerequisites;
    }

    /* JADX WARN: Code duplicated, block: B:84:0x014e  */
    private static boolean enqueueWorkWithPrerequisites(d0 d0Var, @NonNull List<? extends androidx.work.r> list, String[] strArr, String str, ExistingWorkPolicy existingWorkPolicy) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        String[] strArr2 = strArr;
        long jCurrentTimeMillis = System.currentTimeMillis();
        WorkDatabase workDatabaseT = d0Var.t();
        boolean z14 = strArr2 != null && strArr2.length > 0;
        if (z14) {
            z10 = false;
            z11 = false;
            z12 = true;
            for (String str2 : strArr2) {
                j4.u uVarJ = workDatabaseT.n0().j(str2);
                if (uVarJ == null) {
                    androidx.work.j.e().c(TAG, "Prerequisite " + str2 + " doesn't exist; not enqueuing");
                    return false;
                }
                WorkInfo.State state = uVarJ.f62988b;
                z12 &= state == WorkInfo.State.SUCCEEDED;
                if (state == WorkInfo.State.FAILED) {
                    z11 = true;
                } else if (state == WorkInfo.State.CANCELLED) {
                    z10 = true;
                }
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = true;
        }
        boolean zIsEmpty = TextUtils.isEmpty(str);
        if (zIsEmpty || z14) {
            z13 = false;
        } else {
            List<j4.u.b> listS = workDatabaseT.n0().s(str);
            if (!listS.isEmpty()) {
                if (existingWorkPolicy == ExistingWorkPolicy.APPEND || existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE) {
                    j4.b bVarH0 = workDatabaseT.h0();
                    List arrayList = new ArrayList();
                    for (j4.u.b bVar : listS) {
                        if (!bVarH0.d(bVar.f63007a)) {
                            WorkInfo.State state2 = bVar.f63008b;
                            boolean z15 = (state2 == WorkInfo.State.SUCCEEDED) & z12;
                            if (state2 == WorkInfo.State.FAILED) {
                                z11 = true;
                            } else if (state2 == WorkInfo.State.CANCELLED) {
                                z10 = true;
                            }
                            arrayList.add(bVar.f63007a);
                            z12 = z15;
                        }
                        bVarH0 = bVarH0;
                    }
                    if (existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE && (z10 || z11)) {
                        j4.v vVarN0 = workDatabaseT.n0();
                        Iterator it = vVarN0.s(str).iterator();
                        while (it.hasNext()) {
                            vVarN0.a(((j4.u.b) it.next()).f63007a);
                        }
                        arrayList = Collections.emptyList();
                        z10 = false;
                        z11 = false;
                    }
                    strArr2 = (String[]) arrayList.toArray(strArr2);
                    z14 = strArr2.length > 0;
                } else {
                    if (existingWorkPolicy == ExistingWorkPolicy.KEEP) {
                        Iterator it2 = listS.iterator();
                        while (it2.hasNext()) {
                            WorkInfo.State state3 = ((j4.u.b) it2.next()).f63008b;
                            if (state3 == WorkInfo.State.ENQUEUED || state3 == WorkInfo.State.RUNNING) {
                                return false;
                            }
                        }
                    }
                    CancelWorkRunnable.forName(str, d0Var, false).run();
                    j4.v vVarN1 = workDatabaseT.n0();
                    Iterator it3 = listS.iterator();
                    while (it3.hasNext()) {
                        vVarN1.a(((j4.u.b) it3.next()).f63007a);
                    }
                    z13 = true;
                }
            }
            z13 = false;
        }
        Iterator<? extends androidx.work.r> it4 = list.iterator();
        while (it4.hasNext()) {
            androidx.work.r next = it4.next();
            j4.u uVarD = next.d();
            if (!z14 || z12) {
                uVarD.f63000n = jCurrentTimeMillis;
            } else if (z11) {
                uVarD.f62988b = WorkInfo.State.FAILED;
            } else if (z10) {
                uVarD.f62988b = WorkInfo.State.CANCELLED;
            } else {
                uVarD.f62988b = WorkInfo.State.BLOCKED;
            }
            Iterator<? extends androidx.work.r> it5 = it4;
            if (uVarD.f62988b == WorkInfo.State.ENQUEUED) {
                z13 = true;
            }
            workDatabaseT.n0().q(b.b(d0Var.r(), uVarD));
            if (z14) {
                int length = strArr2.length;
                int i10 = 0;
                while (i10 < length) {
                    workDatabaseT.h0().c(new j4.a(next.b(), strArr2[i10]));
                    i10++;
                    length = length;
                    strArr2 = strArr2;
                }
            }
            String[] strArr3 = strArr2;
            workDatabaseT.o0().d(next.b(), next.c());
            if (!zIsEmpty) {
                workDatabaseT.l0().b(new j4.n(str, next.b()));
            }
            it4 = it5;
            strArr2 = strArr3;
        }
        return z13;
    }

    private static boolean processContinuation(@NonNull w wVar) {
        List<w> listE = wVar.e();
        boolean zProcessContinuation = false;
        if (listE != null) {
            for (w wVar2 : listE) {
                if (wVar2.j()) {
                    androidx.work.j.e().k(TAG, "Already enqueued work ids (" + TextUtils.join(", ", wVar2.c()) + ")");
                } else {
                    zProcessContinuation |= processContinuation(wVar2);
                }
            }
        }
        return enqueueContinuation(wVar) | zProcessContinuation;
    }

    public boolean addToDatabase() {
        WorkDatabase workDatabaseT = this.mWorkContinuation.g().t();
        workDatabaseT.k();
        try {
            boolean zProcessContinuation = processContinuation(this.mWorkContinuation);
            workDatabaseT.e0();
            return zProcessContinuation;
        } finally {
            workDatabaseT.t();
        }
    }

    @NonNull
    public androidx.work.l getOperation() {
        return this.mOperation;
    }

    @Override
    public void run() {
        try {
            if (this.mWorkContinuation.h()) {
                throw new IllegalStateException("WorkContinuation has cycles (" + this.mWorkContinuation + ")");
            }
            if (addToDatabase()) {
                n.a(this.mWorkContinuation.g().l(), RescheduleReceiver.class, true);
                scheduleWorkInBackground();
            }
            this.mOperation.a(androidx.work.l.f15406a);
        } catch (Throwable th2) {
            this.mOperation.a(new androidx.work.l.b.a(th2));
        }
    }

    public void scheduleWorkInBackground() {
        d0 d0VarG = this.mWorkContinuation.g();
        androidx.work.impl.t.b(d0VarG.m(), d0VarG.t(), d0VarG.r());
    }

    public EnqueueRunnable(@NonNull w wVar, @NonNull androidx.work.impl.o oVar) {
        this.mWorkContinuation = wVar;
        this.mOperation = oVar;
    }
}
