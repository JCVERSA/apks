package com.facebook.biddingkit.remote;

import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import com.facebook.biddingkit.logging.BkLog;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RemoteBidsBuilder {
    private static final String TAG = "RemoteBidsBuilder";

    public static RemoteAuctionResult get(HttpResponse httpResponse, long j) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        List linkedList = new LinkedList();
        String notificationDataResponse = "";
        if (httpResponse == null) {
            BkLog.d(TAG, "Got empty http response");
            return new RemoteAuctionResult("", linkedList, jCurrentTimeMillis);
        }
        BkLog.d(TAG, getBidderLogMessage(httpResponse.getStatus(), jCurrentTimeMillis));
        String bodyAsString = httpResponse.getBodyAsString();
        if (bodyAsString == null || bodyAsString.isEmpty()) {
            BkLog.e(TAG, getBidderErrorMessage(httpResponse.getStatus()));
        } else {
            BkLog.d(TAG, "Bid response from Server: " + bodyAsString);
            try {
                JSONObject jSONObject = new JSONObject(bodyAsString);
                linkedList = parseBidResponse(jSONObject);
                notificationDataResponse = parseNotificationDataResponse(jSONObject);
            } catch (JSONException e) {
                BkLog.e(TAG, "Failed to parse response json.", e);
            }
        }
        return new RemoteAuctionResult(notificationDataResponse, linkedList, jCurrentTimeMillis);
    }

    private static String getBidderErrorMessage(int i) {
        return HttpStatusCode.getValue(i).getErrorMessage();
    }

    private static String getBidderLogMessage(int i, long j) {
        return "Bid request for remote finished. HTTP status: " + i + ". Time taken: " + j + "ms";
    }

    public static List<RemoteBid> parseBidResponse(JSONObject jSONObject) {
        LinkedList linkedList = new LinkedList();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("bids");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2.optBoolean("is_bidder")) {
                    linkedList.add(new RemoteBid(jSONObject2));
                }
            }
        } catch (JSONException e) {
            BkLog.e(TAG, "Failed to parse remote bid response", e);
        }
        return linkedList;
    }

    public static String parseNotificationDataResponse(JSONObject jSONObject) {
        return jSONObject.optString("notification_data");
    }
}
