package com.facebook.biddingkit.auction;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.bidders.InternalAuctionBidderWithNotifier;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.facebook.bidder.FacebookBidder;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.remote.RemoteBid;
import com.facebook.biddingkit.remote.RemoteBidder;
import com.facebook.biddingkit.utils.MultiAsyncTaskExecutor;
import com.facebook.biddingkit.utils.RandomString;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class Auction {
    private static final String TAG = "Auction";
    private boolean auctionCalled;
    private final String mAuctionId;
    private List<Bidder> mBidderList;
    private final AuctionConfig mConfiguration;

    @Nullable
    private RemoteBidder mRemoteBidder;
    private String mTestSegment;

    public static class Builder {
        private List<Bidder> mBidderList = new LinkedList();
        private String mTestSegment = "";

        public Builder addBidder(@Nullable Bidder bidder) {
            if (bidder != null) {
                this.mBidderList.add(bidder);
            }
            return this;
        }

        public Auction build() {
            return new Auction(this.mBidderList, this.mTestSegment);
        }

        public Builder setTestSegment(String str) {
            this.mTestSegment = str;
            return this;
        }
    }

    public void notifyDisplayWinnerFromClient(WaterfallEntry waterfallEntry) {
        boolean z = false;
        for (Bidder bidder : this.mBidderList) {
            if (bidder instanceof InternalAuctionBidderWithNotifier) {
                ((InternalAuctionBidderWithNotifier) bidder).notifyDisplayWinner(this.mTestSegment, waterfallEntry, this.mAuctionId);
            }
            if (bidder instanceof FacebookBidder) {
                z = true;
            }
        }
        if (z) {
            return;
        }
        FacebookBidder.getDefaultInternalNotifier(this.mAuctionId).notifyDisplayWinner(this.mTestSegment, waterfallEntry);
    }

    public void notifyDisplayWinnerFromServer(WaterfallEntry waterfallEntry) {
        this.mRemoteBidder.notifyDisplayWinner(this.mTestSegment, waterfallEntry, this.mAuctionId);
    }

    public void notifyDisplayWinner(final WaterfallEntry waterfallEntry) {
        MultiAsyncTaskExecutor.GENERAL_EXECUTOR.execute(new Runnable() {
            @Override
            public void run() {
                if (Auction.this.mRemoteBidder == null) {
                    Auction.this.notifyDisplayWinnerFromClient(waterfallEntry);
                } else {
                    Auction.this.notifyDisplayWinnerFromServer(waterfallEntry);
                }
            }
        });
    }

    public void startAuction(final Waterfall waterfall, final AuctionListener auctionListener) {
        if (this.auctionCalled) {
            IllegalStateException illegalStateException = new IllegalStateException("You should not call startAuction more than once on a given instance. Create a new instance of Auction and run startAuction.");
            BkLog.e(TAG, "Failed to get AdvertisingIdClient: ", illegalStateException);
            throw illegalStateException;
        }
        BkLog.d(TAG, "Auction started. Auction ID: " + this.mAuctionId);
        MultiAsyncTaskExecutor.GENERAL_EXECUTOR.execute(new Runnable() {
            @Override
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Waterfall waterfallCreateWaterfallCopy = waterfall.createWaterfallCopy();
                Iterator<Bid> it = AuctionRunner.getBids(Auction.this.mAuctionId, Auction.this.mBidderList, Auction.this.mConfiguration).iterator();
                while (it.hasNext()) {
                    waterfallCreateWaterfallCopy.insert(it.next());
                }
                BkLog.d(Auction.TAG, "Auction finished after " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                MultiAsyncTaskExecutor.GENERAL_EXECUTOR.execute(new Runnable() {
                    @Override
                    public void run() {
                        boolean z = false;
                        for (Bidder bidder : Auction.this.mBidderList) {
                            if (bidder instanceof InternalAuctionBidderWithNotifier) {
                                String str = Auction.this.mTestSegment;
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                ((InternalAuctionBidderWithNotifier) bidder).notifyBidderWinner(str, waterfall, Auction.this.mAuctionId);
                            }
                            if (bidder instanceof FacebookBidder) {
                                z = true;
                            }
                        }
                        if (z) {
                            return;
                        }
                        FacebookBidder.getDefaultInternalNotifier(Auction.this.mAuctionId).notifyBidderWinner(Auction.this.mTestSegment, waterfall);
                    }
                });
                auctionListener.onAuctionCompleted(waterfallCreateWaterfallCopy);
            }
        });
        this.auctionCalled = true;
    }

    public void startRemoteAuction(String str, final Waterfall waterfall, final AuctionListener auctionListener) {
        if (TextUtils.isEmpty(str)) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("For running auction remotely, you have to supply the base URL of your bidding server that runs the auction");
            BkLog.e(TAG, "Failed to start remote auction: ", illegalArgumentException);
            throw illegalArgumentException;
        }
        if (this.auctionCalled) {
            IllegalStateException illegalStateException = new IllegalStateException("You should not call startAuction or startRemoteAuction more than once on a given instance. Create a new instance of Auction and run startRemoteAuction.");
            BkLog.e(TAG, "Multiple attempts to starting auction: ", illegalStateException);
            throw illegalStateException;
        }
        this.auctionCalled = true;
        BkLog.d(TAG, "Remote auction started. Auction ID: " + this.mAuctionId);
        final RemoteBidder remoteBidder = (RemoteBidder) new RemoteBidder.Builder().setAuctionUrlBase(str).setBidders(this.mBidderList).build();
        this.mRemoteBidder = remoteBidder;
        MultiAsyncTaskExecutor.GENERAL_EXECUTOR.execute(new Runnable() {
            @Override
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                List<RemoteBid> remoteBids = RemoteAuctionRunner.getRemoteBids(Auction.this.mAuctionId, remoteBidder, Auction.this.mConfiguration);
                Waterfall waterfallCreateWaterfallCopy = waterfall.createWaterfallCopy();
                if (!remoteBids.isEmpty() && remoteBids.get(0).getCurrency().equals("priorityInList") && waterfall.entries().iterator().hasNext()) {
                    BkLog.e(Auction.TAG, "Got non-empty waterfall and bids with priorityInList instead of a monetary value. Inserting them into the waterfall might cause issues.");
                }
                Iterator<RemoteBid> it = remoteBids.iterator();
                while (it.hasNext()) {
                    waterfallCreateWaterfallCopy.insert(it.next());
                }
                BkLog.d(Auction.TAG, "Auction finished after " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                auctionListener.onAuctionCompleted(waterfallCreateWaterfallCopy);
            }
        });
    }

    private Auction(List<Bidder> list) {
        this(list, "");
    }

    private Auction(List<Bidder> list, String str) {
        this.auctionCalled = false;
        this.mBidderList = list;
        this.mAuctionId = RandomString.get();
        this.mTestSegment = str;
        this.mConfiguration = new AuctionConfig(BiddingKit.getConfiguration());
    }
}
