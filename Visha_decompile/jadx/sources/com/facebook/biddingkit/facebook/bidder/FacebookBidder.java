package com.facebook.biddingkit.facebook.bidder;

import androidx.annotation.Nullable;
import com.facebook.biddingkit.bidders.BidResponseCallback;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.bidders.BidderWithNotifier;
import com.facebook.biddingkit.bidders.InternalAuctionBidderWithNotifier;
import com.facebook.biddingkit.bidders.Notifier;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.gen.FBAdBidAuctionType;
import com.facebook.biddingkit.gen.FacebookAdBidFormat;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.utils.MultiAsyncTaskExecutor;
import com.facebook.biddingkit.utils.RandomString;
import com.facebook.biddingkit.utils.Utils;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class FacebookBidder implements InternalAuctionBidderWithNotifier, BidderWithNotifier {
    public static String NAME = "FACEBOOK_BIDDER";
    private static final String TAG = "FacebookBidder";
    protected final Builder mBidderData;
    protected final FacebookConfig mConfiguration;
    private Map<String, FacebookNotifier> mFacebookNotifiers;

    public static class Builder {
        protected static final String IMPRESSION_ID = "FB Ad Impression";

        @Nullable
        private FacebookAdBidFormat mAdFormat;
        private String mAppId;
        private String mAuctionId;
        private FBAdBidAuctionType mAuctionType = FBAdBidAuctionType.FIRST_PRICE;
        private String mBidToken;

        @Nullable
        private String mBidUrlOverride;
        private boolean mCoppa;
        private boolean mIsStandalone;
        private boolean mLimitedDataUse;
        private String mPlacementId;
        private String mPlatformId;
        private boolean mTestMode;

        public Builder(String str, String str2, @Nullable FacebookAdBidFormat facebookAdBidFormat, String str3) {
            this.mAppId = str;
            this.mPlacementId = str2;
            this.mAdFormat = facebookAdBidFormat;
            this.mBidToken = str3;
            this.mPlatformId = str;
        }

        public Bidder build() {
            this.mIsStandalone = false;
            return new FacebookBidder(this);
        }

        public BidderWithNotifier buildWithNotifier() {
            this.mIsStandalone = true;
            return new FacebookBidder(this);
        }

        @Nullable
        public FacebookAdBidFormat getAdFormat() {
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

        public String getBiddingKitSource() {
            return this.mIsStandalone ? "standalone" : "auction";
        }

        public boolean getCoppa() {
            return this.mCoppa;
        }

        public String getImpressionId() {
            return IMPRESSION_ID;
        }

        public boolean getLimitedDataUse() {
            return this.mLimitedDataUse;
        }

        public boolean getLmt() {
            return Utils.getLimitAdTrackingEnabled(BiddingKit.getAppContext());
        }

        public String getPlacementId() {
            return this.mPlacementId;
        }

        public String getPlatformId() {
            String str = this.mPlatformId;
            return str != null ? str : this.mAppId;
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

        public Builder setAuctionType(FBAdBidAuctionType fBAdBidAuctionType) {
            this.mAuctionType = fBAdBidAuctionType;
            return this;
        }

        public Builder setBidUrlOverride(@Nullable String str) {
            this.mBidUrlOverride = str;
            return this;
        }

        public Builder setCoppa(boolean z) {
            this.mCoppa = z;
            return this;
        }

        public Builder setLimitedDataUse(boolean z) {
            this.mLimitedDataUse = z;
            return this;
        }

        public Builder setPlatformId(String str) {
            this.mPlatformId = str;
            return this;
        }

        public Builder setTestMode(boolean z) {
            this.mTestMode = z;
            return this;
        }
    }

    public static Notifier getDefaultInternalNotifier(String str) {
        return new FacebookNotifier(str, new FacebookConfig(BiddingKit.getConfiguration()));
    }

    public FacebookBid getFacebookBid() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return FacebookBidBuilder.get(RequestSender.post(this.mBidderData.mBidUrlOverride != null ? this.mBidderData.mBidUrlOverride : this.mConfiguration.getBidUrl(), this.mBidderData.getTimeoutMS(), getPayload(jCurrentTimeMillis).toString()), jCurrentTimeMillis);
    }

    public static void handleBidCallback(BidResponseCallback bidResponseCallback, FacebookBid facebookBid) {
        if (facebookBid == null) {
            bidResponseCallback.handleBidResponseFailure("Failed to get a bid");
            return;
        }
        if (facebookBid.getStatusCode() == HttpStatusCode.SUCCESS) {
            bidResponseCallback.handleBidResponse(facebookBid);
            return;
        }
        bidResponseCallback.handleBidResponseFailure("Failed to get a bid with " + facebookBid.getStatusCode() + " http status code");
    }

    @Override
    public String getBidderName() {
        return NAME;
    }

    @Override
    public JSONObject getPayload(String str) {
        this.mBidderData.setAuctionId(str);
        return getPayload(System.currentTimeMillis());
    }

    @Override
    public void notifyBidderWinner(String str, @Nullable Waterfall waterfall, String str2) {
        if (waterfall == null) {
            BkLog.e(TAG, "Received null waterfall to notify in bidder winner");
            return;
        }
        FacebookNotifier facebookNotifier = this.mFacebookNotifiers.get(str2);
        if (facebookNotifier != null) {
            facebookNotifier.notifyBidderWinner(str, waterfall);
        } else {
            BkLog.e(TAG, "Facebook Bidder did not get to initialize notifier", new Throwable());
        }
    }

    @Override
    public void notifyDisplayWinner(String str, @Nullable WaterfallEntry waterfallEntry, String str2) {
        if (waterfallEntry == null) {
            BkLog.e(TAG, "Received null winner entry to notify in display winner");
            return;
        }
        FacebookNotifier facebookNotifier = this.mFacebookNotifiers.get(str2);
        if (facebookNotifier != null) {
            facebookNotifier.notifyDisplayWinner(str, waterfallEntry);
        } else {
            BkLog.e(TAG, "Facebook Bidder did not get to initialize notifier", new Throwable());
        }
    }

    @Override
    public Bid requestBid(String str) {
        this.mBidderData.setAuctionId(str);
        this.mFacebookNotifiers.put(str, new FacebookNotifier(this.mBidderData, this.mConfiguration));
        FacebookBid facebookBid = getFacebookBid();
        if (this.mFacebookNotifiers.containsKey(str)) {
            this.mFacebookNotifiers.get(str).setFacebookBid(facebookBid);
        } else {
            BkLog.d(TAG, "Failed to find bidder in notifiers list");
        }
        return facebookBid;
    }

    @Override
    public void retrieveBidWithNotificationCompleted(final BidResponseCallback bidResponseCallback) {
        MultiAsyncTaskExecutor.GENERAL_EXECUTOR.execute(new Runnable() {
            @Override
            public void run() {
                FacebookBidder.this.mBidderData.setAuctionId(RandomString.get());
                FacebookBid facebookBid = FacebookBidder.this.getFacebookBid();
                if (facebookBid != null) {
                    FacebookBidder facebookBidder = FacebookBidder.this;
                    FacebookNotifier facebookNotifier = new FacebookNotifier(facebookBidder.mBidderData, facebookBidder.mConfiguration);
                    facebookNotifier.setFacebookBid(facebookBid);
                    facebookBid.setNotifier(facebookNotifier);
                }
                FacebookBidder.handleBidCallback(bidResponseCallback, facebookBid);
            }
        });
    }

    private FacebookBidder(Builder builder) {
        this.mBidderData = builder;
        this.mFacebookNotifiers = Collections.synchronizedMap(new HashMap());
        this.mConfiguration = new FacebookConfig(BiddingKit.getConfiguration());
    }

    private JSONObject getPayload(long j) {
        return FacebookBidderPayloadBuilder.getPayload(this.mBidderData, j);
    }
}
