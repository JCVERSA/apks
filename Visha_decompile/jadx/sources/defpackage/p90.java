package defpackage;

import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.exception.HttpException;
import com.lzy.okgo.request.base.Request;
import java.net.SocketTimeoutException;
import okhttp3.Call;
import okhttp3.Response;

public abstract class p90 implements xp0 {
    public Request a;
    public volatile boolean b;
    public volatile int c = 0;
    public boolean d;
    public Call e;
    public CacheEntity f;

    public p90(Request request) {
        this.a = request;
    }

    @Override
    public CacheEntity a() {
        if (this.a.getCacheKey() == null) {
            Request request = this.a;
            request.cacheKey(ut4.c(request.getBaseUrl(), this.a.getParams().urlParamsMap));
        }
        if (this.a.getCacheMode() == null) {
            this.a.cacheMode(CacheMode.NO_CACHE);
        }
        CacheMode cacheMode = this.a.getCacheMode();
        if (cacheMode != CacheMode.NO_CACHE) {
            CacheEntity cacheEntityN = up0.p().n(this.a.getCacheKey());
            this.f = cacheEntityN;
            so4.a(this.a, cacheEntityN, cacheMode);
            CacheEntity cacheEntity = this.f;
            if (cacheEntity != null && cacheEntity.checkExpire(cacheMode, this.a.getCacheTime(), System.currentTimeMillis())) {
                this.f.setExpire(true);
            }
        }
        CacheEntity cacheEntity2 = this.f;
        if (cacheEntity2 == null || cacheEntity2.isExpire() || this.f.getData() == null || this.f.getResponseHeaders() == null) {
            this.f = null;
        }
        return this.f;
    }

    public synchronized Call d() {
        try {
            if (this.d) {
                throw HttpException.COMMON("Already executed!");
            }
            this.d = true;
            this.e = this.a.getRawCall();
            if (this.b) {
                this.e.cancel();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.e;
    }

    public hu8 e() {
        try {
            Response responseExecute = this.e.execute();
            int iCode = responseExecute.code();
            if (iCode != 404 && iCode < 500) {
                this.a.getConverter();
                throw null;
            }
            return hu8.c(false, this.e, responseExecute, HttpException.NET_ERROR());
        } catch (Throwable th) {
            if ((th instanceof SocketTimeoutException) && this.c < this.a.getRetryCount()) {
                this.c++;
                this.e = this.a.getRawCall();
                if (this.b) {
                    this.e.cancel();
                } else {
                    e();
                }
            }
            return hu8.c(false, this.e, null, th);
        }
    }

    public void f(Runnable runnable) {
        fe7.i().h().post(runnable);
    }
}
