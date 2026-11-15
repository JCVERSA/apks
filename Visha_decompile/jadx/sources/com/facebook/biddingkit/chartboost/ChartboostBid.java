package com.facebook.biddingkit.chartboost;

import android.annotation.SuppressLint;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONObject;

class ChartboostBid implements Bid {
    private static final String TAG = "ChartboostBid";
    private String mCurrency;
    private String mPayload;
    private String mPlacementId;
    private double mPriceCpmCents;

    @SuppressLint({"CatchGeneralException"})
    public ChartboostBid(HttpResponse httpResponse) {
        this.mPayload = "";
        this.mPlacementId = "";
        this.mCurrency = "";
        try {
            JSONObject jSONObject = new JSONObject(httpResponse.getBodyAsString());
            JSONObject jSONObject2 = jSONObject.getJSONArray("seatbid").getJSONObject(0).getJSONArray("bid").getJSONObject(0);
            this.mPayload = httpResponse.getBodyAsString();
            this.mPriceCpmCents = jSONObject2.getDouble("price") * 100.0d;
            this.mPlacementId = "";
            this.mCurrency = jSONObject.getString("cur");
        } catch (Exception e) {
            BkLog.e(TAG, "Failed to parse response body", e);
        }
    }

    @Override
    public String getBidderName() {
        return ChartboostBidder.NAME;
    }

    @Override
    public String getCurrency() {
        return this.mCurrency;
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
