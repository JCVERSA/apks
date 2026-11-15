package ph;

import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.bidding.splash.BiddingBuyOutSplashActivity;

public final class b extends AbsBiddingBuyOutGemini {
    @Override
    public Class c() {
        return BiddingBuyOutSplashActivity.class;
    }

    @Override
    public String e() {
        return "splash";
    }

    @Override
    public String getLogTag() {
        return "ad_s";
    }
}
