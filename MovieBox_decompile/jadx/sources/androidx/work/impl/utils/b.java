package androidx.work.impl.utils;

import android.os.Build;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public abstract class b {
    public static final j4.u a(j4.u workSpec) throws Throwable {
        Intrinsics.h(workSpec, "workSpec");
        androidx.work.b bVar = workSpec.f62996j;
        String str = workSpec.f62989c;
        if (Intrinsics.c(str, ConstraintTrackingWorker.class.getName())) {
            return workSpec;
        }
        if (!bVar.f() && !bVar.i()) {
            return workSpec;
        }
        androidx.work.d dVarA = new androidx.work.d.a().c(workSpec.f62991e).e("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str).a();
        Intrinsics.g(dVarA, "Builder().putAll(workSpe…ame)\n            .build()");
        String name = ConstraintTrackingWorker.class.getName();
        Intrinsics.g(name, "name");
        return workSpec.d((1048574 & 1) != 0 ? workSpec.f62987a : null, (1048574 & 2) != 0 ? workSpec.f62988b : null, (1048574 & 4) != 0 ? workSpec.f62989c : name, (1048574 & 8) != 0 ? workSpec.f62990d : null, (1048574 & 16) != 0 ? workSpec.f62991e : dVarA, (1048574 & 32) != 0 ? workSpec.f62992f : null, (1048574 & 64) != 0 ? workSpec.f62993g : 0L, (1048574 & 128) != 0 ? workSpec.f62994h : 0L, (1048574 & 256) != 0 ? workSpec.f62995i : 0L, (1048574 & 512) != 0 ? workSpec.f62996j : null, (1048574 & 1024) != 0 ? workSpec.f62997k : 0, (1048574 & 2048) != 0 ? workSpec.f62998l : null, (1048574 & 4096) != 0 ? workSpec.f62999m : 0L, (1048574 & 8192) != 0 ? workSpec.f63000n : 0L, (1048574 & 16384) != 0 ? workSpec.f63001o : 0L, (1048574 & 32768) != 0 ? workSpec.f63002p : 0L, (1048574 & 65536) != 0 ? workSpec.f63003q : false, (131072 & 1048574) != 0 ? workSpec.f63004r : null, (1048574 & 262144) != 0 ? workSpec.f63005s : 0, (1048574 & 524288) != 0 ? workSpec.f63006t : 0);
    }

    public static final j4.u b(List schedulers, j4.u workSpec) {
        Intrinsics.h(schedulers, "schedulers");
        Intrinsics.h(workSpec, "workSpec");
        return Build.VERSION.SDK_INT < 26 ? a(workSpec) : workSpec;
    }
}
