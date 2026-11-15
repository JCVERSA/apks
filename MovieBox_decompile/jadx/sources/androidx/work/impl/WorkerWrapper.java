package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.utils.WorkForegroundRunnable;
import androidx.work.impl.utils.WorkForegroundUpdater;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

public class WorkerWrapper implements Runnable {
    static final String TAG = androidx.work.j.i("WorkerWrapper");
    Context mAppContext;
    private androidx.work.a mConfiguration;
    private j4.b mDependencyDao;
    private androidx.work.impl.foreground.a mForegroundProcessor;
    private volatile boolean mInterrupted;
    private WorkerParameters.a mRuntimeExtras;
    private List<s> mSchedulers;
    private List<String> mTags;
    private WorkDatabase mWorkDatabase;
    private String mWorkDescription;
    j4.u mWorkSpec;
    private j4.v mWorkSpecDao;
    private final String mWorkSpecId;
    k4.c mWorkTaskExecutor;
    androidx.work.i mWorker;

    @NonNull
    androidx.work.i.a mResult = androidx.work.i.a.a();

    @NonNull
    androidx.work.impl.utils.futures.a mFuture = androidx.work.impl.utils.futures.a.x();

    @NonNull
    final androidx.work.impl.utils.futures.a mWorkerResultFuture = androidx.work.impl.utils.futures.a.x();

    public static class a {

        Context f15165a;

        androidx.work.i f15166b;

        androidx.work.impl.foreground.a f15167c;

        k4.c f15168d;

        androidx.work.a f15169e;

        WorkDatabase f15170f;

        j4.u f15171g;

        List f15172h;

        private final List f15173i;

        WorkerParameters.a f15174j = new WorkerParameters.a();

        public a(Context context, androidx.work.a aVar, k4.c cVar, androidx.work.impl.foreground.a aVar2, WorkDatabase workDatabase, j4.u uVar, List list) {
            this.f15165a = context.getApplicationContext();
            this.f15168d = cVar;
            this.f15167c = aVar2;
            this.f15169e = aVar;
            this.f15170f = workDatabase;
            this.f15171g = uVar;
            this.f15173i = list;
        }

        public WorkerWrapper b() {
            return new WorkerWrapper(this);
        }

        public a c(WorkerParameters.a aVar) {
            if (aVar != null) {
                this.f15174j = aVar;
            }
            return this;
        }

        public a d(List list) {
            this.f15172h = list;
            return this;
        }
    }

    WorkerWrapper(@NonNull a aVar) {
        this.mAppContext = aVar.f15165a;
        this.mWorkTaskExecutor = aVar.f15168d;
        this.mForegroundProcessor = aVar.f15167c;
        j4.u uVar = aVar.f15171g;
        this.mWorkSpec = uVar;
        this.mWorkSpecId = uVar.f62987a;
        this.mSchedulers = aVar.f15172h;
        this.mRuntimeExtras = aVar.f15174j;
        this.mWorker = aVar.f15166b;
        this.mConfiguration = aVar.f15169e;
        WorkDatabase workDatabase = aVar.f15170f;
        this.mWorkDatabase = workDatabase;
        this.mWorkSpecDao = workDatabase.n0();
        this.mDependencyDao = this.mWorkDatabase.h0();
        this.mTags = aVar.f15173i;
    }

    private String createWorkDescription(List<String> list) {
        StringBuilder sb2 = new StringBuilder("Work [ id=");
        sb2.append(this.mWorkSpecId);
        sb2.append(", tags={ ");
        boolean z10 = true;
        for (String str : list) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        sb2.append(" } ]");
        return sb2.toString();
    }

    private void handleResult(androidx.work.i.a aVar) {
        if (aVar instanceof androidx.work.i.a.c) {
            androidx.work.j.e().f(TAG, "Worker result SUCCESS for " + this.mWorkDescription);
            if (this.mWorkSpec.j()) {
                resetPeriodicAndResolve();
                return;
            } else {
                setSucceededAndResolve();
                return;
            }
        }
        if (aVar instanceof androidx.work.i.a.b) {
            androidx.work.j.e().f(TAG, "Worker result RETRY for " + this.mWorkDescription);
            rescheduleAndResolve();
            return;
        }
        androidx.work.j.e().f(TAG, "Worker result FAILURE for " + this.mWorkDescription);
        if (this.mWorkSpec.j()) {
            resetPeriodicAndResolve();
        } else {
            setFailedAndResolve();
        }
    }

    private void iterativelyFailWorkAndDependents(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.mWorkSpecDao.i(str2) != WorkInfo.State.CANCELLED) {
                this.mWorkSpecDao.u(WorkInfo.State.FAILED, str2);
            }
            linkedList.addAll(this.mDependencyDao.a(str2));
        }
    }

    public void lambda$runWorker$0(com.google.common.util.concurrent.r rVar) {
        if (this.mWorkerResultFuture.isCancelled()) {
            rVar.cancel(true);
        }
    }

    private void rescheduleAndResolve() {
        this.mWorkDatabase.k();
        try {
            this.mWorkSpecDao.u(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.k(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.r(this.mWorkSpecId, -1L);
            this.mWorkDatabase.e0();
        } finally {
            this.mWorkDatabase.t();
            resolve(true);
        }
    }

    private void resetPeriodicAndResolve() {
        this.mWorkDatabase.k();
        try {
            this.mWorkSpecDao.k(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.u(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.z(this.mWorkSpecId);
            this.mWorkSpecDao.c(this.mWorkSpecId);
            this.mWorkSpecDao.r(this.mWorkSpecId, -1L);
            this.mWorkDatabase.e0();
        } finally {
            this.mWorkDatabase.t();
            resolve(false);
        }
    }

    private void resolve(boolean z10) {
        this.mWorkDatabase.k();
        try {
            if (!this.mWorkDatabase.n0().y()) {
                androidx.work.impl.utils.n.a(this.mAppContext, RescheduleReceiver.class, false);
            }
            if (z10) {
                this.mWorkSpecDao.u(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
                this.mWorkSpecDao.r(this.mWorkSpecId, -1L);
            }
            if (this.mWorkSpec != null && this.mWorker != null && this.mForegroundProcessor.b(this.mWorkSpecId)) {
                this.mForegroundProcessor.a(this.mWorkSpecId);
            }
            this.mWorkDatabase.e0();
            this.mWorkDatabase.t();
            this.mFuture.t(Boolean.valueOf(z10));
        } catch (Throwable th2) {
            this.mWorkDatabase.t();
            throw th2;
        }
    }

    private void resolveIncorrectStatus() {
        WorkInfo.State stateI = this.mWorkSpecDao.i(this.mWorkSpecId);
        if (stateI == WorkInfo.State.RUNNING) {
            androidx.work.j.e().a(TAG, "Status for " + this.mWorkSpecId + " is RUNNING; not doing any work and rescheduling for later execution");
            resolve(true);
            return;
        }
        androidx.work.j.e().a(TAG, "Status for " + this.mWorkSpecId + " is " + stateI + " ; not doing any work");
        resolve(false);
    }

    private void runWorker() {
        androidx.work.d dVarB;
        if (tryCheckForInterruptionAndResolve()) {
            return;
        }
        this.mWorkDatabase.k();
        try {
            j4.u uVar = this.mWorkSpec;
            if (uVar.f62988b != WorkInfo.State.ENQUEUED) {
                resolveIncorrectStatus();
                this.mWorkDatabase.e0();
                androidx.work.j.e().a(TAG, this.mWorkSpec.f62989c + " is not in ENQUEUED state. Nothing more to do");
                this.mWorkDatabase.t();
                return;
            }
            if ((uVar.j() || this.mWorkSpec.i()) && System.currentTimeMillis() < this.mWorkSpec.c()) {
                androidx.work.j.e().a(TAG, String.format("Delaying execution for %s because it is being executed before schedule.", this.mWorkSpec.f62989c));
                resolve(true);
                this.mWorkDatabase.e0();
                this.mWorkDatabase.t();
                return;
            }
            this.mWorkDatabase.e0();
            this.mWorkDatabase.t();
            if (this.mWorkSpec.j()) {
                dVarB = this.mWorkSpec.f62991e;
            } else {
                androidx.work.g gVarB = this.mConfiguration.f().b(this.mWorkSpec.f62990d);
                if (gVarB == null) {
                    androidx.work.j.e().c(TAG, "Could not create Input Merger " + this.mWorkSpec.f62990d);
                    setFailedAndResolve();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.mWorkSpec.f62991e);
                arrayList.addAll(this.mWorkSpecDao.m(this.mWorkSpecId));
                dVarB = gVarB.b(arrayList);
            }
            androidx.work.d dVar = dVarB;
            UUID uuidFromString = UUID.fromString(this.mWorkSpecId);
            List<String> list = this.mTags;
            WorkerParameters.a aVar = this.mRuntimeExtras;
            j4.u uVar2 = this.mWorkSpec;
            WorkerParameters workerParameters = new WorkerParameters(uuidFromString, dVar, list, aVar, uVar2.f62997k, uVar2.f(), this.mConfiguration.d(), this.mWorkTaskExecutor, this.mConfiguration.n(), new androidx.work.impl.utils.v(this.mWorkDatabase, this.mWorkTaskExecutor), new WorkForegroundUpdater(this.mWorkDatabase, this.mForegroundProcessor, this.mWorkTaskExecutor));
            if (this.mWorker == null) {
                this.mWorker = this.mConfiguration.n().b(this.mAppContext, this.mWorkSpec.f62989c, workerParameters);
            }
            androidx.work.i iVar = this.mWorker;
            if (iVar == null) {
                androidx.work.j.e().c(TAG, "Could not create Worker " + this.mWorkSpec.f62989c);
                setFailedAndResolve();
                return;
            }
            if (iVar.k()) {
                androidx.work.j.e().c(TAG, "Received an already-used Worker " + this.mWorkSpec.f62989c + "; Worker Factory should return new instances");
                setFailedAndResolve();
                return;
            }
            this.mWorker.m();
            if (!trySetRunning()) {
                resolveIncorrectStatus();
                return;
            }
            if (tryCheckForInterruptionAndResolve()) {
                return;
            }
            WorkForegroundRunnable workForegroundRunnable = new WorkForegroundRunnable(this.mAppContext, this.mWorkSpec, this.mWorker, workerParameters.b(), this.mWorkTaskExecutor);
            this.mWorkTaskExecutor.a().execute(workForegroundRunnable);
            final com.google.common.util.concurrent.r future = workForegroundRunnable.getFuture();
            this.mWorkerResultFuture.addListener(new Runnable() {
                @Override
                public final void run() {
                    this.f15302a.lambda$runWorker$0(future);
                }
            }, new androidx.work.impl.utils.r());
            future.addListener(new Runnable() {
                @Override
                public void run() {
                    if (WorkerWrapper.this.mWorkerResultFuture.isCancelled()) {
                        return;
                    }
                    try {
                        future.get();
                        androidx.work.j.e().a(WorkerWrapper.TAG, "Starting work for " + WorkerWrapper.this.mWorkSpec.f62989c);
                        WorkerWrapper workerWrapper = WorkerWrapper.this;
                        workerWrapper.mWorkerResultFuture.v(workerWrapper.mWorker.n());
                    } catch (Throwable th2) {
                        WorkerWrapper.this.mWorkerResultFuture.u(th2);
                    }
                }
            }, this.mWorkTaskExecutor.a());
            final String str = this.mWorkDescription;
            this.mWorkerResultFuture.addListener(new Runnable() {
                @Override
                @SuppressLint({"SyntheticAccessor"})
                public void run() {
                    try {
                        try {
                            androidx.work.i.a aVar2 = (androidx.work.i.a) WorkerWrapper.this.mWorkerResultFuture.get();
                            if (aVar2 == null) {
                                androidx.work.j.e().c(WorkerWrapper.TAG, WorkerWrapper.this.mWorkSpec.f62989c + " returned a null result. Treating it as a failure.");
                            } else {
                                androidx.work.j.e().a(WorkerWrapper.TAG, WorkerWrapper.this.mWorkSpec.f62989c + " returned a " + aVar2 + ".");
                                WorkerWrapper.this.mResult = aVar2;
                            }
                        } catch (InterruptedException e10) {
                            e = e10;
                            androidx.work.j.e().d(WorkerWrapper.TAG, str + " failed because it threw an exception/error", e);
                        } catch (CancellationException e11) {
                            androidx.work.j.e().g(WorkerWrapper.TAG, str + " was cancelled", e11);
                        } catch (ExecutionException e12) {
                            e = e12;
                            androidx.work.j.e().d(WorkerWrapper.TAG, str + " failed because it threw an exception/error", e);
                        }
                        WorkerWrapper.this.onWorkFinished();
                    } catch (Throwable th2) {
                        WorkerWrapper.this.onWorkFinished();
                        throw th2;
                    }
                }
            }, this.mWorkTaskExecutor.b());
        } catch (Throwable th2) {
            this.mWorkDatabase.t();
            throw th2;
        }
    }

    private void setSucceededAndResolve() {
        this.mWorkDatabase.k();
        try {
            this.mWorkSpecDao.u(WorkInfo.State.SUCCEEDED, this.mWorkSpecId);
            this.mWorkSpecDao.v(this.mWorkSpecId, ((androidx.work.i.a.c) this.mResult).e());
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (String str : this.mDependencyDao.a(this.mWorkSpecId)) {
                if (this.mWorkSpecDao.i(str) == WorkInfo.State.BLOCKED && this.mDependencyDao.b(str)) {
                    androidx.work.j.e().f(TAG, "Setting status to enqueued for " + str);
                    this.mWorkSpecDao.u(WorkInfo.State.ENQUEUED, str);
                    this.mWorkSpecDao.k(str, jCurrentTimeMillis);
                }
            }
            this.mWorkDatabase.e0();
        } finally {
            this.mWorkDatabase.t();
            resolve(false);
        }
    }

    private boolean tryCheckForInterruptionAndResolve() {
        if (!this.mInterrupted) {
            return false;
        }
        androidx.work.j.e().a(TAG, "Work interrupted for " + this.mWorkDescription);
        WorkInfo.State stateI = this.mWorkSpecDao.i(this.mWorkSpecId);
        if (stateI == null) {
            resolve(false);
        } else {
            resolve(!stateI.isFinished());
        }
        return true;
    }

    private boolean trySetRunning() {
        boolean z10;
        this.mWorkDatabase.k();
        try {
            if (this.mWorkSpecDao.i(this.mWorkSpecId) == WorkInfo.State.ENQUEUED) {
                this.mWorkSpecDao.u(WorkInfo.State.RUNNING, this.mWorkSpecId);
                this.mWorkSpecDao.C(this.mWorkSpecId);
                z10 = true;
            } else {
                z10 = false;
            }
            this.mWorkDatabase.e0();
            return z10;
        } finally {
            this.mWorkDatabase.t();
        }
    }

    @NonNull
    public com.google.common.util.concurrent.r getFuture() {
        return this.mFuture;
    }

    @NonNull
    public j4.m getWorkGenerationalId() {
        return j4.x.a(this.mWorkSpec);
    }

    @NonNull
    public j4.u getWorkSpec() {
        return this.mWorkSpec;
    }

    public void interrupt() {
        this.mInterrupted = true;
        tryCheckForInterruptionAndResolve();
        this.mWorkerResultFuture.cancel(true);
        if (this.mWorker != null && this.mWorkerResultFuture.isCancelled()) {
            this.mWorker.o();
            return;
        }
        androidx.work.j.e().a(TAG, "WorkSpec " + this.mWorkSpec + " is already done. Not interrupting.");
    }

    void onWorkFinished() {
        if (!tryCheckForInterruptionAndResolve()) {
            this.mWorkDatabase.k();
            try {
                WorkInfo.State stateI = this.mWorkSpecDao.i(this.mWorkSpecId);
                this.mWorkDatabase.m0().a(this.mWorkSpecId);
                if (stateI == null) {
                    resolve(false);
                } else if (stateI == WorkInfo.State.RUNNING) {
                    handleResult(this.mResult);
                } else if (!stateI.isFinished()) {
                    rescheduleAndResolve();
                }
                this.mWorkDatabase.e0();
                this.mWorkDatabase.t();
            } catch (Throwable th2) {
                this.mWorkDatabase.t();
                throw th2;
            }
        }
        List<s> list = this.mSchedulers;
        if (list != null) {
            Iterator<s> it = list.iterator();
            while (it.hasNext()) {
                it.next().b(this.mWorkSpecId);
            }
            t.b(this.mConfiguration, this.mWorkDatabase, this.mSchedulers);
        }
    }

    @Override
    public void run() {
        this.mWorkDescription = createWorkDescription(this.mTags);
        runWorker();
    }

    void setFailedAndResolve() {
        this.mWorkDatabase.k();
        try {
            iterativelyFailWorkAndDependents(this.mWorkSpecId);
            this.mWorkSpecDao.v(this.mWorkSpecId, ((androidx.work.i.a.C0127a) this.mResult).e());
            this.mWorkDatabase.e0();
        } finally {
            this.mWorkDatabase.t();
            resolve(false);
        }
    }
}
