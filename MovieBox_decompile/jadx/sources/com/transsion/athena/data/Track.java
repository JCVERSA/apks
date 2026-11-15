package com.transsion.athena.data;

import androidx.annotation.NonNull;
import org.json.JSONObject;

public class Track {
    public static final int SAVE_FLAG_NONE = -1;
    public static final int SAVE_FLAG_TO_DB = 1;
    public static final int SAVE_FLAG_TO_FILE = 0;

    private String f41523a;

    private JSONObject f41524b;

    private JSONObject f41525c;

    private long f41526d;

    private int f41527e;

    private long f41528f;

    private long f41529g;

    private String f41530h;

    private TrackData f41531i;

    public String getBootId() {
        return this.f41530h;
    }

    public String getEventName() {
        return this.f41523a;
    }

    public JSONObject getJsonData() {
        return this.f41524b;
    }

    public JSONObject getOriginJsonData() {
        return this.f41525c;
    }

    public long getTid() {
        return this.f41526d;
    }

    public TrackData getTrackData() {
        return this.f41531i;
    }

    public long getTrackErTs() {
        return this.f41529g;
    }

    public int getTrackFlag() {
        return this.f41527e;
    }

    public long getTrackTs() {
        return this.f41528f;
    }

    public void setBootId(String str) {
        this.f41530h = str;
    }

    public void setEventName(String str) {
        this.f41523a = str;
    }

    public void setJsonData(JSONObject jSONObject) {
        this.f41524b = jSONObject;
    }

    public void setOriginJsonData(JSONObject jSONObject) {
        this.f41525c = jSONObject;
    }

    public void setTid(long j10) {
        this.f41526d = j10;
    }

    public void setTrackData(TrackData trackData) {
        this.f41531i = trackData;
    }

    public void setTrackErTs(long j10) {
        this.f41529g = j10;
    }

    public void setTrackFlag(int i10) {
        this.f41527e = i10;
    }

    public void setTrackTs(long j10) {
        this.f41528f = j10;
    }

    @NonNull
    public String toString() {
        return "tid = " + this.f41526d + ",event = " + this.f41524b.toString();
    }
}
