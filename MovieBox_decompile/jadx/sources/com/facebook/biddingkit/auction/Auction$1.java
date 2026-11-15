package com.facebook.biddingkit.auction;

import java.util.Iterator;

class Auction$1 implements Runnable {
    final a this$0;
    final c val$listener;
    final r8.a val$waterfall;

    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override
        public void run() {
            Auction$1.this.getClass();
            Iterator it = a.b(null).iterator();
            while (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
            }
            Auction$1.this.getClass();
            l8.b bVarA = com.facebook.biddingkit.facebook.bidder.b.a(a.a(null));
            Auction$1.this.getClass();
            String strD = a.d(null);
            Auction$1.this.getClass();
            bVarA.a(strD, null);
        }
    }

    Auction$1(a aVar, r8.a aVar2, c cVar) {
    }

    @Override
    public void run() {
        System.currentTimeMillis();
        throw null;
    }
}
