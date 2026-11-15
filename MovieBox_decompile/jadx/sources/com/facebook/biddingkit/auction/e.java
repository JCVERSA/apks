package com.facebook.biddingkit.auction;

import java.util.List;
import java.util.concurrent.Callable;

abstract class e extends d {

    static class a implements Callable {

        final String f23427a;

        a(p8.b bVar, String str) {
            this.f23427a = str;
        }

        public p8.a a() {
            throw null;
        }

        @Override
        public Object call() {
            a();
            return null;
        }
    }

    protected static List a(String str, p8.b bVar, b bVar2) {
        q8.a.f69400c.submit(new a(bVar, str));
        new com.facebook.biddingkit.logging.e();
        throw null;
    }
}
