package com.facebook.biddingkit.logging;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

class LoggingConfig {
    private static final String CYCLE_SEPARATION_TAG = "cycle_separation_ms";
    static final int DEFAULT_CYCLE_SEPARATION_MS = 15000;
    static final String DEFAULT_DISPATCHER_URL = "https://www.facebook.com/audiencenetwork/bidding_kit_logging";
    static final int DEFAULT_NETWORK_WAIT_ON_FAILURE_MS = 60000;
    private static final String DISPATCHER_URL_TAG = "dispatcher_url";
    private static final String NETWORK_WAIT_ON_FAILURE_TAG = "network_wait_on_failure_ms";
    private static final String ROOT = "logging";
    private static final String TAG = "LoggingConfig";
    private int mCycleSparationMs;
    private String mDispatcherUrl;
    private int mNetworkErrorCycleSparationMs;

    public LoggingConfig(String str) {
        this.mCycleSparationMs = DEFAULT_CYCLE_SEPARATION_MS;
        this.mNetworkErrorCycleSparationMs = 60000;
        this.mDispatcherUrl = DEFAULT_DISPATCHER_URL;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(ROOT);
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.has(CYCLE_SEPARATION_TAG)) {
                    this.mCycleSparationMs = jSONObjectOptJSONObject.getInt(CYCLE_SEPARATION_TAG);
                }
                if (jSONObjectOptJSONObject.has(NETWORK_WAIT_ON_FAILURE_TAG)) {
                    this.mNetworkErrorCycleSparationMs = jSONObjectOptJSONObject.getInt(NETWORK_WAIT_ON_FAILURE_TAG);
                }
                if (jSONObjectOptJSONObject.has(DISPATCHER_URL_TAG)) {
                    this.mDispatcherUrl = jSONObjectOptJSONObject.getString(DISPATCHER_URL_TAG);
                }
            }
        } catch (JSONException e) {
            BkLog.e(TAG, "Failed to parse configuration.", e);
        }
    }

    public int getCycleSeparationMs() {
        return this.mCycleSparationMs;
    }

    public String getDispatcherUrl() {
        return this.mDispatcherUrl;
    }

    public int getNetworkErrorCycleSparationMs() {
        return this.mNetworkErrorCycleSparationMs;
    }
}
