package defpackage;

import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.cache.policy.DefaultCachePolicy;
import com.lzy.okgo.cache.policy.FirstCacheRequestPolicy;
import com.lzy.okgo.cache.policy.NoCachePolicy;
import com.lzy.okgo.cache.policy.NoneCacheRequestPolicy;
import com.lzy.okgo.cache.policy.RequestFailedCachePolicy;
import com.lzy.okgo.request.base.Request;

public class kp0 implements kq0 {
    public xp0 a;
    public Request b;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[CacheMode.values().length];
            a = iArr;
            try {
                iArr[CacheMode.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CacheMode.NO_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CacheMode.IF_NONE_CACHE_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[CacheMode.FIRST_CACHE_THEN_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[CacheMode.REQUEST_FAILED_READ_CACHE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public kp0(Request request) {
        this.a = null;
        this.b = request;
        this.a = c();
    }

    @Override
    public void a(uq0 uq0Var) {
        ut4.b(uq0Var, "callback == null");
        this.a.b(this.a.a(), uq0Var);
    }

    public kq0 clone() {
        return new kp0(this.b);
    }

    public final xp0 c() {
        int i = a.a[this.b.getCacheMode().ordinal()];
        if (i == 1) {
            this.a = new DefaultCachePolicy(this.b);
        } else if (i == 2) {
            this.a = new NoCachePolicy(this.b);
        } else if (i == 3) {
            this.a = new NoneCacheRequestPolicy(this.b);
        } else if (i == 4) {
            this.a = new FirstCacheRequestPolicy(this.b);
        } else if (i == 5) {
            this.a = new RequestFailedCachePolicy(this.b);
        }
        if (this.b.getCachePolicy() != null) {
            this.a = this.b.getCachePolicy();
        }
        ut4.b(this.a, "policy == null");
        return this.a;
    }

    @Override
    public hu8 execute() {
        return this.a.c(this.a.a());
    }
}
