package com.facebook.biddingkit.chartboost;

import androidx.annotation.Nullable;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.bidders.InternalAuctionBidderWithNotifier;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.gen.ChartboostAdFormat;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.utils.Utils;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import org.json.JSONObject;

public class ChartboostBidder implements InternalAuctionBidderWithNotifier {
    public static String NAME = "CHARTBOOST_BIDDER";
    private static final String TAG = "ChartboostBidder";
    protected final Builder mBidderData;
    private final ChartboostConfig mConfiguration = new ChartboostConfig(BiddingKit.getConfiguration());

    public static class Builder {
        protected static final String IMPRESSION_ID = "FB Ad Impression";
        private ChartboostAdFormat mAdFormat;
        private String mAppId;
        private String mAuctionId;
        private String[] mCategories;
        private boolean mCoppa;
        private final String mDisplayManagerVersion;
        private String mPlacementId;
        private String mPublisherId;
        private String mPublisherName;
        private String mStoreUrl;
        private boolean mTestMode;
        private int mMinVideoDuration = 5;
        private int mMaxVideoDuration = 30;
        private boolean mSkippable = true;
        private boolean mConsent = true;
        private boolean mGdpr = false;

        public Builder(String str, String str2, String str3, String str4, ChartboostAdFormat chartboostAdFormat, String str5, String[] strArr, String str6) {
            this.mAppId = str;
            this.mPlacementId = str2;
            this.mAdFormat = chartboostAdFormat;
            this.mStoreUrl = str5;
            this.mPublisherId = str3;
            this.mCategories = strArr;
            this.mPublisherName = str4;
            this.mDisplayManagerVersion = str6;
        }

        public Bidder build() {
            return new ChartboostBidder(this);
        }

        @Nullable
        public ChartboostAdFormat getAdFormat() {
            return this.mAdFormat;
        }

        public String getAppId() {
            return this.mAppId;
        }

        public String getAuctionId() {
            return this.mAuctionId;
        }

        public String[] getCategories() {
            return this.mCategories;
        }

        public boolean getConsent() {
            return this.mConsent;
        }

        public boolean getCoppa() {
            return this.mCoppa;
        }

        public String getDisplayManagerVersion() {
            return this.mDisplayManagerVersion;
        }

        public boolean getGdpr() {
            return this.mGdpr;
        }

        public String getImpressionId() {
            return IMPRESSION_ID;
        }

        public boolean getLmt() {
            return Utils.getLimitAdTrackingEnabled(BiddingKit.getAppContext());
        }

        public int getMaxVideoDuration() {
            return this.mMaxVideoDuration;
        }

        public int getMinVideoDuration() {
            return this.mMinVideoDuration;
        }

        public String getPlacementId() {
            return this.mPlacementId;
        }

        public String getPublisherId() {
            return this.mPublisherId;
        }

        public String getPublisherName() {
            return this.mPublisherName;
        }

        public boolean getSkippable() {
            return this.mSkippable;
        }

        public String getStoreUrl() {
            return this.mStoreUrl;
        }

        public boolean getTestMode() {
            return this.mTestMode;
        }

        public int getTimeoutMS() {
            return 10000;
        }

        public Builder setAuctionId(String str) {
            this.mAuctionId = str;
            return this;
        }

        public Builder setConsent(boolean z) {
            this.mConsent = z;
            return this;
        }

        public Builder setCoppa(boolean z) {
            this.mCoppa = z;
            return this;
        }

        public Builder setGdpr(boolean z) {
            this.mGdpr = z;
            return this;
        }

        public Builder setMaxVideoDuration(int i) {
            this.mMaxVideoDuration = i;
            return this;
        }

        public Builder setMinVideoDuration(int i) {
            this.mMinVideoDuration = i;
            return this;
        }

        public Builder setSkippable(boolean z) {
            this.mSkippable = z;
            return this;
        }

        public Builder setTestMode(boolean z) {
            this.mTestMode = z;
            return this;
        }
    }

    public ChartboostBidder(Builder builder) {
        this.mBidderData = builder;
    }

    @Override
    public String getBidderName() {
        return NAME;
    }

    @Override
    public JSONObject getPayload(String str) {
        return getPayload(str, System.currentTimeMillis());
    }

    @Override
    public void notifyBidderWinner(String str, @Nullable Waterfall waterfall, String str2) {
    }

    @Override
    public void notifyDisplayWinner(String str, @Nullable WaterfallEntry waterfallEntry, String str2) {
    }

    @Override
    public Bid requestBid(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return ChartboostBidBuilder.get(RequestSender.post(this.mConfiguration.getBidUrl(), this.mBidderData.getTimeoutMS(), getPayload(str, jCurrentTimeMillis).toString()), jCurrentTimeMillis);
    }

    private JSONObject getPayload(String str, long j) {
        this.mBidderData.setAuctionId(str);
        return ChartboostBidderPayloadBuilder.getPayload(this.mBidderData, j);
    }
}
