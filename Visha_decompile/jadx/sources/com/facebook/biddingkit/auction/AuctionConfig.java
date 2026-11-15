package com.facebook.biddingkit.auction;

import android.text.TextUtils;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONException;
import org.json.JSONObject;

class AuctionConfig {
    static final int DEFAULT_TIMEOUT_MS = 10000;
    private static final String ROOT = "auction";
    private static final String TAG = "AuctionConfig";
    private static final String TIMEOUT_TAG = "timeout_ms";
    private int mTimeoutMs;

    public AuctionConfig(String str) {
        this.mTimeoutMs = 10000;
        if (TextUtils.isEmpty(str)) {
            BkLog.d(TAG, "Empty configuration");
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(ROOT);
            if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.has(TIMEOUT_TAG)) {
                return;
            }
            this.mTimeoutMs = jSONObjectOptJSONObject.getInt(TIMEOUT_TAG);
        } catch (JSONException e) {
            BkLog.e(TAG, "Failed to parse configuration.", e);
        }
    }

    public int getTimeoutMs() {
        return this.mTimeoutMs;
    }
}
