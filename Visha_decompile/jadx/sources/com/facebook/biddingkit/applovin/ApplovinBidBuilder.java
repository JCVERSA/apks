package com.facebook.biddingkit.applovin;

import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import com.facebook.biddingkit.logging.BkLog;

class ApplovinBidBuilder {
    private static final String TAG = "ApplovinBidBuilder";

    public static ApplovinBid get(HttpResponse httpResponse, long j) {
        if (httpResponse == null) {
            BkLog.d(TAG, "Got empty http response");
            return null;
        }
        BkLog.d(TAG, getBidderLogMessage(httpResponse.getStatus(), j));
        String bodyAsString = httpResponse.getBodyAsString();
        if (bodyAsString == null || bodyAsString.isEmpty()) {
            BkLog.e(TAG, HttpStatusCode.getValue(httpResponse.getStatus()).getErrorMessage());
            return null;
        }
        BkLog.d(TAG, "Bid response from Applovin: " + bodyAsString);
        return new ApplovinBid(httpResponse);
    }

    private static String getBidderLogMessage(int i, long j) {
        StringBuilder sb = new StringBuilder("Bid request for Applovin finished. HTTP status: " + i + ". ");
        sb.append("Time taken: " + (System.currentTimeMillis() - j) + "ms");
        return sb.toString();
    }
}
