package com.facebook.biddingkit.facebook.bidder;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.biddingkit.bidders.LossCode;
import com.facebook.biddingkit.bidders.Notifier;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.biddingConstants;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.utils.Utils;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import com.transsion.hubsdk.display.BuildConfig;
import java.util.HashMap;
import java.util.Map;

class FacebookNotifier implements Notifier {
    private static final String AB_TEST_SEGMENT = "${AB_TEST_SEGMENT}";
    private static final String APP_FBID = "${APP_FBID}";
    private static final String AUCTION_ID = "${AUCTION_ID}";
    private static final String AUCTION_LOSS_CODE = "${AUCTION_LOSS}";
    private static final String AUCTION_PRICE = "${AUCTION_PRICE}";
    private static final String BUNDLE = "${BUNDLE}";
    private static final String IDFA = "${IDFA}";
    private static final String PARTNER_FBID = "${PARTNER_FBID}";
    private static final String PHASE = "${PHASE}";
    private static final String PLACEMENT_FBID = "${PLACEMENT_FBID}";
    private static final String TAG = "FacebookNotifier";
    private static final String WINNER_NAME = "${WINNER_NAME}";
    private static final String WINNER_TYPE = "${WINNER_TYPE}";
    private final int DEFAULT_TIMEOUT_MS;
    private final FacebookBidder.Builder mBidderData;
    private final FacebookConfig mConfiguration;
    private FacebookBid mFacebookBid;
    private String mIdfa;
    private boolean mIsDefault;
    private String mPackageName;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode;

        static {
            int[] iArr = new int[HttpStatusCode.values().length];
            $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode = iArr;
            try {
                iArr[HttpStatusCode.NO_BID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode[HttpStatusCode.BAD_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode[HttpStatusCode.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public FacebookNotifier(String str, FacebookConfig facebookConfig) {
        this(new FacebookBidder.Builder("", "", null, "").setAuctionId(str), facebookConfig);
        this.mIsDefault = true;
    }

    public static Double getCPMCents(WaterfallEntry waterfallEntry, WaterfallEntry waterfallEntry2) {
        if (waterfallEntry == null) {
            return Double.valueOf(0.0d);
        }
        if (FacebookBidder.NAME.equals(waterfallEntry.getEntryName())) {
            return Double.valueOf(waterfallEntry2 != null ? waterfallEntry2.getCPMCents() : 0.0d);
        }
        return Double.valueOf(waterfallEntry.getCPMCents());
    }

    private String getEndpoint() {
        FacebookBid facebookBid = this.mFacebookBid;
        return (facebookBid == null || TextUtils.isEmpty(facebookBid.getLurl())) ? this.mConfiguration.getNotificationUrl() : this.mFacebookBid.getLurl();
    }

    public static String getEntryName(WaterfallEntry waterfallEntry) {
        if (waterfallEntry == null) {
            return null;
        }
        return waterfallEntry.getEntryName();
    }

    private int getTimeout() {
        return 2000;
    }

    public String getIdfa() {
        return TextUtils.isEmpty(this.mIdfa) ? Utils.getIdfa(BiddingKit.getAppContext()) : this.mIdfa;
    }

    public LossCode getLossCode(String str) {
        if (this.mIsDefault) {
            return LossCode.DID_NOT_PARTICIPATE;
        }
        FacebookBid facebookBid = this.mFacebookBid;
        if (facebookBid != null) {
            int i = AnonymousClass2.$SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode[facebookBid.getStatusCode().ordinal()];
            if (i == 1 || i == 2) {
                return LossCode.NO_BID;
            }
            if (i == 3) {
                return LossCode.TIMEOUT;
            }
        }
        if (FacebookBidder.NAME.equals(str)) {
            return LossCode.WIN;
        }
        return this.mFacebookBid == null ? LossCode.TIMEOUT : LossCode.OUTBID;
    }

    public String getPackageName() {
        return TextUtils.isEmpty(this.mPackageName) ? BiddingKit.getAppContext().getPackageName() : this.mPackageName;
    }

    @Override
    public void notifyBidderWinner(String str, Waterfall waterfall) {
        WaterfallEntry[] firstAndSecondBidderEntries = Utils.getFirstAndSecondBidderEntries(waterfall);
        notifyWinner(str, getEntryName(firstAndSecondBidderEntries[0]), getCPMCents(firstAndSecondBidderEntries[0], firstAndSecondBidderEntries[1]), false);
    }

    @Override
    public void notifyDisplayWinner(String str, WaterfallEntry waterfallEntry) {
        notifyWinner(str, getEntryName(waterfallEntry), Double.valueOf(waterfallEntry == null ? 0.0d : waterfallEntry.getCPMCents()), true);
    }

    public void notifyWinner(String str, @Nullable String str2, Double d, boolean z) {
        HttpResponse httpResponse = RequestSender.get(processUrl(z, str, str2, d), getTimeout());
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("Facebook display winner notified with http status ");
            sb.append(httpResponse != null ? String.valueOf(httpResponse.getStatus()) : "null");
            BkLog.d(TAG, sb.toString());
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Facebook bidder winner notified with http status ");
        sb2.append(httpResponse != null ? String.valueOf(httpResponse.getStatus()) : "null");
        BkLog.d(TAG, sb2.toString());
    }

    @SuppressLint({"CatchGeneralException"})
    public String processUrl(boolean z, String str, @Nullable String str2, Double d) {
        String endpoint = getEndpoint();
        try {
            String[] strArrSplit = this.mBidderData.getPlacementId().split("_", 2);
            for (Map.Entry<String, String> entry : new HashMap<String, String>(strArrSplit.length >= 2 ? strArrSplit[1] : "", str, str2, d, z) {
                final Double val$cpmCents;
                final String val$entryName;
                final boolean val$isDisplay;
                final String val$placementFbid;
                final String val$segment;

                {
                    this.val$placementFbid = str;
                    this.val$segment = str;
                    this.val$entryName = str2;
                    this.val$cpmCents = d;
                    this.val$isDisplay = z;
                    put(FacebookNotifier.PARTNER_FBID, FacebookNotifier.this.mBidderData.getAppId());
                    put(FacebookNotifier.APP_FBID, FacebookNotifier.this.mBidderData.getAppId());
                    put(FacebookNotifier.PLACEMENT_FBID, str);
                    put(FacebookNotifier.BUNDLE, FacebookNotifier.this.getPackageName());
                    put(FacebookNotifier.IDFA, FacebookNotifier.this.getIdfa());
                    put(FacebookNotifier.AUCTION_ID, FacebookNotifier.this.mBidderData.getAuctionId());
                    put(FacebookNotifier.AB_TEST_SEGMENT, str);
                    put(FacebookNotifier.AUCTION_LOSS_CODE, FacebookNotifier.this.getLossCode(str2).getStringValue());
                    put(FacebookNotifier.AUCTION_PRICE, Double.toString(d.doubleValue() / 100.0d));
                    put(FacebookNotifier.WINNER_NAME, str2 == null ? "" : str2);
                    put(FacebookNotifier.WINNER_TYPE, biddingConstants.isBidder(str2) ? "bidding" : "waterfall");
                    put(FacebookNotifier.PHASE, z ? BuildConfig.FLAVOR : "auction");
                }
            }.entrySet()) {
                String value = entry.getValue();
                if (value == null) {
                    value = "";
                }
                endpoint = endpoint.replace(entry.getKey(), value);
            }
        } catch (Throwable th) {
            BkLog.e(TAG, "Failed processing the Url", th);
        }
        return endpoint;
    }

    public void setFacebookBid(FacebookBid facebookBid) {
        this.mFacebookBid = facebookBid;
    }

    public void setIdfa(String str) {
        this.mIdfa = str;
    }

    public void setPackageName(String str) {
        this.mPackageName = str;
    }

    public FacebookNotifier(FacebookBidder.Builder builder, FacebookConfig facebookConfig) {
        this.DEFAULT_TIMEOUT_MS = 2000;
        this.mPackageName = "";
        this.mIdfa = "";
        this.mBidderData = builder;
        this.mConfiguration = facebookConfig;
    }
}
