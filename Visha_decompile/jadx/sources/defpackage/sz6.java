package defpackage;

import com.transsion.cloud_drive.base.exceptions.NoConnectivityException;
import okhttp3.Interceptor;
import okhttp3.Response;

public final class sz6 implements Interceptor {
    @Override
    public Response intercept(Interceptor.Chain chain) throws NoConnectivityException {
        y45.j(chain, "chain");
        if (d07.a.a()) {
            return chain.proceed(chain.request());
        }
        throw new NoConnectivityException();
    }
}
