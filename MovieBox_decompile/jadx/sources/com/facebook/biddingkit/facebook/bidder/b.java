package com.facebook.biddingkit.facebook.bidder;

import com.facebook.biddingkit.gen.FBAdBidAuctionType;
import com.facebook.biddingkit.gen.FacebookAdBidFormat;

public abstract class b {

    public static String f23438a = "FACEBOOK_BIDDER";

    public static class a {

        private String f23439a;

        private String f23440b;

        private FacebookAdBidFormat f23441c;

        private String f23442d;

        private String f23443e;

        private FBAdBidAuctionType f23444f = FBAdBidAuctionType.FIRST_PRICE;

        private String f23445g;

        public a(String str, String str2, FacebookAdBidFormat facebookAdBidFormat, String str3) {
            this.f23439a = str;
            this.f23440b = str2;
            this.f23441c = facebookAdBidFormat;
            this.f23443e = str3;
            this.f23445g = str;
        }

        protected String a() {
            return this.f23439a;
        }

        protected String b() {
            return this.f23442d;
        }

        protected String c() {
            return this.f23440b;
        }

        public a d(String str) {
            this.f23442d = str;
            return this;
        }
    }

    public static l8.b a(String str) {
        return new FacebookNotifier(str, new c(com.facebook.biddingkit.bridge.a.b()));
    }
}
