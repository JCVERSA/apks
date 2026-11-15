package com.facebook.biddingkit.remote;

import android.annotation.SuppressLint;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.gen.biddingConstants;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONObject;

public class RemoteBid implements Bid {
    private static final String TAG = "RemoteBid";
    private String mBidderName;
    private String mCurrency;
    private String mPayload;
    private String mPlacementId;
    private double mPriceCents;

    @SuppressLint({"CatchGeneralException", "BadCatchBlock"})
    public RemoteBid(JSONObject jSONObject) {
        this.mPriceCents = 0.0d;
        this.mPayload = "";
        this.mPlacementId = "";
        this.mBidderName = "";
        this.mCurrency = "";
        try {
            String string = jSONObject.getString("name");
            String strBidderNameFromRemoteName = biddingConstants.bidderNameFromRemoteName(string);
            if (strBidderNameFromRemoteName != null) {
                this.mBidderName = strBidderNameFromRemoteName;
                this.mPriceCents = jSONObject.optDouble("price", 0.0d) * 100.0d;
                this.mPayload = jSONObject.getJSONObject("sdk_rendering_data").getString("bid_payload");
                this.mCurrency = jSONObject.optString("cur");
                this.mPlacementId = jSONObject.optString("adunit_id");
            } else {
                this.mBidderName = string;
            }
        } catch (Exception e) {
            BkLog.e(TAG, "Failed to parse bid response body", e);
        }
    }

    @Override
    public String getBidderName() {
        return this.mBidderName;
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
        return this.mPriceCents;
    }
}
