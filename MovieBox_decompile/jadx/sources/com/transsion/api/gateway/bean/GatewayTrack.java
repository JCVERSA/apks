package com.transsion.api.gateway.bean;

import java.io.Serializable;
import org.json.JSONObject;

public class GatewayTrack implements Serializable {
    public static final int SAVE_FLAG_NONE = -1;
    public static final int SAVE_FLAG_TO_DB = 1;
    public static final int SAVE_FLAG_TO_FILE = 0;
    private String eventName;
    private int flag;
    private boolean hasSent = false;
    private JSONObject jsonData;
    private long tid;
    private int trackFlag;

    public String getEventName() {
        return this.eventName;
    }

    public int getFlag() {
        return this.flag;
    }

    public JSONObject getJsonData() {
        return this.jsonData;
    }

    public long getTid() {
        return this.tid;
    }

    public int getTrackFlag() {
        return this.trackFlag;
    }

    public boolean isHasSent() {
        return this.hasSent;
    }

    public void setEventName(String str) {
        this.eventName = str;
    }

    public void setFlag(int i10) {
        this.flag = i10;
    }

    public void setHasSent(boolean z10) {
        this.hasSent = z10;
    }

    public void setJson(JSONObject jSONObject) {
        this.jsonData = jSONObject;
    }

    public void setTid(long j10) {
        this.tid = j10;
    }

    public void setTrackFlag(int i10) {
        this.trackFlag = i10;
    }

    public String toString() {
        return "tid = " + this.tid + ",event = " + this.jsonData.toString();
    }
}
