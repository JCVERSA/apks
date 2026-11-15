package com.facebook.biddingkit.logging;

import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class EventLog {
    static final String AUCTION_ID = "auction_id";
    static final String BIDDER_DATA = "bidder_data";
    static final String CPM_CENTS = "cpm_cents";
    static final String ERROR = "error";
    static final String EXCEPTION = "exception";
    static final String ID = "ID";
    static final String LATENCY_MS = "latency_ms";
    static final String RESULT = "result";
    private static final String TAG = "EventLog";
    private String mAuctionId;
    private final Map<String, Map<String, String>> mBidderData = new HashMap();
    private String mException;
    private String mId;

    public void addAuctionId(String str) {
        this.mAuctionId = str;
    }

    public void addCpmCentsData(String str, double d) {
        addCpmCentsData(str, Double.toString(d));
    }

    public void addDatabaseId(String str) {
        this.mId = str;
    }

    public void addError(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, String> map = this.mBidderData.get(str);
        if (map == null) {
            map = new HashMap<>();
            this.mBidderData.put(str, map);
        }
        map.put("error", str2);
    }

    public void addException(String str) {
        this.mException = str;
    }

    public void addLatencyMs(String str, long j) {
        addLatencyMs(str, Long.toString(j));
    }

    public void addResultData(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, String> map = this.mBidderData.get(str);
        if (map == null) {
            map = new HashMap<>();
            this.mBidderData.put(str, map);
        }
        map.put(RESULT, str2);
    }

    public JSONObject getAllBidderJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Iterator<Map.Entry<String, Map<String, String>>> it = this.mBidderData.entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            jSONObject.put(key, getBidderJsonData(key));
        }
        return jSONObject;
    }

    public String getAuctionId() {
        return TextUtils.isEmpty(this.mAuctionId) ? "" : this.mAuctionId;
    }

    public JSONObject getBidderJsonData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!this.mBidderData.containsKey(str)) {
            return jSONObject;
        }
        for (Map.Entry<String, String> entry : this.mBidderData.get(str).entrySet()) {
            if (CPM_CENTS.equals(entry.getKey())) {
                jSONObject.put(entry.getKey(), Double.parseDouble(entry.getValue()));
            } else if (LATENCY_MS.equals(entry.getKey())) {
                jSONObject.put(entry.getKey(), Long.parseLong(entry.getValue()));
            } else {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        }
        return jSONObject;
    }

    public double getCpmCents(String str) {
        return Double.parseDouble(this.mBidderData.get(str).get(CPM_CENTS));
    }

    public String getDatabaseId() {
        return this.mId;
    }

    public String getError(String str) {
        return this.mBidderData.get(str).get("error");
    }

    public String getException() {
        return TextUtils.isEmpty(this.mException) ? "" : this.mException;
    }

    public JSONObject getJsonData() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.mAuctionId)) {
                jSONObject.put(AUCTION_ID, this.mAuctionId);
            }
            if (!TextUtils.isEmpty(this.mException)) {
                jSONObject.put(EXCEPTION, this.mException);
            }
            Iterator<Map.Entry<String, Map<String, String>>> it = this.mBidderData.entrySet().iterator();
            while (it.hasNext()) {
                String key = it.next().getKey();
                jSONObject.put(key, getBidderJsonData(key));
            }
        } catch (JSONException e) {
            BkLog.e(TAG, "Failed to create json data", e);
        }
        return jSONObject;
    }

    public long getLatencyMs(String str) {
        return Long.parseLong(this.mBidderData.get(str).get(LATENCY_MS));
    }

    public String getResultData(String str) {
        return this.mBidderData.get(str).get(RESULT);
    }

    public void saveEvent() {
        new AsyncTask<EventLog, Void, Void>() {
            @Override
            public Void doInBackground(EventLog... eventLogArr) {
                EventLogDatabaseAdapter.insertEntry(eventLogArr[0]);
                return null;
            }
        }.execute(this);
    }

    public void addCpmCentsData(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, String> map = this.mBidderData.get(str);
        if (map == null) {
            map = new HashMap<>();
            this.mBidderData.put(str, map);
        }
        map.put(CPM_CENTS, str2);
    }

    public void addLatencyMs(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, String> map = this.mBidderData.get(str);
        if (map == null) {
            map = new HashMap<>();
            this.mBidderData.put(str, map);
        }
        map.put(LATENCY_MS, str2);
    }
}
