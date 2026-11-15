package com.facebook.biddingkit.auction;

import com.facebook.biddingkit.waterfall.Waterfall;

public interface AuctionListener {
    void onAuctionCompleted(Waterfall waterfall);
}
