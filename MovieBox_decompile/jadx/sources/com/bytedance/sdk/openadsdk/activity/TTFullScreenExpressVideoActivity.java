package com.bytedance.sdk.openadsdk.activity;

import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.component.reward.Sj.dNu;
import com.bytedance.sdk.openadsdk.component.reward.sP.uA;
import com.bytedance.sdk.openadsdk.component.reward.view.Dq;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.sef;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import w5.b;

public class TTFullScreenExpressVideoActivity extends TTFullScreenVideoActivity {
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    @Override
    public boolean Sj(long j10, boolean z10) {
        Dq dq2 = this.sP.wE;
        Jcg jcg = (dq2 == null || dq2.Sj() == null) ? new Jcg() : this.sP.wE.Sj().getAdShowTime();
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null || !(sPVar instanceof uA)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
            sj2.f20376ib.Sj(sj2.wE.sP(), jcg);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            if (sj3.dwU) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.sP;
                sj4.f20376ib.Sj(sj4.wE.sP(), jcg);
            } else {
                sj3.f20376ib.Sj(((uA) sPVar).Yf(), jcg);
            }
        }
        HashMap map = new HashMap();
        Dq dq3 = this.sP.wE;
        if (dq3 != null) {
            map.put("dynamic_show_type", Integer.valueOf(dq3.uA()));
            JSONObject jSONObjectSj = this.sP.wE.Sj((JSONObject) null);
            if (jSONObjectSj != null) {
                Iterator<String> itKeys = jSONObjectSj.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        map.put(next, jSONObjectSj.get(next));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        this.sP.f20376ib.Sj(new b.InterfaceC0920b() {
            boolean Sj;

            @Override
            public void Sj(long j11, int i10) {
                if (this.Sj) {
                    return;
                }
                this.Sj = true;
                TTFullScreenExpressVideoActivity.this.EjP.removeMessages(300);
                TTFullScreenExpressVideoActivity.this.dNu();
                TTFullScreenExpressVideoActivity.this.sP.f20376ib.Sj(j11, j11);
                TTFullScreenExpressVideoActivity.this.sP.wE.sP(true);
                if (TTFullScreenExpressVideoActivity.this.sP.sP.dx() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = TTFullScreenExpressVideoActivity.this.sP;
                    if (sj5.TKC) {
                        sj5.kF.TKC().EjP();
                        sef.sP();
                    }
                }
                if (TTFullScreenExpressVideoActivity.this.sP.sP.dx() == 21 && !TTFullScreenExpressVideoActivity.this.sP.sP.Dq()) {
                    TTFullScreenExpressVideoActivity.this.sP.sP.sP(true);
                    TTFullScreenExpressVideoActivity.this.sP.Wjd.dNu();
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = TTFullScreenExpressVideoActivity.this.sP;
                if (sj6.TKC) {
                    if (sj6.sP.WM()) {
                        if (TTFullScreenExpressVideoActivity.this.sP.wE.uA() == 1) {
                            TTFullScreenExpressVideoActivity.this.sP.Mts.TKC();
                            return;
                        }
                        return;
                    } else {
                        TTFullScreenExpressVideoActivity.this.Sj(false, 5);
                        if (sU.HiB(TTFullScreenExpressVideoActivity.this.sP.sP)) {
                            return;
                        }
                        TTFullScreenExpressVideoActivity.this.sP.f20376ib.Sj("skip", true);
                        return;
                    }
                }
                if (sU.HiB(sj6.sP)) {
                    TTFullScreenExpressVideoActivity.this.finish();
                    return;
                }
                Dq dq4 = TTFullScreenExpressVideoActivity.this.sP.wE;
                if (dq4 == null || dq4.Sj() == null) {
                    return;
                }
                TTFullScreenExpressVideoActivity.this.sP.wE.Sj().setTime("0", 0, 0, false);
                if (TTFullScreenExpressVideoActivity.this.sP.wE.Dq()) {
                    TTFullScreenExpressVideoActivity.this.sP.Mts.Sj("0", "X");
                    TTFullScreenExpressVideoActivity.this.sP.Mts.HiB(true);
                    TTFullScreenExpressVideoActivity.this.sP.Mts.TKC();
                }
            }

            @Override
            public void sP(long j11, int i10) {
                TTFullScreenExpressVideoActivity.this.EjP.removeMessages(300);
                TzV tzV = TTFullScreenExpressVideoActivity.this.sP.Wjd.Zq;
                if (tzV != null) {
                    tzV.TEQ();
                }
                if (TTFullScreenExpressVideoActivity.this.sP.f20376ib.sP()) {
                    TTFullScreenExpressVideoActivity.this.uvD();
                    return;
                }
                TTFullScreenExpressVideoActivity.this.sP.f20376ib.sef();
                TTFullScreenExpressVideoActivity.this.sP.wE.Sj(true);
                TTFullScreenExpressVideoActivity tTFullScreenExpressVideoActivity = TTFullScreenExpressVideoActivity.this;
                if (!tTFullScreenExpressVideoActivity.sP.TKC) {
                    tTFullScreenExpressVideoActivity.finish();
                    return;
                }
                tTFullScreenExpressVideoActivity.Sj(false, 3);
                dNu dnu = TTFullScreenExpressVideoActivity.this.sP.f20376ib;
                dnu.Sj(1 ^ (dnu.LqL() ? 1 : 0), 2);
            }

            @Override
            public void Sj() {
                TTFullScreenExpressVideoActivity.this.EjP.removeMessages(300);
                TTFullScreenExpressVideoActivity.this.dNu();
                TTFullScreenExpressVideoActivity tTFullScreenExpressVideoActivity = TTFullScreenExpressVideoActivity.this;
                if (tTFullScreenExpressVideoActivity.sP.TKC) {
                    tTFullScreenExpressVideoActivity.Sj(false, 6);
                } else {
                    tTFullScreenExpressVideoActivity.finish();
                }
                dNu dnu = TTFullScreenExpressVideoActivity.this.sP.f20376ib;
                dnu.Sj(!dnu.LqL() ? 1 : 0, !TTFullScreenExpressVideoActivity.this.sP.f20376ib.LqL() ? 1 : 0);
                TTFullScreenExpressVideoActivity.this.sP.f20376ib.sef();
            }

            @Override
            public void Sj(long j11, long j12) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = TTFullScreenExpressVideoActivity.this.sP;
                if (!sj5.qRN && sj5.f20376ib.sP()) {
                    TTFullScreenExpressVideoActivity.this.sP.f20376ib.uvD();
                }
                if (TTFullScreenExpressVideoActivity.this.sP.TEQ.get()) {
                    return;
                }
                TTFullScreenExpressVideoActivity.this.EjP.removeMessages(300);
                if (j11 != TTFullScreenExpressVideoActivity.this.sP.f20376ib.Dq()) {
                    TTFullScreenExpressVideoActivity.this.dNu();
                }
                if (TTFullScreenExpressVideoActivity.this.sP.f20376ib.sP()) {
                    TTFullScreenExpressVideoActivity.this.sP.f20376ib.Sj(j11, j12);
                    TTFullScreenExpressVideoActivity tTFullScreenExpressVideoActivity = TTFullScreenExpressVideoActivity.this;
                    long j13 = j11 / 1000;
                    tTFullScreenExpressVideoActivity.vS = (int) (tTFullScreenExpressVideoActivity.sP.f20376ib.Yf() - j13);
                    int i10 = (int) j13;
                    if ((TTFullScreenExpressVideoActivity.this.sP.sU.get() || TTFullScreenExpressVideoActivity.this.sP.Ym.get()) && TTFullScreenExpressVideoActivity.this.sP.f20376ib.sP()) {
                        TTFullScreenExpressVideoActivity.this.sP.f20376ib.uvD();
                    }
                    Dq dq4 = TTFullScreenExpressVideoActivity.this.sP.wE;
                    if (dq4 != null && dq4.Sj() != null) {
                        TTFullScreenExpressVideoActivity.this.sP.wE.Sj().setTime(String.valueOf(TTFullScreenExpressVideoActivity.this.vS), i10, 0, false);
                    }
                    if (TTFullScreenExpressVideoActivity.this.sP.wE.Dq() || TTFullScreenExpressVideoActivity.this.sP.sP.Fqk()) {
                        TTFullScreenExpressVideoActivity.this.TKC(i10);
                        TTFullScreenExpressVideoActivity tTFullScreenExpressVideoActivity2 = TTFullScreenExpressVideoActivity.this;
                        if (tTFullScreenExpressVideoActivity2.vS >= 0) {
                            tTFullScreenExpressVideoActivity2.sP.Mts.EjP(true);
                            TTFullScreenExpressVideoActivity tTFullScreenExpressVideoActivity3 = TTFullScreenExpressVideoActivity.this;
                            tTFullScreenExpressVideoActivity3.sP.Mts.Sj(String.valueOf(tTFullScreenExpressVideoActivity3.vS), null);
                        }
                    }
                }
            }
        });
        return this.sP.f20376ib.Sj(j10, z10, map, this.TKC);
    }

    @Override
    public boolean sU() {
        return true;
    }

    @Override
    protected void HiB() {
    }
}
