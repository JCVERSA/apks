package com.facebook.biddingkit.bidders;

import androidx.annotation.Nullable;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import org.json.JSONObject;

public interface InternalAuctionBidderWithNotifier extends Bidder {
    JSONObject getPayload(String str);

    void notifyBidderWinner(String str, @Nullable Waterfall waterfall, String str2);

    void notifyDisplayWinner(String str, @Nullable WaterfallEntry waterfallEntry, String str2);

    Bid requestBid(String str);
}
