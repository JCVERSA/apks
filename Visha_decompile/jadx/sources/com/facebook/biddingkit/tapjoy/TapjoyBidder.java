package com.facebook.biddingkit.tapjoy;

import androidx.annotation.Nullable;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.bidders.InternalAuctionBidderWithNotifier;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.gen.TapjoyAdFormat;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.utils.Utils;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class TapjoyBidder implements InternalAuctionBidderWithNotifier {
    public static String NAME = "TAPJOY_BIDDER";
    private static final String TAG = "TapjoyBidder";
    protected final Builder mBidderData;
    protected final TapjoyConfig mConfiguration;
    private Map<String, TapjoyNotifier> mNotifiers;

    public static class Builder {
        private static final String IMPRESSION_ID = "Tapjoy Ad Impression";
        private TapjoyAdFormat mAdFormat;
        private String mAppId;
        private String mAuctionId;
        private String mBidToken;
        private boolean mCoppa;
        private String mPlacementId;
        private boolean mTestMode;

        public Builder(String str, String str2, TapjoyAdFormat tapjoyAdFormat, String str3) {
            this.mAppId = str;
            this.mPlacementId = str2;
            this.mAdFormat = tapjoyAdFormat;
            this.mBidToken = str3;
        }

        public Bidder build() {
            return new TapjoyBidder(this);
        }

        public TapjoyAdFormat getAdFormat() {
            return this.mAdFormat;
        }

        public String getAppId() {
            return this.mAppId;
        }

        public String getAuctionId() {
            return this.mAuctionId;
        }

        public String getBidToken() {
            return this.mBidToken;
        }

        public boolean getCoppa() {
            return this.mCoppa;
        }

        public String getImpressionId() {
            return IMPRESSION_ID;
        }

        public boolean getLmt() {
            return Utils.getLimitAdTrackingEnabled(BiddingKit.getAppContext());
        }

        public String getPlacementId() {
            return this.mPlacementId;
        }

        public boolean getTestMode() {
            return this.mTestMode;
        }

        public int getTimeoutMS() {
            return 1000;
        }

        public Builder setAuctionId(String str) {
            this.mAuctionId = str;
            return this;
        }

        public Builder setCoppa(boolean z) {
            this.mCoppa = z;
            return this;
        }

        public Builder setTestMode(boolean z) {
            this.mTestMode = z;
            return this;
        }
    }

    @Override
    public String getBidderName() {
        return NAME;
    }

    @Override
    public JSONObject getPayload(String str) {
        this.mBidderData.setAuctionId(str);
        return TapjoyBidderPayloadBuilder.getPayload(this.mBidderData);
    }

    @Override
    public void notifyBidderWinner(String str, @Nullable Waterfall waterfall, String str2) {
    }

    @Override
    public void notifyDisplayWinner(String str, @Nullable WaterfallEntry waterfallEntry, String str2) {
        if (waterfallEntry == null) {
            BkLog.e(TAG, "Received null winner entry to notify in display winner");
            return;
        }
        TapjoyNotifier tapjoyNotifier = this.mNotifiers.get(str2);
        if (tapjoyNotifier != null) {
            tapjoyNotifier.notifyDisplayWinner(str, waterfallEntry);
        } else {
            BkLog.e(TAG, "Tapjoy Bidder did not get to initialize notifier", new Throwable());
        }
    }

    @Override
    public Bid requestBid(String str) {
        this.mNotifiers.put(str, new TapjoyNotifier(str));
        TapjoyBid tapjoyBid = TapjoyBidBuilder.get(RequestSender.post(this.mConfiguration.getBidUrl(), this.mBidderData.getTimeoutMS(), getPayload(str).toString()), System.currentTimeMillis(), this.mBidderData.mPlacementId);
        if (this.mNotifiers.containsKey(str)) {
            this.mNotifiers.get(str).setBid(tapjoyBid);
        } else {
            BkLog.d(TAG, "Failed to find bidder in notifiers list");
        }
        return tapjoyBid;
    }

    private TapjoyBidder(Builder builder) {
        this.mBidderData = builder;
        this.mNotifiers = Collections.synchronizedMap(new HashMap());
        this.mConfiguration = new TapjoyConfig(BiddingKit.getConfiguration());
    }
}
