package com.vungle.ads.internal.executor;

import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.task.PriorityRunnable;
import com.vungle.ads.internal.util.o;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class VungleThreadPoolExecutor extends ThreadPoolExecutor {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "VungleThreadPool";
    private final c threadFactory;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <T> Callable<T> getWrappedCallableWithFallback(final Callable<T> callable, final Function0<Unit> function0) {
            return new Callable() {
                @Override
                public final Object call() {
                    return VungleThreadPoolExecutor.Companion.m396getWrappedCallableWithFallback$lambda0(callable, function0);
                }
            };
        }

        public static final Object m396getWrappedCallableWithFallback$lambda0(Callable command, Function0 failFallback) {
            Intrinsics.h(command, "$command");
            Intrinsics.h(failFallback, "$failFallback");
            try {
                return command.call();
            } catch (OutOfMemoryError unused) {
                failFallback.invoke();
                return null;
            }
        }

        public final ComparableRunnable getWrappedRunnableWithFail(final Runnable runnable, final Runnable runnable2) {
            return runnable instanceof PriorityRunnable ? new PriorityRunnable() {
                @Override
                public int compareTo(Object other) {
                    Intrinsics.h(other, "other");
                    if (!(other instanceof PriorityRunnable)) {
                        return 0;
                    }
                    return Intrinsics.j(((PriorityRunnable) other).getPriority(), getPriority());
                }

                @Override
                public int getPriority() {
                    return ((PriorityRunnable) runnable).getPriority();
                }

                @Override
                public void run() {
                    VungleThreadPoolExecutor.Companion.wrapRunnableWithFail(runnable, runnable2);
                }
            } : new ComparableRunnable() {
                @Override
                public int compareTo(Object other) {
                    Intrinsics.h(other, "other");
                    Runnable runnable3 = runnable;
                    if (runnable3 instanceof PriorityRunnable) {
                        return ((PriorityRunnable) runnable3).compareTo(other);
                    }
                    return 0;
                }

                @Override
                public void run() {
                    VungleThreadPoolExecutor.Companion.wrapRunnableWithFail(runnable, runnable2);
                }
            };
        }

        public final void wrapRunnableWithFail(Runnable runnable, Runnable runnable2) {
            try {
                runnable.run();
            } catch (OutOfMemoryError unused) {
                runnable2.run();
            }
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor$ComparableRunnable;", "", "", "Ljava/lang/Runnable;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface ComparableRunnable extends Comparable<Object>, Runnable {
    }

    public VungleThreadPoolExecutor(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, c cVar) {
        super(i10, i11, j10, timeUnit, blockingQueue, cVar);
        this.threadFactory = cVar;
        allowCoreThreadTimeOut(true);
    }

    public static final void m393execute$lambda0(VungleThreadPoolExecutor this$0) {
        Intrinsics.h(this$0, "this$0");
        new OutOfMemory("execute error in " + this$0.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    public final String executorName() {
        String name;
        c cVar = this.threadFactory;
        return (cVar == null || (name = cVar.getName()) == null) ? "VungleThreadPoolExecutor" : name;
    }

    public static final void m394submit$lambda1(VungleThreadPoolExecutor this$0) {
        Intrinsics.h(this$0, "this$0");
        new OutOfMemory("submit error in " + this$0.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    public static final void m395submit$lambda2(VungleThreadPoolExecutor this$0) {
        Intrinsics.h(this$0, "this$0");
        new OutOfMemory("submit error with result in " + this$0.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    @Override
    public void execute(Runnable command) {
        Intrinsics.h(command, "command");
        try {
            super.execute(Companion.getWrappedRunnableWithFail(command, new Runnable() {
                @Override
                public final void run() {
                    VungleThreadPoolExecutor.m393execute$lambda0(this.f58360a);
                }
            }));
        } catch (Exception e10) {
            o.Companion.e(TAG, "execute exception", e10);
        } catch (OutOfMemoryError e11) {
            String str = "execute error in " + executorName() + ": " + e11.getLocalizedMessage();
            o.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    @Override
    public final c getThreadFactory() {
        return this.threadFactory;
    }

    @Override
    public Future<?> submit(Runnable task) {
        Intrinsics.h(task, "task");
        try {
            Future<?> futureSubmit = super.submit(Companion.getWrappedRunnableWithFail(task, new Runnable() {
                @Override
                public final void run() {
                    VungleThreadPoolExecutor.m394submit$lambda1(this.f58361a);
                }
            }));
            Intrinsics.g(futureSubmit, "{\n            super.subm…\n            })\n        }");
            return futureSubmit;
        } catch (Exception e10) {
            o.Companion.e(TAG, "submit exception", e10);
            return new b(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error in " + executorName() + ": " + e11.getLocalizedMessage();
            o.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new b(null);
        }
    }

    public final Future<?> submit$vungle_ads_release(Runnable task, Runnable fail) {
        Intrinsics.h(task, "task");
        Intrinsics.h(fail, "fail");
        try {
            Future<?> futureSubmit = super.submit(Companion.getWrappedRunnableWithFail(task, fail));
            Intrinsics.g(futureSubmit, "{\n            super.subm…il(task, fail))\n        }");
            return futureSubmit;
        } catch (Exception e10) {
            o.Companion.e(TAG, "submit exception with fail", e10);
            fail.run();
            return new b(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error with fail in " + executorName() + ": " + e11.getLocalizedMessage();
            o.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            fail.run();
            return new b(null);
        }
    }

    public final void execute(Runnable command, Runnable fail) {
        Intrinsics.h(command, "command");
        Intrinsics.h(fail, "fail");
        try {
            super.execute(Companion.getWrappedRunnableWithFail(command, fail));
        } catch (Exception e10) {
            o.Companion.e(TAG, "execute exception with fail", e10);
            fail.run();
        } catch (OutOfMemoryError e11) {
            String str = "execute error with fail in " + executorName() + ": " + e11.getLocalizedMessage();
            o.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            fail.run();
        }
    }

    @Override
    public <T> Future<T> submit(Runnable task, T t10) {
        Intrinsics.h(task, "task");
        try {
            Future<T> futureSubmit = super.submit(Companion.getWrappedRunnableWithFail(task, new Runnable() {
                @Override
                public final void run() {
                    VungleThreadPoolExecutor.m395submit$lambda2(this.f58359a);
                }
            }), t10);
            Intrinsics.g(futureSubmit, "{\n            super.subm…     }, result)\n        }");
            return futureSubmit;
        } catch (Exception e10) {
            o.Companion.e(TAG, "submit exception with result", e10);
            return new b(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error with result in " + executorName() + ": " + e11.getLocalizedMessage();
            o.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new b(null);
        }
    }

    @Override
    public <T> Future<T> submit(Callable<T> task) {
        Intrinsics.h(task, "task");
        try {
            Future<T> futureSubmit = super.submit(Companion.getWrappedCallableWithFallback(task, new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m397invoke();
                    return Unit.f64096a;
                }

                public final void m397invoke() {
                    new OutOfMemory("submit callable error in " + VungleThreadPoolExecutor.this.executorName()).logErrorNoReturnValue$vungle_ads_release();
                }
            }));
            Intrinsics.g(futureSubmit, "override fun <T> submit(…Future<T>\n        }\n    }");
            return futureSubmit;
        } catch (Exception e10) {
            o.Companion.e(TAG, "submit exception callable: " + e10);
            return new b(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error callable in " + executorName() + ": " + e11.getLocalizedMessage();
            o.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new b(null);
        }
    }
}
