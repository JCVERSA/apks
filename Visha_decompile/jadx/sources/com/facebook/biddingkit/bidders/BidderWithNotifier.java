package com.facebook.biddingkit.bidders;

public interface BidderWithNotifier extends Bidder {
    void retrieveBidWithNotificationCompleted(BidResponseCallback bidResponseCallback);
}
