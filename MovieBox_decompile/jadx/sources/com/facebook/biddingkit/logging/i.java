package com.facebook.biddingkit.logging;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import org.json.JSONException;
import org.json.JSONObject;

class i {

    private int f23472a;

    private int f23473b;

    private String f23474c;

    public i(String str) {
        this.f23472a = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.f23473b = 60000;
        this.f23474c = "https://www.facebook.com/audiencenetwork/bidding_kit_logging";
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(RequestParameters.SUBRESOURCE_LOGGING);
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.has("cycle_separation_ms")) {
                    this.f23472a = jSONObjectOptJSONObject.getInt("cycle_separation_ms");
                }
                if (jSONObjectOptJSONObject.has("network_wait_on_failure_ms")) {
                    this.f23473b = jSONObjectOptJSONObject.getInt("network_wait_on_failure_ms");
                }
                if (jSONObjectOptJSONObject.has("dispatcher_url")) {
                    this.f23474c = jSONObjectOptJSONObject.getString("dispatcher_url");
                }
            }
        } catch (JSONException e10) {
            b.d("LoggingConfig", "Failed to parse configuration.", e10);
        }
    }

    public int a() {
        return this.f23472a;
    }

    public String b() {
        return this.f23474c;
    }

    public int c() {
        return this.f23473b;
    }
}
