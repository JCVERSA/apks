package com.transsion.transfer.androidasync.http.cache;

import com.transsion.transfer.androidasync.http.a0;
import com.transsion.transfer.androidasync.http.g;
import com.transsion.transfer.androidasync.j;
import com.transsion.transfer.androidasync.t;

public abstract class ResponseCacheMiddleware extends a0 {

    class AnonymousClass1 implements Runnable {
        final ResponseCacheMiddleware this$0;
        final g.a val$data;
        final a val$socket;

        AnonymousClass1(ResponseCacheMiddleware responseCacheMiddleware, g.a aVar, a aVar2) {
            this.val$data = aVar;
        }

        @Override
        public void run() {
            this.val$data.f53280c.a(null, null);
            throw null;
        }
    }

    private static class CachedBodyEmitter extends t {

        class AnonymousClass1 implements Runnable {
            final CachedBodyEmitter this$0;

            AnonymousClass1(CachedBodyEmitter cachedBodyEmitter) {
            }

            @Override
            public void run() {
                throw null;
            }
        }

        class AnonymousClass2 implements Runnable {
            final CachedBodyEmitter this$0;

            AnonymousClass2(CachedBodyEmitter cachedBodyEmitter) {
            }

            @Override
            public void run() {
                throw null;
            }
        }
    }

    private class a extends CachedBodyEmitter implements j {
    }
}
