package com.bytedance.sdk.openadsdk.activity;

import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.Sj.dNu;
import com.bytedance.sdk.openadsdk.component.reward.view.Dq;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.sef;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import w5.b;

public class TTRewardExpressVideoActivity extends TTRewardVideoActivity {
    @Override
    public boolean Sj(long j10, boolean z10) {
        Dq dq2 = this.sP.wE;
        Jcg jcg = (dq2 == null || dq2.Sj() == null) ? new Jcg() : this.sP.wE.Sj().getAdShowTime();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        sj2.f20376ib.Sj(sj2.wE.sP(), jcg);
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
                TTRewardExpressVideoActivity.this.EjP.removeMessages(300);
                TTRewardExpressVideoActivity.this.dNu();
                TTRewardExpressVideoActivity.this.sP.f20376ib.Sj(j11, j11);
                TTRewardExpressVideoActivity.this.sP.wE.sP(true);
                if (TTRewardExpressVideoActivity.this.sP.sP.dx() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTRewardExpressVideoActivity.this.sP;
                    if (sj3.TKC) {
                        sj3.kF.TKC().EjP();
                        sef.sP();
                    }
                }
                if (TTRewardExpressVideoActivity.this.sP.sP.dx() == 21 && !TTRewardExpressVideoActivity.this.sP.sP.Dq()) {
                    TTRewardExpressVideoActivity.this.sP.sP.sP(true);
                    TTRewardExpressVideoActivity.this.sP.Wjd.dNu();
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTRewardExpressVideoActivity.this.sP;
                if (sj4.TKC) {
                    if (!sj4.sP.WM()) {
                        TTRewardExpressVideoActivity.this.Sj(false, 5);
                        if (!sU.HiB(TTRewardExpressVideoActivity.this.sP.sP)) {
                            TTRewardExpressVideoActivity.this.sP.f20376ib.Sj("skip", true);
                        }
                    } else if (TTRewardExpressVideoActivity.this.sP.wE.uA() == 1) {
                        TTRewardExpressVideoActivity.this.sP.Mts.TKC();
                    }
                } else if (!sj4.sP.WM()) {
                    if (!sU.HiB(TTRewardExpressVideoActivity.this.sP.sP)) {
                        TTRewardExpressVideoActivity.this.sP.f20376ib.Sj("skip", true);
                    }
                    TTRewardExpressVideoActivity.this.finish();
                } else if (TTRewardExpressVideoActivity.this.sP.wE.uA() == 1) {
                    TTRewardExpressVideoActivity.this.sP.Mts.TKC();
                }
                ((TTRewardVideoActivity) TTRewardExpressVideoActivity.this).f20351aa = (int) (System.currentTimeMillis() / 1000);
                TTRewardExpressVideoActivity.this.dx();
            }

            @Override
            public void sP(long j11, int i10) {
                TTRewardExpressVideoActivity.this.EjP.removeMessages(300);
                TzV tzV = TTRewardExpressVideoActivity.this.sP.Wjd.Zq;
                if (tzV != null) {
                    tzV.TEQ();
                }
                if (TTRewardExpressVideoActivity.this.sP.f20376ib.sP()) {
                    TTRewardExpressVideoActivity.this.uvD();
                    return;
                }
                TTRewardExpressVideoActivity.this.dx();
                TTRewardExpressVideoActivity.this.sP.f20376ib.sef();
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                if (tTRewardExpressVideoActivity.sP.TKC) {
                    tTRewardExpressVideoActivity.Sj(false, 3);
                } else {
                    tTRewardExpressVideoActivity.finish();
                }
                TTRewardExpressVideoActivity.this.sP.wE.Sj(true);
                dNu dnu = TTRewardExpressVideoActivity.this.sP.f20376ib;
                dnu.Sj(1 ^ (dnu.LqL() ? 1 : 0), 2);
            }

            @Override
            public void Sj() {
                TTRewardExpressVideoActivity.this.EjP.removeMessages(300);
                TTRewardExpressVideoActivity.this.dNu();
                TTRewardExpressVideoActivity.this.dx();
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                if (tTRewardExpressVideoActivity.sP.TKC) {
                    tTRewardExpressVideoActivity.Sj(false, 6);
                } else {
                    tTRewardExpressVideoActivity.finish();
                }
                dNu dnu = TTRewardExpressVideoActivity.this.sP.f20376ib;
                dnu.Sj(!dnu.LqL() ? 1 : 0, !TTRewardExpressVideoActivity.this.sP.f20376ib.LqL() ? 1 : 0);
                TTRewardExpressVideoActivity.this.sP.f20376ib.sef();
            }

            @Override
            public void Sj(long j11, long j12) {
                int iTEQ;
                sU sUVar;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTRewardExpressVideoActivity.this.sP;
                if (!sj3.qRN && sj3.f20376ib.sP()) {
                    TTRewardExpressVideoActivity.this.sP.f20376ib.uvD();
                }
                if (TTRewardExpressVideoActivity.this.sP.TEQ.get()) {
                    return;
                }
                TTRewardExpressVideoActivity.this.EjP.removeMessages(300);
                if (j11 != TTRewardExpressVideoActivity.this.sP.f20376ib.Dq()) {
                    TTRewardExpressVideoActivity.this.dNu();
                }
                if (TTRewardExpressVideoActivity.this.sP.f20376ib.sP()) {
                    TTRewardExpressVideoActivity.this.sP.f20376ib.Sj(j11, j12);
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTRewardExpressVideoActivity.this.sP;
                    if (sj4 != null && (sUVar = sj4.sP) != null && sUVar.sP() >= 0) {
                        iTEQ = TTRewardExpressVideoActivity.this.sP.sP.sP();
                    } else {
                        iTEQ = TTRewardExpressVideoActivity.this.sP != null ? com.bytedance.sdk.openadsdk.core.dNu.EjP().TEQ(String.valueOf(TTRewardExpressVideoActivity.this.sP.vS)) : 30;
                    }
                    boolean z11 = TTRewardExpressVideoActivity.this.sP.wE.Dq() && iTEQ >= 0;
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                    long j13 = j11 / 1000;
                    tTRewardExpressVideoActivity.vS = (int) (tTRewardExpressVideoActivity.sP.f20376ib.Yf() - j13);
                    int i10 = (int) j13;
                    if ((TTRewardExpressVideoActivity.this.sP.sU.get() || TTRewardExpressVideoActivity.this.sP.Ym.get()) && TTRewardExpressVideoActivity.this.sP.f20376ib.sP()) {
                        TTRewardExpressVideoActivity.this.sP.f20376ib.uvD();
                    }
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity2 = TTRewardExpressVideoActivity.this;
                    int i11 = tTRewardExpressVideoActivity2.vS;
                    if (i11 >= 0) {
                        tTRewardExpressVideoActivity2.sP.Mts.Sj(String.valueOf(i11), null);
                    }
                    TTRewardExpressVideoActivity.this.sP.Wjd.EjP(i10);
                    TTRewardExpressVideoActivity.this.sP(j11, j12);
                    Dq dq4 = TTRewardExpressVideoActivity.this.sP.wE;
                    if (dq4 != null && dq4.Sj() != null) {
                        TTRewardExpressVideoActivity.this.sP.wE.Sj().setTime(String.valueOf(TTRewardExpressVideoActivity.this.vS), i10, 0, false);
                    }
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity3 = TTRewardExpressVideoActivity.this;
                    if (tTRewardExpressVideoActivity3.vS > 0) {
                        if (z11 && i10 >= iTEQ && tTRewardExpressVideoActivity3.sP.sP.dx() != 5 && TTRewardExpressVideoActivity.this.sP.sP.dx() != 33) {
                            TTRewardExpressVideoActivity.this.sP.Sj(true);
                            TTRewardExpressVideoActivity tTRewardExpressVideoActivity4 = TTRewardExpressVideoActivity.this;
                            tTRewardExpressVideoActivity4.sP.Mts.Sj(String.valueOf(tTRewardExpressVideoActivity4.vS), TTAdDislikeToast.getSkipText());
                            TTRewardExpressVideoActivity.this.sP.Mts.HiB(true);
                            return;
                        }
                        TTRewardExpressVideoActivity tTRewardExpressVideoActivity5 = TTRewardExpressVideoActivity.this;
                        tTRewardExpressVideoActivity5.sP.Mts.Sj(String.valueOf(tTRewardExpressVideoActivity5.vS), null);
                    }
                }
            }
        });
        boolean zSj = this.sP.f20376ib.Sj(j10, z10, map, this.TKC);
        if (zSj && !z10) {
            ((TTRewardVideoActivity) this).Ym = (int) (System.currentTimeMillis() / 1000);
        }
        return zSj;
    }

    @Override
    public boolean sU() {
        return true;
    }

    @Override
    protected void HiB() {
    }
}
