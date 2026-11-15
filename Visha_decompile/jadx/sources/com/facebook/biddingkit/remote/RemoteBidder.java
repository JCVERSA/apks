package com.facebook.biddingkit.remote;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class RemoteBidder implements Bidder {
    private static final int DEFAULT_CONNECTION_TIMEOUT_MS = 1000;
    private static final String ENDPOINT = "/bks/auction";
    public static final String NAME = "REMOTE_BIDDER";
    private static final String TAG = "RemoteBidder";
    protected final Builder mBidderData;
    private final Map<String, RemoteNotifier> mRemoteNotifiers;

    public static class Builder {
        private String mAuctionId = "";
        private String mAuctionUrlBase = "";
        private List<Bidder> mBidders = new LinkedList();

        public Bidder build() {
            return new RemoteBidder(this);
        }

        public String getAuctionId() {
            return this.mAuctionId;
        }

        public String getAuctionUrlBase() {
            return this.mAuctionUrlBase;
        }

        public List<Bidder> getBidders() {
            return this.mBidders;
        }

        public Builder setAuctionId(String str) {
            this.mAuctionId = str;
            return this;
        }

        public Builder setAuctionUrlBase(String str) {
            this.mAuctionUrlBase = str;
            return this;
        }

        public Builder setBidders(List<Bidder> list) {
            this.mBidders = list;
            return this;
        }
    }

    @Override
    public String getBidderName() {
        return "REMOTE_BIDDER";
    }

    @VisibleForTesting
    public JSONObject getPayload(String str) {
        this.mBidderData.setAuctionId(str);
        return RemoteBidderPayloadBuilder.getPayload(this.mBidderData);
    }

    public void notifyDisplayWinner(String str, @Nullable WaterfallEntry waterfallEntry, String str2) {
        if (waterfallEntry == null) {
            BkLog.e(TAG, "Received null winner entry to notify in display winner");
            return;
        }
        RemoteNotifier remoteNotifierRemove = this.mRemoteNotifiers.remove(str2);
        if (remoteNotifierRemove == null) {
            BkLog.e(TAG, "Remote Bidder did not get to initialize notifier", new Throwable());
        } else {
            remoteNotifierRemove.notifyDisplayWinner(str, waterfallEntry);
        }
    }

    public RemoteAuctionResult requestBids(String str) {
        RemoteAuctionResult remoteAuctionResult = RemoteBidsBuilder.get(RequestSender.post(this.mBidderData.getAuctionUrlBase() + ENDPOINT, 1000, getPayload(str).toString()), System.currentTimeMillis());
        this.mRemoteNotifiers.put(str, new RemoteNotifier(this.mBidderData.getAuctionUrlBase(), str, remoteAuctionResult.getNotificationData()));
        return remoteAuctionResult;
    }

    private RemoteBidder(Builder builder) {
        this.mBidderData = builder;
        this.mRemoteNotifiers = Collections.synchronizedMap(new HashMap());
    }
}
