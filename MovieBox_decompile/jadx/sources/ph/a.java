package ph;

import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.bidding.interstitial.BiddingBuyOutBuyOutInterstitialHalfScreenActivity;
import com.transsion.ad.bidding.interstitial.BiddingBuyOutInterstitialActionActivity;
import com.transsion.ad.bidding.interstitial.BiddingBuyOutInterstitialAutoFullScreenActivity;
import kotlin.jvm.internal.Intrinsics;

public final class a extends AbsBiddingBuyOutGemini {
    @Override
    public Class c() {
        String strD = d();
        if (Intrinsics.c(strD, "auto_fullscreen")) {
            return BiddingBuyOutInterstitialAutoFullScreenActivity.class;
        }
        return Intrinsics.c(strD, "action_dialog") ? BiddingBuyOutInterstitialActionActivity.class : BiddingBuyOutBuyOutInterstitialHalfScreenActivity.class;
    }

    @Override
    public String e() {
        return com.vungle.ads.internal.b.PLACEMENT_TYPE_INTERSTITIAL;
    }

    @Override
    public String getLogTag() {
        return "ad_int";
    }
}
