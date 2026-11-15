package com.bytedance.sdk.openadsdk.core.Ym.sP;

import android.text.TextUtils;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj extends TKC implements Comparable<Sj> {
    public long Sj;

    public static class C0248Sj {
        private final String Sj;
        private final long sP;
        private TKC.EnumC0249TKC TKC = TKC.EnumC0249TKC.TRACKING_URL;
        private boolean EjP = false;

        public C0248Sj(String str, long j10) {
            this.Sj = str;
            this.sP = j10;
        }

        public Sj Sj() {
            return new Sj(this.sP, this.Sj, this.TKC, Boolean.valueOf(this.EjP));
        }
    }

    protected Sj(long j10, String str, TKC.EnumC0249TKC enumC0249TKC, Boolean bool) {
        super(str, enumC0249TKC, bool);
        this.Sj = j10;
    }

    public static int Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length == 3) {
            try {
                return (int) ((Integer.parseInt(strArrSplit[0]) * TimeConstants.HOUR) + (Integer.parseInt(strArrSplit[1]) * 60000) + (Float.parseFloat(strArrSplit[2]) * 1000.0f));
            } catch (Throwable unused) {
            }
        }
        return Integer.MIN_VALUE;
    }

    public boolean Sj(long j10) {
        return this.Sj <= j10 && !HiB();
    }

    @Override
    public int compareTo(Sj sj2) {
        if (sj2 == null) {
            return 1;
        }
        long j10 = this.Sj;
        long j11 = sj2.Sj;
        if (j10 > j11) {
            return 1;
        }
        return j10 < j11 ? -1 : 0;
    }

    public JSONObject Sj() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", TKC());
        jSONObject.put("trackingMilliseconds", this.Sj);
        return jSONObject;
    }
}
