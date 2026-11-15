package com.facebook.biddingkit.tapjoy;

import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import com.facebook.biddingkit.logging.BkLog;

class TapjoyBidBuilder {
    private static final String TAG = "TapjoyBidBuilder";

    public static TapjoyBid get(HttpResponse httpResponse, long j, String str) {
        if (httpResponse == null) {
            BkLog.d(TAG, "Got empty bid response");
            return null;
        }
        BkLog.d(TAG, getBidderLogMessage(httpResponse.getStatus(), j));
        String bodyAsString = httpResponse.getBodyAsString();
        if (bodyAsString == null || bodyAsString.isEmpty()) {
            BkLog.e(TAG, HttpStatusCode.getValue(httpResponse.getStatus()).getErrorMessage());
            return null;
        }
        BkLog.d(TAG, "Bid response from Tapjoy: " + bodyAsString);
        return new TapjoyBid(httpResponse, str);
    }

    private static String getBidderLogMessage(int i, long j) {
        StringBuilder sb = new StringBuilder();
        sb.append("Bid request for Tapjoy finished. HTTP status: " + i + ". ");
        sb.append("Time taken: " + (System.currentTimeMillis() - j) + "ms");
        return sb.toString();
    }
}
