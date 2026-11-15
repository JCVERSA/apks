package com.facebook.biddingkit.bidders;

import com.facebook.biddingkit.gen.BidWithNotification;

public interface BidResponseCallback {
    void handleBidResponse(BidWithNotification bidWithNotification);

    void handleBidResponseFailure(String str);
}
