package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.transsion.athena.taaneh.a;
import com.transsion.ga.AthenaAnalytics;
import defpackage.c4d;
import defpackage.e5d;
import defpackage.o3d;
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
    private long a;
    private String b;
    private aatnhe c;
    private long d;

    public TidConfigBean() {
        this.c = new aatnhe();
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
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public boolean allowTrack(long j) {
        return this.c.b() == 0 || j >= this.d + this.c.b();
    }

    public boolean allowUpload(long j) {
        long j2 = this.c.j();
        long jI = this.c.i();
        if (j2 == -1 || jI == -1) {
            return false;
        }
        boolean z = Math.abs(j - j2) >= jI;
        boolean z2 = this.c.f() > 0 && this.c.f() <= this.c.a();
        int iG = this.c.g();
        if (iG == 0 || (iG == 1 && o3d.h(AthenaAnalytics.I()))) {
            return z || z2;
        }
        return false;
    }

    public String getEvent() {
        return this.b;
    }

    public long getTid() {
        return this.a;
    }

    public aatnhe getTidConfig() {
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005b  */
    public boolean inSamplingRange() {
        boolean z;
        int iD = this.c.d();
        int iC = this.c.c();
        int iE = this.c.e();
        int iM = this.c.m();
        int iL = this.c.l();
        if (iM == 100 && iD == 0 && iC == 100 && iE == 1 && iL == 1) {
            return true;
        }
        String strB = !TextUtils.isEmpty(a.b()) ? a.b() : com.transsion.athena.taaneh.athena.l(AthenaAnalytics.I());
        if (TextUtils.isEmpty(strB)) {
            z = true;
        } else {
            int iAbs = Math.abs(strB.hashCode()) % (iE * 100);
            if (iAbs < iD || iAbs > iC) {
                z = false;
            } else {
                z = true;
            }
        }
        boolean z2 = Math.abs(e5d.d.nextInt()) % (iL * 100) < iM;
        if (a.i()) {
            c4d.f("gaidHashHit: " + z + " eventHashHit: " + z2 + " gmin = " + iD + " gmax = " + iC);
        }
        return z && z2;
    }

    public boolean isCacheEnable() {
        return this.c.h() == 0;
    }

    public boolean isEnable() {
        aatnhe aatnheVar = this.c;
        return aatnheVar != null && aatnheVar.i() >= 0;
    }

    public void setEvent(String str) {
        this.b = str;
    }

    public void setLastTTime(long j) {
        this.d = j;
    }

    public void setTid(long j) {
        this.a = j;
    }

    public void setTidConfig(aatnhe aatnheVar) {
        this.c = aatnheVar;
    }

    public JSONObject toJSON() {
        try {
            return new JSONObject().put("tid", getTid()).put("tidConfig", this.c.n());
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public TidConfigBean(long j, String str, aatnhe aatnheVar) {
        new aatnhe();
        this.a = j;
        this.b = str;
        this.c = aatnheVar;
    }
}
