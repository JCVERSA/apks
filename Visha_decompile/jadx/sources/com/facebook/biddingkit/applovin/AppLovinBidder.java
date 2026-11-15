package com.facebook.biddingkit.applovin;

import androidx.annotation.Nullable;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.bidders.InternalAuctionBidderWithNotifier;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.AppLovinAdFormat;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.gen.FBAdBidAuctionType;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.utils.Utils;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class AppLovinBidder implements InternalAuctionBidderWithNotifier {
    public static String NAME = "APPLOVIN_BIDDER";
    private static final String TAG = "AppLovinBidder";
    protected final Builder mBidderData;
    private final ApplovinConfig mConfiguration;
    private Map<String, ApplovinNotifier> mNotifiers;

    public static class Builder {
        protected static final String IMPRESSION_ID = "AppLovin Ad Impression";
        private AppLovinAdFormat mAdFormat;
        private String mAppId;
        private String mAuctionId;
        private final FBAdBidAuctionType mAuctionType = FBAdBidAuctionType.FIRST_PRICE;
        private String mBidToken;
        private boolean mCoppa;
        private String mPlatformId;

        public Builder(String str, String str2, AppLovinAdFormat appLovinAdFormat, String str3) {
            this.mAppId = str;
            this.mPlatformId = str2;
            this.mAdFormat = appLovinAdFormat;
            this.mBidToken = str3;
        }

        public Bidder build() {
            return new AppLovinBidder(this);
        }

        public AppLovinAdFormat getAdFormat() {
            return this.mAdFormat;
        }

        public String getAppId() {
            return this.mAppId;
        }

        public String getAuctionId() {
            return this.mAuctionId;
        }

        public FBAdBidAuctionType getAuctionType() {
            return this.mAuctionType;
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

        public String getPlatformId() {
            return this.mPlatformId;
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
    }

    @Override
    public String getBidderName() {
        return NAME;
    }

    @Override
    public JSONObject getPayload(String str) {
        this.mBidderData.setAuctionId(str);
        return ApplovinBidderPayloadBuilder.getPayload(this.mBidderData);
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
        ApplovinNotifier applovinNotifier = this.mNotifiers.get(str2);
        if (applovinNotifier != null) {
            applovinNotifier.notifyDisplayWinner(str, waterfallEntry);
        } else {
            BkLog.e(TAG, "Applovin Bidder did not get to initialize notifier", new Throwable());
        }
    }

    @Override
    public Bid requestBid(String str) {
        this.mNotifiers.put(str, new ApplovinNotifier());
        ApplovinBid applovinBid = ApplovinBidBuilder.get(RequestSender.post(this.mConfiguration.getBidUrl(), this.mBidderData.getTimeoutMS(), getPayload(str).toString()), System.currentTimeMillis());
        if (this.mNotifiers.containsKey(str)) {
            this.mNotifiers.get(str).setBid(applovinBid);
        } else {
            BkLog.d(TAG, "Failed to find bidder in notifiers list");
        }
        return applovinBid;
    }

    private AppLovinBidder(Builder builder) {
        this.mBidderData = builder;
        this.mNotifiers = Collections.synchronizedMap(new HashMap());
        this.mConfiguration = new ApplovinConfig(BiddingKit.getConfiguration());
    }
}
