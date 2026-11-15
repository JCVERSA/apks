package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import com.facebook.biddingkit.logging.BkLog;
import java.util.List;
import java.util.Map;

class FacebookBidBuilder {
    private static final String ERROR_HEADER_NAME = "x-fb-an-errors";
    private static final String REQUEST_ID_HEADER_NAME = "x-fb-an-request-id";
    private static final String TAG = "FacebookBidBuilder";

    public static FacebookBid get(HttpResponse httpResponse, long j) {
        if (httpResponse == null) {
            BkLog.d(TAG, "Got empty http response");
            return null;
        }
        BkLog.d(TAG, getBidderLogMessage(httpResponse.getStatus(), httpResponse.getHeaders(), j));
        String bodyAsString = httpResponse.getBodyAsString();
        if (bodyAsString == null || bodyAsString.isEmpty()) {
            BkLog.e(TAG, getBidderErrorMessage(httpResponse.getStatus(), httpResponse.getHeaders()));
            return null;
        }
        BkLog.d(TAG, "Bid response from Facebook: " + bodyAsString);
        return new FacebookBid(httpResponse);
    }

    private static String getBidderErrorMessage(int i, Map<String, List<String>> map) {
        String errorMessage = HttpStatusCode.getValue(i).getErrorMessage();
        if (map == null || !map.containsKey(ERROR_HEADER_NAME)) {
            return errorMessage;
        }
        String string = map.get(ERROR_HEADER_NAME).toString();
        return !TextUtils.isEmpty(string) ? string : errorMessage;
    }

    private static String getBidderLogMessage(int i, Map<String, List<String>> map, long j) {
        StringBuilder sb = new StringBuilder("Bid request for facebook finished. HTTP status: " + i + ". ");
        if (map != null && map.containsKey(REQUEST_ID_HEADER_NAME)) {
            sb.append("Request ID: " + map.get(REQUEST_ID_HEADER_NAME));
        }
        sb.append("Time taken: " + (System.currentTimeMillis() - j) + "ms");
        return sb.toString();
    }
}
