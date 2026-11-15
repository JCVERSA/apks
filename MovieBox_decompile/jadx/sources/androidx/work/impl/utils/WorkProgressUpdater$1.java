package androidx.work.impl.utils;

import androidx.work.WorkInfo;
import java.util.UUID;

class WorkProgressUpdater$1 implements Runnable {
    final v this$0;
    final androidx.work.d val$data;
    final androidx.work.impl.utils.futures.a val$future;
    final UUID val$id;

    WorkProgressUpdater$1(v vVar, UUID uuid, androidx.work.d dVar, androidx.work.impl.utils.futures.a aVar) {
        this.this$0 = vVar;
        this.val$id = uuid;
        this.val$data = dVar;
        this.val$future = aVar;
    }

    @Override
    public void run() {
        String string = this.val$id.toString();
        androidx.work.j jVarE = androidx.work.j.e();
        String str = v.f15378c;
        jVarE.a(str, "Updating progress for " + this.val$id + " (" + this.val$data + ")");
        this.this$0.f15379a.k();
        try {
            j4.u uVarJ = this.this$0.f15379a.n0().j(string);
            if (uVarJ == null) {
                throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
            }
            if (uVarJ.f62988b == WorkInfo.State.RUNNING) {
                this.this$0.f15379a.m0().b(new j4.q(string, this.val$data));
            } else {
                androidx.work.j.e().k(str, "Ignoring setProgressAsync(...). WorkSpec (" + string + ") is not in a RUNNING state.");
            }
            this.val$future.t(null);
            this.this$0.f15379a.e0();
        } catch (Throwable th2) {
            try {
                androidx.work.j.e().d(v.f15378c, "Error updating Worker progress", th2);
                this.val$future.u(th2);
            } finally {
                this.this$0.f15379a.t();
            }
        }
    }
}
