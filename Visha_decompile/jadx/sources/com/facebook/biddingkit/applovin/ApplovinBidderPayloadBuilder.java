package com.facebook.biddingkit.applovin;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.AppLovinAdFormat;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.utils.Utils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ApplovinBidderPayloadBuilder {
    private static final String TAG = "ApplovinBidderPayloadBuilder";

    private static JSONObject getFormatField(AppLovinAdFormat appLovinAdFormat, String str) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put(CmcdData.STREAMING_FORMAT_HLS, appLovinAdFormat.getHeight(Utils.isLandscape(BiddingKit.getAppContext()))).put("w", appLovinAdFormat.getWidth(Utils.isLandscape(BiddingKit.getAppContext())));
        if (!appLovinAdFormat.getRewarded().isEmpty()) {
            jSONObjectPut.put("ext", new JSONObject().put(str + "type", appLovinAdFormat.getRewarded()));
        }
        return jSONObjectPut;
    }

    private static JSONArray getImpFieldFromFormat(AppLovinBidder.Builder builder) throws JSONException {
        AppLovinAdFormat adFormat = builder.getAdFormat();
        JSONObject jSONObjectPut = new JSONObject().put(TtmlNode.ATTR_ID, builder.getImpressionId()).put("instl", adFormat.getInstl()).put(adFormat.getFormatLabel(), getFormatField(adFormat, adFormat.getFormatLabel()));
        if (!adFormat.getSecondFormatLabelLabel().isEmpty()) {
            jSONObjectPut.put(adFormat.getSecondFormatLabelLabel(), getFormatField(adFormat, adFormat.getSecondFormatLabelLabel()));
        }
        return new JSONArray().put(jSONObjectPut);
    }

    public static JSONObject getPayload(AppLovinBidder.Builder builder) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, builder.getAuctionId());
            jSONObject.put("imp", getImpFieldFromFormat(builder));
            jSONObject.put("app", new JSONObject().put("publisher", new JSONObject().put(TtmlNode.ATTR_ID, builder.getAppId())));
            jSONObject.put("device", new JSONObject().put("lmt", builder.getLmt() ? 1 : 0));
            jSONObject.put("regs", new JSONObject().put("coppa", builder.getCoppa() ? 1 : 0));
            jSONObject.put("at", builder.getAuctionType().getValue());
            jSONObject.put("tmax", builder.getTimeoutMS());
            jSONObject.put("ext", new JSONObject().put("platformid", builder.getPlatformId()));
            jSONObject.put("user", new JSONObject().put("buyeruid", builder.getBidToken()));
        } catch (JSONException e) {
            BkLog.e(TAG, "Creating Applovin Bidder Payload failed", e);
        }
        BkLog.d(TAG, "Bid request for Applovin: " + jSONObject.toString());
        return jSONObject;
    }
}
