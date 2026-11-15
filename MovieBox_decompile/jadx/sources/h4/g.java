package h4;

import android.os.Build;
import androidx.work.NetworkType;
import j4.u;
import kotlin.jvm.internal.Intrinsics;

public final class g extends c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(i4.g tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
    }

    @Override
    public boolean b(u workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        NetworkType networkTypeD = workSpec.f62996j.d();
        return networkTypeD == NetworkType.UNMETERED || (Build.VERSION.SDK_INT >= 30 && networkTypeD == NetworkType.TEMPORARILY_UNMETERED);
    }

    @Override
    public boolean c(g4.b value) {
        Intrinsics.h(value, "value");
        return !value.a() || value.b();
    }
}
