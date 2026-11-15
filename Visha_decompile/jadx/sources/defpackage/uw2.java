package defpackage;

import java.net.UnknownHostException;
import java.util.Map;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class uw2 implements Interceptor {
    public final Map b;

    public uw2(Map map) {
        y45.j(map, "hostMap");
        this.b = map;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        y45.j(chain, "chain");
        try {
            Response responseProceed = chain.proceed(chain.request());
            y45.i(responseProceed, "proceed(...)");
            return responseProceed;
        } catch (Exception e) {
            HttpUrl httpUrlUrl = chain.request().url();
            String str = (String) this.b.get(httpUrlUrl.host());
            if (str == null || !(e instanceof UnknownHostException)) {
                throw e;
            }
            Request requestBuild = chain.request().newBuilder().url(httpUrlUrl.newBuilder().host(str).build()).build();
            ja1.netLog("request downgrade, domain failed, failed url is:" + chain.request().url());
            xq6 xq6Var = xq6.a;
            y45.g(requestBuild);
            xq6Var.a(chain, requestBuild, 1005);
            Response responseProceed2 = chain.proceed(requestBuild);
            y45.i(responseProceed2, "proceed(...)");
            return responseProceed2;
        }
    }
}
