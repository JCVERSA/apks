package com.facebook.biddingkit.bidders;

import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;

public interface Notifier {
    void notifyBidderWinner(String str, Waterfall waterfall);

    void notifyDisplayWinner(String str, WaterfallEntry waterfallEntry);
}
