package com.facebook.biddingkit.remote;

import androidx.annotation.VisibleForTesting;
import com.facebook.biddingkit.bidders.Notifier;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import org.json.JSONException;
import org.json.JSONObject;

class RemoteNotifier implements Notifier {
    private static final int DEFAULT_CONNECTION_TIMEOUT_MS = 2000;
    private static final String ENDPOINT = "/bks/notifyDisplay";
    private static final String TAG = "RemoteNotifier";
    private final String mAuctionId;
    private final String mNotificationData;
    private final String mRemoteAuctionUrl;

    public RemoteNotifier(String str, String str2, String str3) {
        this.mAuctionId = str2;
        this.mRemoteAuctionUrl = str;
        this.mNotificationData = str3 == null ? "" : str3;
    }

    @VisibleForTesting
    public JSONObject buildPayload(WaterfallEntry waterfallEntry) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auction_id", this.mAuctionId);
            jSONObject.put("notification_data", this.mNotificationData);
            jSONObject.put("clearing_price_cents", waterfallEntry.getCPMCents());
            jSONObject.put("name", waterfallEntry.getEntryName());
        } catch (JSONException e) {
            BkLog.e(TAG, "Unable to build notification payload", e);
        }
        BkLog.d(TAG, "Notifying payload: " + jSONObject.toString());
        return jSONObject;
    }

    @Override
    public void notifyBidderWinner(String str, Waterfall waterfall) {
    }

    @Override
    public void notifyDisplayWinner(String str, WaterfallEntry waterfallEntry) {
        RequestSender.post(this.mRemoteAuctionUrl + ENDPOINT, 2000, buildPayload(waterfallEntry).toString());
    }
}
