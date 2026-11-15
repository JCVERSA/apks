package com.facebook.biddingkit.remote;

import java.util.List;

public class RemoteAuctionResult {
    private final List<RemoteBid> mBids;
    private final long mLatency;
    private final String mNotificationData;

    public RemoteAuctionResult(String str, List<RemoteBid> list, long j) {
        this.mNotificationData = str;
        this.mBids = list;
        this.mLatency = j;
    }

    public List<RemoteBid> getBids() {
        return this.mBids;
    }

    public long getLatency() {
        return this.mLatency;
    }

    public String getNotificationData() {
        return this.mNotificationData;
    }
}
