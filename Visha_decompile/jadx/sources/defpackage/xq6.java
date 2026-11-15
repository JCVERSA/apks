package defpackage;

import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.Request;

public final class xq6 {
    public static final xq6 a = new xq6();

    public final void a(Interceptor.Chain chain, Request request, int i) {
        y45.j(chain, "chain");
        y45.j(request, "buildRequest");
        jz6 jz6VarB = b(chain);
        if (jz6VarB != null) {
            jz6VarB.a(request, i);
        }
    }

    public final jz6 b(Interceptor.Chain chain) {
        dr8 dr8Var = dr8.a;
        Call call = chain.call();
        y45.i(call, "chain.call()");
        Object objA = dr8Var.a(call, "eventListener");
        if (objA instanceof jz6) {
            return (jz6) objA;
        }
        return null;
    }
}
