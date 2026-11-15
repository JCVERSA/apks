package com.facebook.biddingkit.tapjoy;

import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.gen.biddingConstants;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONObject;

class TapjoyBid implements Bid {
    private static final String TAG = "TapjoyBid";
    private String mCurrency;
    private String mLurl;
    private String mNurl;
    private String mPayload;
    private String mPlacementId;
    private double mPriceCpmCents;

    public TapjoyBid(HttpResponse httpResponse, String str) {
        this.mPayload = "";
        this.mPlacementId = "";
        this.mCurrency = "";
        this.mLurl = "";
        this.mNurl = "";
        try {
            JSONObject jSONObject = new JSONObject(httpResponse.getBodyAsString());
            JSONObject jSONObject2 = jSONObject.getJSONArray("seatbid").getJSONObject(0).getJSONArray("bid").getJSONObject(0);
            this.mPayload = jSONObject2.getJSONObject("ext").getString("tj_data");
            this.mPriceCpmCents = jSONObject2.getDouble("price") * 100.0d;
            this.mCurrency = jSONObject.getString("cur");
            this.mPlacementId = str;
            this.mLurl = jSONObject2.optString("lurl");
            this.mNurl = jSONObject2.optString("nurl");
        } catch (Exception e) {
            BkLog.e(TAG, "Failed to parse response body", e);
        }
    }

    @Override
    public String getBidderName() {
        return biddingConstants.TAPJOY_BIDDER;
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
