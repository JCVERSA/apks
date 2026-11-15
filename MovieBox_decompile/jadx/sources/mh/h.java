package mh;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.Request;

public final class h {

    public static final h f66466a = new h();

    private h() {
    }

    private final i b(Interceptor.Chain chain) {
        m mVar = m.f66476a;
        Call call = chain.call();
        Intrinsics.g(call, "chain.call()");
        Object objA = mVar.a(call, "eventListener");
        if (objA instanceof i) {
            return (i) objA;
        }
        return null;
    }

    public final void a(Interceptor.Chain chain, Request buildRequest, int i10) {
        Intrinsics.h(chain, "chain");
        Intrinsics.h(buildRequest, "buildRequest");
        i iVarB = b(chain);
        if (iVarB != null) {
            iVarB.a(buildRequest, i10);
        }
    }
}
