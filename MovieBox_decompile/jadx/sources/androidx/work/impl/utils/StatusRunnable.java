package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.work.WorkInfo;
import androidx.work.impl.d0;
import java.util.List;
import java.util.UUID;

public abstract class StatusRunnable<T> implements Runnable {
    private final androidx.work.impl.utils.futures.a mFuture = androidx.work.impl.utils.futures.a.x();

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forStringIds(@NonNull final d0 d0Var, @NonNull final List<String> list) {
        return new StatusRunnable<List<WorkInfo>>() {
            @Override
            public List<WorkInfo> runInternal() {
                return (List) j4.u.f62986w.apply(d0Var.t().n0().D(list));
            }
        };
    }

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forTag(@NonNull final d0 d0Var, @NonNull final String str) {
        return new StatusRunnable<List<WorkInfo>>() {
            @Override
            public List<WorkInfo> runInternal() {
                return (List) j4.u.f62986w.apply(d0Var.t().n0().A(str));
            }
        };
    }

    @NonNull
    public static StatusRunnable<WorkInfo> forUUID(@NonNull final d0 d0Var, @NonNull final UUID uuid) {
        return new StatusRunnable<WorkInfo>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public WorkInfo runInternal() {
                j4.u.c cVarH = d0Var.t().n0().h(uuid.toString());
                if (cVarH != null) {
                    return cVarH.a();
                }
                return null;
            }
        };
    }

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forUniqueWork(@NonNull final d0 d0Var, @NonNull final String str) {
        return new StatusRunnable<List<WorkInfo>>() {
            @Override
            public List<WorkInfo> runInternal() {
                return (List) j4.u.f62986w.apply(d0Var.t().n0().n(str));
            }
        };
    }

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forWorkQuerySpec(@NonNull d0 d0Var, @NonNull androidx.work.q qVar) {
        return new StatusRunnable<List<WorkInfo>>(qVar) {
            final androidx.work.q val$querySpec;

            @Override
            public List<WorkInfo> runInternal() {
                return (List) j4.u.f62986w.apply(this.val$workManager.t().j0().a(q.a(null)));
            }
        };
    }

    @NonNull
    public com.google.common.util.concurrent.r getFuture() {
        return this.mFuture;
    }

    @Override
    public void run() {
        try {
            this.mFuture.t(runInternal());
        } catch (Throwable th2) {
            this.mFuture.u(th2);
        }
    }

    abstract T runInternal();
}
