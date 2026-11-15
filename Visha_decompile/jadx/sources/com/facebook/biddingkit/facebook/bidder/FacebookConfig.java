package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONException;
import org.json.JSONObject;

class FacebookConfig {
    private static final String BID_URL_TAG = "bid_url";
    static final String DEFAULT_BID_URL = "https://an.facebook.com/placementbid.ortb";
    static final String DEFAULT_NOTIFICATION_URL = "https://www.facebook.com/audiencenetwork/nurl/?partner=${PARTNER_FBID}&app=${APP_FBID}&placement=${PLACEMENT_FBID}&auction=${AUCTION_ID}&clearing_price=${AUCTION_PRICE}&ortb_loss_code=${AUCTION_LOSS}&ab_test_segment=${AB_TEST_SEGMENT}&winner_name=${WINNER_NAME}&winner_type=${WINNER_TYPE}&bundle=${BUNDLE}&phase=${PHASE}&idfa=${IDFA}";
    private static final String NOTIFICATION_URL_TAG = "notify_url";
    private static final String ROOT = "facebook";
    private static final String TAG = "FacebookConfig";
    private String mBidUrl;
    private String mNotificationUrl;

    public FacebookConfig(String str) {
        this.mBidUrl = DEFAULT_BID_URL;
        this.mNotificationUrl = DEFAULT_NOTIFICATION_URL;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(ROOT);
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.has(BID_URL_TAG)) {
                    this.mBidUrl = jSONObjectOptJSONObject.getString(BID_URL_TAG);
                }
                if (jSONObjectOptJSONObject.has(NOTIFICATION_URL_TAG)) {
                    this.mNotificationUrl = jSONObjectOptJSONObject.getString(NOTIFICATION_URL_TAG);
                }
            }
        } catch (JSONException e) {
            BkLog.e(TAG, "Failed to parse configuration.", e);
        }
    }

    public String getBidUrl() {
        return this.mBidUrl;
    }

    public String getNotificationUrl() {
        return this.mNotificationUrl;
    }
}
