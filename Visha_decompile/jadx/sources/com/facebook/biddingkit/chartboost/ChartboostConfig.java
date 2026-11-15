package com.facebook.biddingkit.chartboost;

import android.text.TextUtils;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONException;
import org.json.JSONObject;

class ChartboostConfig {
    private static final String BID_URL = "bid_url";
    static final String DEFAULT_BID_URL = "https://da.chartboost.com/auction/facebookbiddingkit";
    private static final String ROOT = "chartboost";
    private static final String TAG = "ChartboostConfig";
    private String mBidUrl;

    public ChartboostConfig(String str) {
        this.mBidUrl = DEFAULT_BID_URL;
        if (TextUtils.isEmpty(str)) {
            BkLog.d(TAG, "Empty configuration");
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(ROOT);
            if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.has(BID_URL)) {
                return;
            }
            this.mBidUrl = jSONObjectOptJSONObject.getString(BID_URL);
        } catch (JSONException e) {
            BkLog.e(TAG, "Failed to parse configuration.", e);
        }
    }

    public String getBidUrl() {
        return this.mBidUrl;
    }
}
