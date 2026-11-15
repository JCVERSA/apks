package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.cloud.tmc.ad.TrackingManager;
import com.facebook.biddingkit.bidders.LossCode;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import java.util.HashMap;
import java.util.Map;
import n8.e;

class FacebookNotifier implements l8.b {

    private final int f23430a;

    private com.facebook.biddingkit.facebook.bidder.a f23431b;

    private final b.a f23432c;

    private final c f23433d;

    private boolean f23434e;

    private String f23435f;

    private String f23436g;

    static class a {

        static final int[] f23437a;

        static {
            int[] iArr = new int[HttpStatusCode.values().length];
            f23437a = iArr;
            try {
                iArr[HttpStatusCode.NO_BID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23437a[HttpStatusCode.BAD_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23437a[HttpStatusCode.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected FacebookNotifier(String str, c cVar) {
        this(new b.a("", "", null, "").d(str), cVar);
        this.f23434e = true;
    }

    protected static Double c(r8.b bVar, r8.b bVar2) {
        if (bVar == null) {
            return Double.valueOf(0.0d);
        }
        if (b.f23438a.equals(bVar.b())) {
            return Double.valueOf(bVar2 != null ? bVar2.a() : 0.0d);
        }
        return Double.valueOf(bVar.a());
    }

    private String d() {
        return this.f23433d.a();
    }

    protected static String e(r8.b bVar) {
        if (bVar == null) {
            return null;
        }
        return bVar.b();
    }

    private int i() {
        return 2000;
    }

    @Override
    public void a(String str, r8.a aVar) {
        r8.b[] bVarArrB = q8.b.b(aVar);
        r8.b bVar = bVarArrB[0];
        String strE = e(null);
        r8.b bVar2 = bVarArrB[0];
        r8.b bVar3 = bVarArrB[1];
        j(str, strE, c(null, null), false);
    }

    protected String f() {
        return TextUtils.isEmpty(this.f23436g) ? q8.b.c(com.facebook.biddingkit.bridge.a.a()) : this.f23436g;
    }

    protected LossCode g(String str) {
        if (this.f23434e) {
            return LossCode.DID_NOT_PARTICIPATE;
        }
        return b.f23438a.equals(str) ? LossCode.WIN : LossCode.TIMEOUT;
    }

    protected String h() {
        return TextUtils.isEmpty(this.f23435f) ? com.facebook.biddingkit.bridge.a.a().getPackageName() : this.f23435f;
    }

    protected void j(String str, String str2, Double d10, boolean z10) {
        e eVarA = o8.b.a(k(z10, str, str2, d10), i());
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Facebook display winner notified with http status ");
            sb2.append(eVarA != null ? String.valueOf(eVarA.a()) : "null");
            com.facebook.biddingkit.logging.b.a("FacebookNotifier", sb2.toString());
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Facebook bidder winner notified with http status ");
        sb3.append(eVarA != null ? String.valueOf(eVarA.a()) : "null");
        com.facebook.biddingkit.logging.b.a("FacebookNotifier", sb3.toString());
    }

    protected String k(boolean z10, String str, String str2, Double d10) {
        String strD = d();
        try {
            String[] strArrSplit = this.f23432c.c().split("_", 2);
            for (Map.Entry<String, String> entry : new HashMap<String, String>(strArrSplit.length >= 2 ? strArrSplit[1] : "", str, str2, d10, z10) {
                final Double val$cpmCents;
                final String val$entryName;
                final boolean val$isDisplay;
                final String val$placementFbid;
                final String val$segment;

                {
                    this.val$placementFbid = str;
                    this.val$segment = str;
                    this.val$entryName = str2;
                    this.val$cpmCents = d10;
                    this.val$isDisplay = z10;
                    put("${PARTNER_FBID}", FacebookNotifier.this.f23432c.a());
                    put("${APP_FBID}", FacebookNotifier.this.f23432c.a());
                    put("${PLACEMENT_FBID}", str);
                    put("${BUNDLE}", FacebookNotifier.this.h());
                    put("${IDFA}", FacebookNotifier.this.f());
                    put("${AUCTION_ID}", FacebookNotifier.this.f23432c.b());
                    put("${AB_TEST_SEGMENT}", str);
                    put("${AUCTION_LOSS}", FacebookNotifier.this.g(str2).getStringValue());
                    put(TrackingManager.AUCTION_PRICE, Double.toString(d10.doubleValue() / 100.0d));
                    put("${WINNER_NAME}", str2 == null ? "" : str2);
                    put("${WINNER_TYPE}", m8.a.a(str2) ? "bidding" : "waterfall");
                    put("${PHASE}", z10 ? "display" : "auction");
                }
            }.entrySet()) {
                String value = entry.getValue();
                if (value == null) {
                    value = "";
                }
                strD = strD.replace(entry.getKey(), value);
            }
        } catch (Throwable th2) {
            com.facebook.biddingkit.logging.b.d("FacebookNotifier", "Failed processing the Url", th2);
        }
        return strD;
    }

    public FacebookNotifier(b.a aVar, c cVar) {
        this.f23430a = 2000;
        this.f23435f = "";
        this.f23436g = "";
        this.f23432c = aVar;
        this.f23433d = cVar;
    }
}
