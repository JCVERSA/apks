package h4;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.j;
import j4.u;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f extends c {

    public static final a f61292f = new a(null);

    private static final String f61293g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        String strI = j.i("NetworkNotRoamingCtrlr");
        Intrinsics.g(strI, "tagWithPrefix(\"NetworkNotRoamingCtrlr\")");
        f61293g = strI;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i4.g tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
    }

    @Override
    public boolean b(u workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return workSpec.f62996j.d() == NetworkType.NOT_ROAMING;
    }

    @Override
    public boolean c(g4.b value) {
        Intrinsics.h(value, "value");
        if (Build.VERSION.SDK_INT < 24) {
            j.e().a(f61293g, "Not-roaming network constraint is not supported before API 24, only checking for connected state.");
            if (value.a()) {
                return false;
            }
        } else if (value.a() && value.c()) {
            return false;
        }
        return true;
    }
}
