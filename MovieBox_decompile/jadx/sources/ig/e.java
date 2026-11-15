package ig;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;

public final class e {

    public static final e f62089a = new e();

    private static final ArrayList f62090b = new ArrayList();

    private e() {
    }

    public final void a(Interceptor interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        ArrayList arrayList = f62090b;
        if (!arrayList.contains(interceptor)) {
            arrayList.add(interceptor);
            return;
        }
        wf.a.C0922a.z(wf.a.f74274a, "InterceptorsManager", "add dump interceptor " + interceptor, false, 4, null);
    }

    public final ArrayList b() {
        return f62090b;
    }
}
