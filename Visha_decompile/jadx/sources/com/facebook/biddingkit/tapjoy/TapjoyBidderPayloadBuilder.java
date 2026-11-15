package com.facebook.biddingkit.tapjoy;

import android.os.Build;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.FBAdBidAuctionType;
import com.facebook.biddingkit.gen.TapjoyAdFormat;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.utils.Utils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class TapjoyBidderPayloadBuilder {
    private static final String TAG = "TapjoyBidderPayloadBuilder";
    private static boolean isTestMode = false;

    public static void enableTestMode() {
        isTestMode = true;
    }

    private static JSONObject getFormatField(TapjoyAdFormat tapjoyAdFormat) throws JSONException {
        return new JSONObject().put("ext", new JSONObject().put("rewarded", tapjoyAdFormat.isRewarded()).put("isSkippable", tapjoyAdFormat.isSkippable()));
    }

    private static String getIdfa() {
        return isTestMode ? "" : Utils.getIdfa(BiddingKit.getAppContext());
    }

    private static JSONArray getImpFieldFromFormat(TapjoyBidder.Builder builder) throws JSONException {
        TapjoyAdFormat adFormat = builder.getAdFormat();
        return new JSONArray().put(new JSONObject().put(TtmlNode.ATTR_ID, builder.getImpressionId()).put("displaymanager", "facebook").put(adFormat.getFormatLabel(), getFormatField(adFormat)));
    }

    private static String getManufacturer() {
        return isTestMode ? "" : Build.MANUFACTURER;
    }

    private static String getModel() {
        return isTestMode ? "" : Build.MODEL;
    }

    private static String getPackageName() {
        return isTestMode ? "" : BiddingKit.getAppContext().getPackageName();
    }

    public static JSONObject getPayload(TapjoyBidder.Builder builder) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, builder.getAuctionId());
            jSONObject.put("imp", getImpFieldFromFormat(builder));
            jSONObject.put("app", new JSONObject().put("bundle", getPackageName()).put("ext", new JSONObject().put("sdk_key", builder.getAppId()).put("placement_name", builder.getPlacementId()).put("token", builder.getBidToken())));
            jSONObject.put("device", new JSONObject().put("ifa", getIdfa()).put("lmt", builder.getLmt() ? 1 : 0).put("make", getManufacturer()).put(CommonUrlParts.MODEL, getModel()).put("os", "Android").put("osv", getRelease()));
            jSONObject.put("regs", new JSONObject().put("coppa", builder.getCoppa() ? 1 : 0));
            jSONObject.put("at", FBAdBidAuctionType.FIRST_PRICE.getValue());
            jSONObject.put("test", builder.getTestMode() ? 1 : 0);
        } catch (JSONException e) {
            BkLog.e(TAG, "Creating Tapjoy Bidder Payload failed", e);
        }
        BkLog.d(TAG, "Bid request for Tapjoy: " + jSONObject.toString());
        return jSONObject;
    }

    private static String getRelease() {
        return isTestMode ? "" : Build.VERSION.RELEASE;
    }
}
