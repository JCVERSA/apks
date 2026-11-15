package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

class c {

    private String f23446a;

    private String f23447b;

    public c(String str) {
        this.f23446a = "https://an.facebook.com/placementbid.ortb";
        this.f23447b = "https://www.facebook.com/audiencenetwork/nurl/?partner=${PARTNER_FBID}&app=${APP_FBID}&placement=${PLACEMENT_FBID}&auction=${AUCTION_ID}&clearing_price=${AUCTION_PRICE}&ortb_loss_code=${AUCTION_LOSS}&ab_test_segment=${AB_TEST_SEGMENT}&winner_name=${WINNER_NAME}&winner_type=${WINNER_TYPE}&bundle=${BUNDLE}&phase=${PHASE}&idfa=${IDFA}";
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("facebook");
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.has("bid_url")) {
                    this.f23446a = jSONObjectOptJSONObject.getString("bid_url");
                }
                if (jSONObjectOptJSONObject.has("notify_url")) {
                    this.f23447b = jSONObjectOptJSONObject.getString("notify_url");
                }
            }
        } catch (JSONException e10) {
            com.facebook.biddingkit.logging.b.d("FacebookConfig", "Failed to parse configuration.", e10);
        }
    }

    public String a() {
        return this.f23447b;
    }
}
