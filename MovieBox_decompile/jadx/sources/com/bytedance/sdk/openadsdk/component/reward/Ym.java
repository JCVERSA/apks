package com.bytedance.sdk.openadsdk.component.reward;

import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import org.json.JSONObject;

public class Ym {
    private long EjP;
    private boolean HiB;
    private final Sj Sj;
    private long TKC;
    private long sP;
    private boolean vS;

    public interface Sj {
        void Sj();
    }

    public Ym(Sj sj2) {
        this.HiB = true;
        this.Sj = sj2;
        int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("reward_callback_fallback", 0);
        if (iSj != 0) {
            this.HiB = false;
            if (iSj == 2) {
                this.vS = true;
            }
        }
    }

    public static void Sj(sU sUVar, boolean z10, final int i10) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVar, Mts.Sj(sUVar), z10 ? "reward_callback" : "reward_fail_callback", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() {
            @Override
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("reason", i10);
                    jSONObject2.put("pag_json_data", jSONObject3);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public void EjP() {
        if (this.Sj != null) {
            long jElapsedRealtime = (this.EjP + (this.TKC > 0 ? SystemClock.elapsedRealtime() - this.TKC : 0L)) / 1000;
            if (this.HiB) {
                return;
            }
            if (this.vS || jElapsedRealtime >= this.sP) {
                this.Sj.Sj();
            }
        }
    }

    public void TKC() {
        this.HiB = true;
    }

    public void sP() {
        if (this.HiB) {
            return;
        }
        this.TKC = SystemClock.elapsedRealtime();
    }

    public void Sj(long j10) {
        if (j10 <= this.sP) {
            return;
        }
        this.sP = j10;
    }

    public void Sj() {
        if (!this.HiB && this.TKC > 0) {
            this.EjP += SystemClock.elapsedRealtime() - this.TKC;
            this.TKC = 0L;
        }
    }
}
