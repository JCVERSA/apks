package com.lzy.okgo.cache.policy;

import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.request.base.Request;
import defpackage.hu8;
import defpackage.p90;
import defpackage.uq0;

public class NoCachePolicy extends p90 {

    class AnonymousClass1 implements Runnable {
        final hu8 val$success;

        public AnonymousClass1(hu8 hu8Var) {
            this.val$success = hu8Var;
        }

        @Override
        public void run() {
            NoCachePolicy.this.getClass();
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
            NoCachePolicy.this.getClass();
            throw null;
        }
    }

    public NoCachePolicy(Request request) {
        super(request);
    }

    @Override
    public void b(CacheEntity cacheEntity, uq0 uq0Var) {
        f(new Runnable() {
            @Override
            public void run() {
                NoCachePolicy.this.getClass();
                Request request = NoCachePolicy.this.a;
                throw null;
            }
        });
    }

    @Override
    public hu8 c(CacheEntity cacheEntity) {
        try {
            d();
            return e();
        } catch (Throwable th) {
            return hu8.c(false, this.e, null, th);
        }
    }
}
