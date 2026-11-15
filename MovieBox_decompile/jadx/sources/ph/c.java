package ph;

import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.bidding.video.BiddingBuyOutBuyOutVideoActivity;
import com.transsion.ad.bidding.video.BiddingBuyOutVideoAutoFullScreenActivity;
import kotlin.jvm.internal.Intrinsics;

public final class c extends AbsBiddingBuyOutGemini {
    @Override
    public Class c() {
        return Intrinsics.c(d(), "auto_fullscreen") ? BiddingBuyOutVideoAutoFullScreenActivity.class : BiddingBuyOutBuyOutVideoActivity.class;
    }

    @Override
    public String e() {
        return "video";
    }

    @Override
    public String getLogTag() {
        return "ad_v";
    }
}
