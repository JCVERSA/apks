package yv;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f76396a = new a();

    private a() {
    }

    public final void a(String msg) {
        Intrinsics.h(msg, "msg");
    }

    public final void b(String msg) {
        Intrinsics.h(msg, "msg");
        Log.e("m_d_log", msg);
    }

    public final void c(String msg) {
        Intrinsics.h(msg, "msg");
        Log.w("m_d_log", msg);
    }
}
