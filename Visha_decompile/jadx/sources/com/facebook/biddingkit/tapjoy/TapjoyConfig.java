package com.facebook.biddingkit.tapjoy;

import android.text.TextUtils;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONException;
import org.json.JSONObject;

class TapjoyConfig {
    private static final String BID_URL = "bid_url";
    static final String DEFAULT_BID_URL = "https://bid.tapjoy.com/facebook/request";
    private static final String ROOT = "tapjoy";
    private static final String TAG = "TapjoyConfig";
    private String mBidUrl;

    public TapjoyConfig(String str) {
        this.mBidUrl = DEFAULT_BID_URL;
        if (TextUtils.isEmpty(str)) {
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
