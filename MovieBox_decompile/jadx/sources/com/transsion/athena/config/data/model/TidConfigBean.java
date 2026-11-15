package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.transsion.ga.AthenaAnalytics;
import org.json.JSONObject;

public class TidConfigBean {
    public static final int REASON_ATHENA_DISABLE = 100;
    public static final int REASON_CONFIG_NOT_READY = 102;
    public static final int REASON_DB_EXCEPTION = 106;
    public static final int REASON_INITIALIZING = 101;
    public static final int REASON_NONE = 0;
    public static final int REASON_SAMPLING_RATE = 105;
    public static final int REASON_TID_DISABLE = 104;
    public static final int REASON_TID_NOT_EXIST = 103;

    private long f41441a;

    private String f41442b;

    private aatnhe f41443c;

    private long f41444d;

    public TidConfigBean() {
        this.f41443c = new aatnhe();
    }

    @Nullable
    public static TidConfigBean fromJSON(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            TidConfigBean tidConfigBean = new TidConfigBean();
            tidConfigBean.setTid(jSONObject.getLong("tid"));
            tidConfigBean.setTidConfig(aatnhe.a(jSONObject.getJSONObject("tidConfig")));
            return tidConfigBean;
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }

    public boolean allowTrack(long j10) {
        return this.f41443c.b() == 0 || j10 >= this.f41444d + this.f41443c.b();
    }

    public boolean allowUpload(long j10) {
        long j11 = this.f41443c.j();
        long jI = this.f41443c.i();
        if (j11 == -1 || jI == -1) {
            return false;
        }
        boolean z10 = Math.abs(j10 - j11) >= jI;
        boolean z11 = this.f41443c.f() > 0 && this.f41443c.f() <= this.f41443c.a();
        int iG = this.f41443c.g();
        if (iG == 0 || (iG == 1 && com.transsion.athena.taaneh.aatnhe.d(AthenaAnalytics.J()))) {
            return z10 || z11;
        }
        return false;
    }

    public String getEvent() {
        return this.f41442b;
    }

    public long getTid() {
        return this.f41441a;
    }

    public aatnhe getTidConfig() {
        return this.f41443c;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005b  */
    public boolean inSamplingRange() {
        boolean z10;
        int iD = this.f41443c.d();
        int iC = this.f41443c.c();
        int iE = this.f41443c.e();
        int iM = this.f41443c.m();
        int iL = this.f41443c.l();
        if (iM == 100 && iD == 0 && iC == 100 && iE == 1 && iL == 1) {
            return true;
        }
        String strA = !TextUtils.isEmpty(com.transsion.athena.taaneh.anehat.a()) ? com.transsion.athena.taaneh.anehat.a() : com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J());
        if (TextUtils.isEmpty(strA)) {
            z10 = true;
        } else {
            int iAbs = Math.abs(strA.hashCode()) % (iE * 100);
            if (iAbs < iD || iAbs > iC) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        boolean z11 = Math.abs(com.transsion.athena.aethna.athena.f41428b.nextInt()) % (iL * 100) < iM;
        if (com.transsion.athena.taaneh.anehat.b()) {
            com.transsion.athena.taaneh.aethna.c("gaidHashHit: " + z10 + " eventHashHit: " + z11 + " gmin = " + iD + " gmax = " + iC);
        }
        return z10 && z11;
    }

    public boolean isCacheEnable() {
        return this.f41443c.h() == 0;
    }

    public boolean isEnable() {
        aatnhe aatnheVar = this.f41443c;
        return aatnheVar != null && aatnheVar.i() >= 0;
    }

    public void setEvent(String str) {
        this.f41442b = str;
    }

    public void setLastTTime(long j10) {
        this.f41444d = j10;
    }

    public void setTid(long j10) {
        this.f41441a = j10;
    }

    public void setTidConfig(aatnhe aatnheVar) {
        this.f41443c = aatnheVar;
    }

    public JSONObject toJSON() {
        try {
            return new JSONObject().put("tid", getTid()).put("tidConfig", this.f41443c.n());
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }

    public TidConfigBean(long j10, String str, aatnhe aatnheVar) {
        new aatnhe();
        this.f41441a = j10;
        this.f41442b = str;
        this.f41443c = aatnheVar;
    }
}
