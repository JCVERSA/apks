package com.facebook.biddingkit.gen;

public interface BidWithNotification extends Bid {
    void notifyLoss();

    void notifyWin();
}
