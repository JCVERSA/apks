package com.mbridge.msdk.mbbid.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.authoritycontroller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.middle.b;
import java.util.Map;

public class BidManager {

    private b f35390a;

    private BidListennning f35391b;

    private boolean f35392c;

    public BidManager(String str, String str2) {
        this(str, str2, "0");
    }

    private void a(String str) {
        BidListennning bidListennning = this.f35391b;
        if (bidListennning != null) {
            bidListennning.onFailed(str);
        }
    }

    public static String getBuyerUid(Context context) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                o0.b("BidManager", th2.getMessage());
            }
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, "");
    }

    public void bid() {
        b bVar = this.f35390a;
        if (bVar != null) {
            bVar.a(this.f35392c);
        } else {
            a("you need init the class :BidManager");
        }
    }

    public void setBidListener(BidListennning bidListennning) {
        this.f35391b = bidListennning;
        b bVar = this.f35390a;
        if (bVar != null) {
            bVar.a(bidListennning);
        }
    }

    public void setRewardPlus(boolean z10) {
        this.f35392c = z10;
    }

    public BidManager(String str, String str2, String str3) {
        this.f35392c = false;
        this.f35390a = new b(str, str2, str3);
    }

    public <T extends CommonBidRequestParams> BidManager(T t10) {
        this(t10 == null ? "" : t10.getmPlacementId(), t10 == null ? "" : t10.getmUnitId(), t10 != null ? t10.getmFloorPrice() : "");
        if (t10 instanceof BannerBidRequestParams) {
            BannerBidRequestParams bannerBidRequestParams = (BannerBidRequestParams) t10;
            this.f35390a.a(bannerBidRequestParams.getHeight());
            this.f35390a.b(bannerBidRequestParams.getWidth());
            this.f35390a.a(296);
            if (t10 instanceof SplashBidRequestParams) {
                SplashBidRequestParams splashBidRequestParams = (SplashBidRequestParams) t10;
                this.f35390a.b(splashBidRequestParams.a());
                this.f35390a.b(splashBidRequestParams.getOrientation());
                this.f35390a.a(297);
                return;
            }
            return;
        }
        if (t10 instanceof AdvancedNativeBidRequestParams) {
            AdvancedNativeBidRequestParams advancedNativeBidRequestParams = (AdvancedNativeBidRequestParams) t10;
            this.f35390a.a(advancedNativeBidRequestParams.getHeight());
            this.f35390a.b(advancedNativeBidRequestParams.getWidth());
            this.f35390a.a(298);
        }
    }

    public static String getBuyerUid(Context context, String str) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                o0.b("BidManager", th2.getMessage());
            }
        }
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, str);
    }

    public static String getBuyerUid(Context context, Map<String, String> map) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                o0.b("BidManager", th2.getMessage());
            }
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, map);
    }
}
