package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;

public final class i {

    private final WorkDatabase f15369a;

    public i(WorkDatabase workDatabase) {
        Intrinsics.h(workDatabase, "workDatabase");
        this.f15369a = workDatabase;
    }

    public static final Integer d(i this$0) {
        Intrinsics.h(this$0, "this$0");
        return Integer.valueOf(j.d(this$0.f15369a, "next_alarm_manager_id"));
    }

    public static final Integer f(i this$0, int i10, int i11) {
        Intrinsics.h(this$0, "this$0");
        int iD = j.d(this$0.f15369a, "next_job_scheduler_id");
        if (i10 > iD || iD > i11) {
            j.e(this$0.f15369a, "next_job_scheduler_id", i10 + 1);
        } else {
            i10 = iD;
        }
        return Integer.valueOf(i10);
    }

    public final int c() {
        Object objY = this.f15369a.Y(new Callable() {
            @Override
            public final Object call() {
                return i.d(this.f15365a);
            }
        });
        Intrinsics.g(objY, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        return ((Number) objY).intValue();
    }

    public final int e(final int i10, final int i11) {
        Object objY = this.f15369a.Y(new Callable() {
            @Override
            public final Object call() {
                return i.f(this.f15366a, i10, i11);
            }
        });
        Intrinsics.g(objY, "workDatabase.runInTransa…            id\n        })");
        return ((Number) objY).intValue();
    }
}
