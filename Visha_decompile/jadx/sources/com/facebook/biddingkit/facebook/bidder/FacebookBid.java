package com.facebook.biddingkit.facebook.bidder;

import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.gen.BidWithNotification;
import com.facebook.biddingkit.gen.biddingConstants;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONObject;

class FacebookBid implements Bid, BidWithNotification {
    private static final String TAG = "FacebookBid";
    private String mCurrency;
    private String mLurl;
    private FacebookNotifier mNotifier;
    private String mPayload;
    private String mPlacementId;
    private double mPriceCpmCents;
    private HttpStatusCode mStatusCode;

    public FacebookBid(HttpResponse httpResponse) {
        this.mPayload = "";
        this.mPlacementId = "";
        this.mCurrency = "";
        this.mLurl = "";
        this.mStatusCode = HttpStatusCode.UNKNOWN;
        try {
            this.mStatusCode = HttpStatusCode.getValue(httpResponse.getStatus());
            JSONObject jSONObject = new JSONObject(httpResponse.getBodyAsString());
            JSONObject jSONObject2 = jSONObject.getJSONArray("seatbid").getJSONObject(0).getJSONArray("bid").getJSONObject(0);
            this.mLurl = jSONObject2.getString("lurl");
            this.mPayload = jSONObject2.getString("adm");
            this.mPriceCpmCents = jSONObject2.getDouble("price") * 100.0d;
            this.mPlacementId = new JSONObject(this.mPayload).getString("resolved_placement_id");
            this.mCurrency = jSONObject.getString("cur");
        } catch (Exception e) {
            BkLog.e(TAG, "Failed to parse response body", e);
        }
    }

    @Override
    public String getBidderName() {
        return biddingConstants.FACEBOOK_BIDDER;
    }

    @Override
    public String getCurrency() {
        return this.mCurrency;
    }

    public String getLurl() {
        return this.mLurl;
    }

    @Override
    public String getPayload() {
        return this.mPayload;
    }

    @Override
    public String getPlacementId() {
        return this.mPlacementId;
    }

    @Override
    public double getPrice() {
        return this.mPriceCpmCents;
    }

    public HttpStatusCode getStatusCode() {
        return this.mStatusCode;
    }

    @Override
    public void notifyLoss() {
        FacebookNotifier facebookNotifier = this.mNotifier;
        if (facebookNotifier != null) {
            facebookNotifier.notifyWinner("", "OTHER", Double.valueOf(0.0d), true);
        }
    }

    @Override
    public void notifyWin() {
        FacebookNotifier facebookNotifier = this.mNotifier;
        if (facebookNotifier != null) {
            facebookNotifier.notifyWinner("", getBidderName(), Double.valueOf(getPrice()), true);
        }
    }

    public void setNotifier(FacebookNotifier facebookNotifier) {
        this.mNotifier = facebookNotifier;
    }
}
