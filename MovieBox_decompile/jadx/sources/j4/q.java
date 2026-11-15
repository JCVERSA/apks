package j4;

import kotlin.jvm.internal.Intrinsics;

public final class q {

    private final String f62975a;

    private final androidx.work.d f62976b;

    public q(String workSpecId, androidx.work.d progress) {
        Intrinsics.h(workSpecId, "workSpecId");
        Intrinsics.h(progress, "progress");
        this.f62975a = workSpecId;
        this.f62976b = progress;
    }

    public final androidx.work.d a() {
        return this.f62976b;
    }

    public final String b() {
        return this.f62975a;
    }
}
