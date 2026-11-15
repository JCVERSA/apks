package com.facebook.biddingkit.facebook.bidder;

import android.util.Base64;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.biddingkit.bridge.BiddingKitSdkVersion;
import com.facebook.biddingkit.gen.FacebookAdBidFormat;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class FacebookBidderPayloadBuilder {
    private static final String TAG = "FacebookBidderPayloadBuilder";
    private static boolean isTestMode = false;

    public static void enableTestMode() {
        isTestMode = true;
    }

    private static String getExtId(String str, long j) {
        if (isTestMode) {
            return null;
        }
        return new StringBuilder(Base64.encodeToString(("V1_" + str + "_" + j).getBytes(), 3)).reverse().toString();
    }

    private static JSONObject getFormatField(FacebookAdBidFormat facebookAdBidFormat) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put(CmcdData.STREAMING_FORMAT_HLS, facebookAdBidFormat.getHeight()).put("w", facebookAdBidFormat.getWidth()).put("linearity", facebookAdBidFormat.getLinearity());
        if (!facebookAdBidFormat.getVideoType().isEmpty()) {
            jSONObjectPut.put("ext", new JSONObject().put("videotype", facebookAdBidFormat.getVideoType()));
        }
        return jSONObjectPut;
    }

    private static JSONArray getImpFieldFromFormat(FacebookBidder.Builder builder) throws JSONException {
        FacebookAdBidFormat adFormat = builder.getAdFormat();
        return new JSONArray().put(new JSONObject().put(TtmlNode.ATTR_ID, builder.getImpressionId()).put("tagid", builder.getPlacementId()).put("instl", adFormat.getInstl()).put(adFormat.getFormatLabel(), getFormatField(adFormat)));
    }

    public static JSONObject getPayload(FacebookBidder.Builder builder, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, builder.getAuctionId());
            jSONObject.put("imp", getImpFieldFromFormat(builder));
            jSONObject.put("app", new JSONObject().put("publisher", new JSONObject().put(TtmlNode.ATTR_ID, builder.getAppId())));
            jSONObject.put("device", new JSONObject().put("lmt", builder.getLmt() ? 1 : 0));
            jSONObject.put("regs", new JSONObject().put("coppa", builder.getCoppa() ? 1 : 0));
            jSONObject.put("at", builder.getAuctionType().getValue());
            jSONObject.put("tmax", builder.getTimeoutMS());
            jSONObject.put("test", builder.getTestMode() ? 1 : 0);
            jSONObject.put("ext", new JSONObject().put("platformid", builder.getPlatformId()).put("bidding_kit_version", getSdkVersion()).put("bidding_kit_source", builder.getBiddingKitSource()).put("limited_data_use", builder.getLimitedDataUse() ? 1 : 0).putOpt(TtmlNode.ATTR_ID, getExtId(builder.getAppId(), j)).putOpt("timestamp", isTestMode ? null : Long.valueOf(j)));
            jSONObject.put("user", new JSONObject().put("buyeruid", builder.getBidToken()));
        } catch (JSONException e) {
            BkLog.e(TAG, "Creating Facebook Bidder Payload failed", e);
        }
        BkLog.d(TAG, "Bid request for Facebook: " + jSONObject.toString());
        return jSONObject;
    }

    private static String getSdkVersion() {
        return isTestMode ? "" : BiddingKitSdkVersion.BUILD;
    }
}
