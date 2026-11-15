package h4;

import android.os.Build;
import androidx.work.NetworkType;
import j4.u;
import kotlin.jvm.internal.Intrinsics;

public final class d extends c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(i4.g tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
    }

    @Override
    public boolean b(u workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return workSpec.f62996j.d() == NetworkType.CONNECTED;
    }

    @Override
    public boolean c(g4.b value) {
        Intrinsics.h(value, "value");
        if (Build.VERSION.SDK_INT >= 26) {
            if (!value.a() || !value.d()) {
                return true;
            }
        } else if (!value.a()) {
            return true;
        }
        return false;
    }
}
