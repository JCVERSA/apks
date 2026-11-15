package com.facebook.biddingkit.remote;

import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.bidders.InternalAuctionBidderWithNotifier;
import com.facebook.biddingkit.gen.biddingConstants;
import com.facebook.biddingkit.logging.BkLog;
import org.json.JSONException;
import org.json.JSONObject;

public class RemoteBidderPayloadBuilder {
    private static final String TAG = "RemoteBidderPayloadBuilder";

    public static JSONObject getPayload(RemoteBidder.Builder builder) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (Bidder bidder : builder.getBidders()) {
                if (bidder instanceof InternalAuctionBidderWithNotifier) {
                    InternalAuctionBidderWithNotifier internalAuctionBidderWithNotifier = (InternalAuctionBidderWithNotifier) bidder;
                    String strRemoteNameFromBidderName = biddingConstants.remoteNameFromBidderName(internalAuctionBidderWithNotifier.getBidderName());
                    if (strRemoteNameFromBidderName != null) {
                        jSONObject2.put(strRemoteNameFromBidderName, internalAuctionBidderWithNotifier.getPayload(builder.getAuctionId()));
                    }
                } else {
                    BkLog.e(TAG, "Cannot construct bidder_data for incompatible bidder: " + bidder.getBidderName());
                }
            }
            jSONObject.put("bidder_data", jSONObject2);
        } catch (JSONException e) {
            BkLog.e(TAG, "Creating Remote Payload failed", e);
        }
        BkLog.d(TAG, "Bid request for Remote: " + jSONObject.toString());
        return jSONObject;
    }
}
