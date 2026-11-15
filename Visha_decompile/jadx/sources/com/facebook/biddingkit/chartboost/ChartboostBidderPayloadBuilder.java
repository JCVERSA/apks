package com.facebook.biddingkit.chartboost;

import android.os.Build;
import android.util.DisplayMetrics;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.facebook.biddingkit.gen.ChartboostAdFormat;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.utils.Utils;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ChartboostBidderPayloadBuilder {
    private static final String TAG = "ChartboostBidderPayloadBuilder";

    private static JSONObject getAppField(ChartboostBidder.Builder builder) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (String str : builder.getCategories()) {
            jSONArray.put(str);
        }
        return new JSONObject().put(TtmlNode.ATTR_ID, builder.getAppId()).put("name", Utils.getApplicationName(BiddingKit.getAppContext())).put("bundle", Utils.getBundle(BiddingKit.getAppContext())).put("storeurl", builder.getStoreUrl()).put("cat", jSONArray).put("publisher", new JSONObject().put(TtmlNode.ATTR_ID, builder.getPublisherId()).put("name", builder.getPublisherName()));
    }

    private static JSONObject getBannerField(ChartboostBidder.Builder builder) throws JSONException {
        ChartboostAdFormat adFormat = builder.getAdFormat();
        return new JSONObject().put("w", adFormat.getWidth()).put(CmcdData.STREAMING_FORMAT_HLS, adFormat.getHeight()).put("pos", adFormat.getPos()).put("topframe", 1).put("api", new JSONArray().put(3)).put("ext", new JSONObject().put("placementtype", adFormat.getPlacementType()));
    }

    private static JSONObject getDeviceField() throws JSONException {
        DisplayMetrics displayMetrics = BiddingKit.getAppContext().getResources().getDisplayMetrics();
        return new JSONObject().put(DownloadFacadeEnum.USER_UA, System.getProperty("http.agent")).put("lmt", Utils.getLimitAdTrackingEnabled(BiddingKit.getAppContext()) ? 1 : 0).put("devicetype", 1).put("make", Build.MANUFACTURER).put(CommonUrlParts.MODEL, Build.MODEL).put("os", "Android").put("osv", Build.VERSION.RELEASE).put(CmcdData.STREAMING_FORMAT_HLS, displayMetrics.heightPixels).put("w", displayMetrics.widthPixels).put("language", BiddingKit.getAppContext().getResources().getConfiguration().locale).put("carrier", Utils.getCarrier(BiddingKit.getAppContext())).put("connectiontype", Utils.getConnectionType(BiddingKit.getAppContext())).put("ifa", Utils.getIdfa(BiddingKit.getAppContext()));
    }

    private static JSONArray getImpFieldFromFormat(ChartboostBidder.Builder builder) throws JSONException {
        return new JSONArray().put(new JSONObject().put(TtmlNode.ATTR_ID, "Fb Ad Impression").putOpt("banner", getBannerField(builder)).putOpt("video", getVideoField(builder)).put("displaymanager", "Chartboost-Android-SDK").putOpt("displaymanagerver", builder.getDisplayManagerVersion()).put("instl", builder.getAdFormat().getInstl()).put("tagid", builder.getPlacementId()).put("bidfloor", 0.10000000149011612d).put("bidfloorcur", "USD").put("secure", 1));
    }

    public static JSONObject getPayload(ChartboostBidder.Builder builder, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, builder.getAuctionId());
            jSONObject.put("imp", getImpFieldFromFormat(builder));
            jSONObject.put("app", getAppField(builder));
            jSONObject.put("device", getDeviceField());
            jSONObject.put("user", getUserField(builder));
            jSONObject.put("test", builder.getTestMode() ? 1 : 0);
            jSONObject.put("at", 1);
            jSONObject.put("tmax", builder.getTimeoutMS());
            jSONObject.put("regs", getRegsField(builder));
        } catch (JSONException e) {
            BkLog.e(TAG, "Creating Chartboost Bidder Payload failed", e);
        }
        BkLog.d(TAG, "Bid request for Chartboost: " + jSONObject.toString());
        return jSONObject;
    }

    private static JSONObject getRegsField(ChartboostBidder.Builder builder) throws JSONException {
        return new JSONObject().put("coppa", builder.getCoppa() ? 1 : 0).put("ext", new JSONObject().put("gdpr", builder.getGdpr() ? 1 : 0));
    }

    private static JSONObject getUserField(ChartboostBidder.Builder builder) throws JSONException {
        return new JSONObject().put("ext", new JSONObject().put("consent", builder.getConsent() ? 1 : 0));
    }

    private static JSONObject getVideoField(ChartboostBidder.Builder builder) throws JSONException {
        ChartboostAdFormat adFormat = builder.getAdFormat();
        if (adFormat.hasVideo()) {
            return new JSONObject().put("mimes", new JSONArray().put(MimeTypes.VIDEO_MP4)).put("minduration", builder.getMinVideoDuration()).put("maxduration", builder.getMaxVideoDuration()).put("protocols", new JSONArray().put(1).put(2).put(3).put(5).put(6)).put("w", adFormat.getWidth()).put(CmcdData.STREAMING_FORMAT_HLS, adFormat.getHeight()).put("placement", 5).put("linearity", 1).put("skip", builder.getSkippable() ? 1 : 0).put("delivery", new JSONArray().put(1).put(2)).put("pos", 7).put("companiontype", new JSONArray().put(1).put(2)).put("ext", new JSONObject().put("placementtype", adFormat.getPlacementType()));
        }
        return null;
    }
}
