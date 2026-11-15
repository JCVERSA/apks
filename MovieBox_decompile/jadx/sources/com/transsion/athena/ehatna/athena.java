package com.transsion.athena.ehatna;

import java.io.Serializable;
import org.json.JSONObject;

public class athena implements Serializable {

    public long f41588a;

    public long f41589b;

    public String f41590c;

    public athena(long j10, long j11, String str) {
        this.f41588a = j10;
        this.f41589b = j11;
        this.f41590c = str;
    }

    public athena(String str) throws Exception {
        JSONObject jSONObject = new JSONObject(str);
        this.f41588a = jSONObject.getLong("serverTime");
        this.f41589b = jSONObject.getLong("elapsedRealtime");
        this.f41590c = jSONObject.getString("bootId");
    }
}
