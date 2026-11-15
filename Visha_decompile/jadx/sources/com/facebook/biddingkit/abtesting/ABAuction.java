package com.facebook.biddingkit.abtesting;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.biddingkit.auction.Auction;
import com.facebook.biddingkit.auction.AuctionListener;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import java.util.HashMap;
import java.util.Map;

public class ABAuction {
    private static final String TAG = "ABAuction";
    private boolean mAbAuctionCalled;
    private final ABTest mAbTest;
    private final Map<String, Auction> mAuctionExperiments;

    public static class Builder {
        private ABTest mAbTest;
        private Map<String, Auction.Builder> mAuctionExperiments = new HashMap();

        public Builder(ABTest aBTest) {
            this.mAbTest = aBTest;
        }

        private Builder addSegment(ABTestSegment aBTestSegment) {
            if (this.mAuctionExperiments.get(aBTestSegment.getSegment()) == null) {
                this.mAuctionExperiments.put(aBTestSegment.getSegment(), new Auction.Builder());
            }
            return this;
        }

        public Builder addBidder(ABTestSegment aBTestSegment, @Nullable Bidder bidder) {
            addSegment(aBTestSegment);
            this.mAuctionExperiments.get(aBTestSegment.getSegment()).addBidder(bidder);
            return this;
        }

        public ABAuction build() {
            HashMap map = new HashMap();
            for (String str : this.mAuctionExperiments.keySet()) {
                map.put(str, this.mAuctionExperiments.get(str).setTestSegment(this.mAbTest.getCurrent().getSegment()).build());
            }
            return new ABAuction(this.mAbTest, map);
        }
    }

    private void internalStartABAuction(@Nullable String str, Waterfall waterfall, AuctionListener auctionListener) {
        if (this.mAbAuctionCalled) {
            IllegalStateException illegalStateException = new IllegalStateException("You should not call startABAuction more than once on a given instance. Create a new instance of ABAuction and run startABAuction.");
            BkLog.e(TAG, "Failed AbAuction: ", illegalStateException);
            throw illegalStateException;
        }
        Auction auction = this.mAuctionExperiments.get(this.mAbTest.getCurrent().getSegment());
        if (auction == null) {
            BkLog.e(TAG, "Called startABAuction for unknown experiment " + this.mAbTest.getCurrent());
        } else if (str == null) {
            auction.startAuction(waterfall, auctionListener);
        } else {
            auction.startRemoteAuction(str, waterfall, auctionListener);
        }
        this.mAbAuctionCalled = true;
    }

    public void notifyDisplayWinner(WaterfallEntry waterfallEntry) {
        Auction auction = this.mAuctionExperiments.get(this.mAbTest.getCurrent().getSegment());
        if (auction != null) {
            auction.notifyDisplayWinner(waterfallEntry);
            return;
        }
        BkLog.e(TAG, "Called notifyDisplayWinner for unknown experiment " + this.mAbTest.getCurrent());
    }

    public void startABAuction(Waterfall waterfall, AuctionListener auctionListener) {
        internalStartABAuction(null, waterfall, auctionListener);
    }

    public void startRemoteABAuction(String str, Waterfall waterfall, AuctionListener auctionListener) {
        if (!TextUtils.isEmpty(str)) {
            internalStartABAuction(str, waterfall, auctionListener);
        } else {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("For running auction remotely, you have to supply the base URL of your bidding server that runs the auction");
            BkLog.e(TAG, "Failed remote ABAuction.", illegalArgumentException);
            throw illegalArgumentException;
        }
    }

    private ABAuction(ABTest aBTest, Map<String, Auction> map) {
        this.mAbAuctionCalled = false;
        this.mAuctionExperiments = map;
        this.mAbTest = aBTest;
    }
}
