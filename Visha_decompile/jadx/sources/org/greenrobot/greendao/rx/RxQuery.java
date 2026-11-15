package org.greenrobot.greendao.rx;

import java.util.List;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.query.LazyList;
import org.greenrobot.greendao.query.Query;
import rx.Observable;
import rx.Scheduler;
import rx.Subscriber;
import rx.exceptions.Exceptions;

@Experimental
public class RxQuery<T> extends RxBase {
    private final Query<T> query;

    public RxQuery(Query<T> query) {
        this.query = query;
    }

    @Override
    @Experimental
    public Scheduler getScheduler() {
        return super.getScheduler();
    }

    @Experimental
    public Observable<List<T>> list() {
        return (Observable<List<T>>) wrap(new Callable<List<T>>() {
            @Override
            public List<T> call() throws Exception {
                return RxQuery.this.query.forCurrentThread().list();
            }
        });
    }

    public Observable<T> oneByOne() {
        return (Observable<T>) wrap(Observable.create(new Observable.OnSubscribe<T>() {
            public void call(Subscriber<? super T> subscriber) {
                try {
                    LazyList<T> lazyListListLazyUncached = RxQuery.this.query.forCurrentThread().listLazyUncached();
                    try {
                        for (T t : lazyListListLazyUncached) {
                            if (subscriber.isUnsubscribed()) {
                                break;
                            } else {
                                subscriber.onNext(t);
                            }
                        }
                        lazyListListLazyUncached.close();
                        if (subscriber.isUnsubscribed()) {
                            return;
                        }
                        subscriber.onCompleted();
                    } catch (Throwable th) {
                        lazyListListLazyUncached.close();
                        throw th;
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    subscriber.onError(th2);
                }
            }
        }));
    }

    @Experimental
    public Observable<T> unique() {
        return (Observable<T>) wrap(new Callable<T>() {
            @Override
            public T call() throws Exception {
                return RxQuery.this.query.forCurrentThread().unique();
            }
        });
    }

    public RxQuery(Query<T> query, Scheduler scheduler) {
        super(scheduler);
        this.query = query;
    }
}
