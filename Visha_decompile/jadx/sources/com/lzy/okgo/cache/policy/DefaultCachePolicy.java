package com.lzy.okgo.cache.policy;

import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.exception.CacheException;
import com.lzy.okgo.request.base.Request;
import defpackage.hu8;
import defpackage.p90;
import defpackage.uq0;

public class DefaultCachePolicy extends p90 {

    class AnonymousClass1 implements Runnable {
        final hu8 val$success;

        public AnonymousClass1(hu8 hu8Var) {
            this.val$success = hu8Var;
        }

        @Override
        public void run() {
            DefaultCachePolicy.this.getClass();
            throw null;
        }
    }

    class AnonymousClass2 implements Runnable {
        final hu8 val$error;

        public AnonymousClass2(hu8 hu8Var) {
            this.val$error = hu8Var;
        }

        @Override
        public void run() {
            DefaultCachePolicy.this.getClass();
            throw null;
        }
    }

    class AnonymousClass3 implements Runnable {
        final hu8 val$error;

        public AnonymousClass3(hu8 hu8Var) {
            this.val$error = hu8Var;
        }

        @Override
        public void run() {
            DefaultCachePolicy.this.getClass();
            throw null;
        }
    }

    class AnonymousClass4 implements Runnable {
        final hu8 val$success;

        public AnonymousClass4(hu8 hu8Var) {
            this.val$success = hu8Var;
        }

        @Override
        public void run() {
            DefaultCachePolicy.this.getClass();
            throw null;
        }
    }

    public DefaultCachePolicy(Request request) {
        super(request);
    }

    @Override
    public void b(CacheEntity cacheEntity, uq0 uq0Var) {
        f(new Runnable() {
            @Override
            public void run() {
                DefaultCachePolicy.this.getClass();
                Request request = DefaultCachePolicy.this.a;
                throw null;
            }
        });
    }

    @Override
    public hu8 c(CacheEntity cacheEntity) {
        try {
            d();
            hu8 hu8VarE = e();
            if (hu8VarE.f() && hu8VarE.b() == 304) {
                return cacheEntity == null ? hu8.c(true, this.e, hu8VarE.e(), CacheException.NON_AND_304(this.a.getCacheKey())) : hu8.m(true, cacheEntity.getData(), this.e, hu8VarE.e());
            }
            return hu8VarE;
        } catch (Throwable th) {
            return hu8.c(false, this.e, null, th);
        }
    }
}
