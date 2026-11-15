package androidx.work.impl;

class WorkManagerImpl$1 implements Runnable {
    final d0 this$0;
    final androidx.work.impl.utils.futures.a val$future;
    final androidx.work.impl.utils.o val$preferenceUtils;

    WorkManagerImpl$1(d0 d0Var, androidx.work.impl.utils.futures.a aVar, androidx.work.impl.utils.o oVar) {
        this.this$0 = d0Var;
        this.val$future = aVar;
        this.val$preferenceUtils = oVar;
    }

    @Override
    public void run() {
        try {
            this.val$future.t(Long.valueOf(this.val$preferenceUtils.a()));
        } catch (Throwable th2) {
            this.val$future.u(th2);
        }
    }
}
