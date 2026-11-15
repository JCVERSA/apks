package com.facebook.biddingkit.applovin;

import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONObject;

class ApplovinBid implements Bid {
    private static final String TAG = "ApplovinBid";
    private String mCurrency;
    private String mLurl;
    private String mNurl;
    private String mPayload;
    private String mPlacementId;
    private double mPriceCpmCents;

    public ApplovinBid(HttpResponse httpResponse) {
        this.mPayload = "";
        this.mPlacementId = "";
        this.mCurrency = "";
        this.mLurl = "";
        this.mNurl = "";
        try {
            JSONObject jSONObject = new JSONObject(httpResponse.getBodyAsString()).getJSONArray("seatbid").getJSONObject(0).getJSONArray("bid").getJSONObject(0);
            this.mLurl = jSONObject.getString("lurl");
            this.mNurl = jSONObject.getString("nurl");
            this.mPayload = jSONObject.getString("adm");
            this.mPriceCpmCents = jSONObject.getDouble("price") * 100.0d;
            this.mPlacementId = "";
            this.mCurrency = "USD";
        } catch (Exception e) {
            BkLog.e(TAG, "Failed to parse response body", e);
        }
    }

    @Override
    public String getBidderName() {
        return AppLovinBidder.NAME;
    }

    @Override
    public String getCurrency() {
        return this.mCurrency;
    }

    public String getLurl() {
        return this.mLurl;
    }

    public String getNurl() {
        return this.mNurl;
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
}
