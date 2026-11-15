package org.greenrobot.greendao.rx;

import java.util.concurrent.Callable;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import rx.Observable;
import rx.Scheduler;

@Experimental
public class RxTransaction extends RxBase {
    private final AbstractDaoSession daoSession;

    public RxTransaction(AbstractDaoSession abstractDaoSession) {
        this.daoSession = abstractDaoSession;
    }

    @Experimental
    public <T> Observable<T> call(final Callable<T> callable) {
        return wrap(new Callable<T>() {
            @Override
            public T call() throws Exception {
                return (T) RxTransaction.this.daoSession.callInTx(callable);
            }
        });
    }

    @Experimental
    public AbstractDaoSession getDaoSession() {
        return this.daoSession;
    }

    @Override
    @Experimental
    public Scheduler getScheduler() {
        return super.getScheduler();
    }

    @Experimental
    public Observable<Void> run(final Runnable runnable) {
        return wrap(new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                RxTransaction.this.daoSession.runInTx(runnable);
                return null;
            }
        });
    }

    public RxTransaction(AbstractDaoSession abstractDaoSession, Scheduler scheduler) {
        super(scheduler);
        this.daoSession = abstractDaoSession;
    }
}
