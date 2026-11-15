package defpackage;

import android.app.Application;
import android.content.Context;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.interceptor.HttpLoggingInterceptor;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.OkHttpClient;

public class lz6 extends vec {
    public static volatile boolean b = false;

    public class a extends ProxySelector {
        public final ProxySelector a;

        public a(ProxySelector proxySelector) {
            this.a = proxySelector;
        }

        @Override
        public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
            try {
                ProxySelector proxySelector = this.a;
                if (proxySelector != null) {
                    proxySelector.connectFailed(uri, socketAddress, iOException);
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public List select(URI uri) {
            List<Proxy> listSelect;
            try {
                ProxySelector proxySelector = this.a;
                if (proxySelector != null && (listSelect = proxySelector.select(uri)) != null && !listSelect.isEmpty()) {
                    return listSelect;
                }
            } catch (Throwable unused) {
            }
            return Collections.singletonList(Proxy.NO_PROXY);
        }
    }

    public static void j() {
        if (b) {
            return;
        }
        b = true;
        try {
            ProxySelector.setDefault(new a(ProxySelector.getDefault()));
        } catch (Throwable unused) {
        }
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public Void create(Context context) {
        j();
        if (!(context instanceof Application)) {
            return null;
        }
        i((Application) context);
        return null;
    }

    public final void i(Application application) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("OkGo");
        httpLoggingInterceptor.h(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.g(Level.INFO);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.readTimeout(60000L, timeUnit);
        builder.writeTimeout(60000L, timeUnit);
        builder.connectTimeout(60000L, timeUnit);
        builder.cookieJar(new sj1(new ip1(application)));
        fe7.i().l(application).o(builder.build()).m(CacheMode.NO_CACHE).n(-1L).p(3);
    }
}
