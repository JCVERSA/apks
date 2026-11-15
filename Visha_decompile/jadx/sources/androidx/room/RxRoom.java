package androidx.room;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import defpackage.b96;
import defpackage.d5;
import defpackage.ed7;
import defpackage.jn9;
import defpackage.k29;
import defpackage.l96;
import defpackage.mc7;
import defpackage.r14;
import defpackage.rc7;
import defpackage.t14;
import defpackage.t74;
import defpackage.w14;
import defpackage.xm9;
import defpackage.zm9;
import io.reactivex.BackpressureStrategy;
import io.reactivex.Scheduler;
import io.reactivex.disposables.a;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

@SuppressLint({"PrivateConstructorForUtilityClass"})
public class RxRoom {
    public static final Object NOTHING = new Object();

    @Deprecated
    public RxRoom() {
    }

    public static r14 createFlowable(final RoomDatabase roomDatabase, final String... strArr) {
        return r14.b(new w14() {
            @Override
            public void subscribe(final t14 t14Var) throws Exception {
                final InvalidationTracker.Observer observer = new InvalidationTracker.Observer(strArr) {
                    @Override
                    public void onInvalidated(@NonNull Set<String> set) {
                        if (t14Var.isCancelled()) {
                            return;
                        }
                        t14Var.onNext(RxRoom.NOTHING);
                    }
                };
                if (!t14Var.isCancelled()) {
                    roomDatabase.getInvalidationTracker().addObserver(observer);
                    t14Var.setDisposable(a.c(new d5() {
                        @Override
                        public void run() throws Exception {
                            roomDatabase.getInvalidationTracker().removeObserver(observer);
                        }
                    }));
                }
                if (t14Var.isCancelled()) {
                    return;
                }
                t14Var.onNext(RxRoom.NOTHING);
            }
        }, BackpressureStrategy.LATEST);
    }

    public static mc7<Object> createObservable(final RoomDatabase roomDatabase, final String... strArr) {
        return mc7.h(new ed7() {
            @Override
            public void subscribe(final rc7 rc7Var) throws Exception {
                final InvalidationTracker.Observer observer = new InvalidationTracker.Observer(strArr) {
                    @Override
                    public void onInvalidated(@NonNull Set<String> set) {
                        rc7Var.onNext(RxRoom.NOTHING);
                    }
                };
                roomDatabase.getInvalidationTracker().addObserver(observer);
                rc7Var.setDisposable(a.c(new d5() {
                    @Override
                    public void run() throws Exception {
                        roomDatabase.getInvalidationTracker().removeObserver(observer);
                    }
                }));
                rc7Var.onNext(RxRoom.NOTHING);
            }
        });
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static <T> xm9 createSingle(final Callable<? extends T> callable) {
        return xm9.d(new jn9() {
            @Override
            public void subscribe(zm9 zm9Var) throws Exception {
                try {
                    zm9Var.onSuccess(callable.call());
                } catch (EmptyResultSetException e) {
                    zm9Var.tryOnError(e);
                }
            }
        });
    }

    private static Executor getExecutor(RoomDatabase roomDatabase, boolean z) {
        return z ? roomDatabase.getTransactionExecutor() : roomDatabase.getQueryExecutor();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static <T> r14 createFlowable(RoomDatabase roomDatabase, String[] strArr, Callable<T> callable) {
        return createFlowable(roomDatabase, false, strArr, callable);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static <T> mc7<T> createObservable(RoomDatabase roomDatabase, String[] strArr, Callable<T> callable) {
        return createObservable(roomDatabase, false, strArr, callable);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static <T> r14 createFlowable(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<T> callable) {
        Scheduler schedulerB = k29.b(getExecutor(roomDatabase, z));
        final b96 b96VarF = b96.f(callable);
        return createFlowable(roomDatabase, strArr).r(schedulerB).t(schedulerB).h(schedulerB).f(new t74() {
            @Override
            public l96 apply(Object obj) throws Exception {
                return b96VarF;
            }
        });
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static <T> mc7<T> createObservable(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<T> callable) {
        Scheduler schedulerB = k29.b(getExecutor(roomDatabase, z));
        final b96 b96VarF = b96.f(callable);
        return createObservable(roomDatabase, strArr).d0(schedulerB).l0(schedulerB).M(schedulerB).A(new t74() {
            @Override
            public l96 apply(Object obj) throws Exception {
                return b96VarF;
            }
        });
    }
}
