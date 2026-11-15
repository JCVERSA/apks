package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.Ym;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.ib;
import com.bytedance.sdk.openadsdk.utils.sef;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import w5.b;

public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private static String TzV;
    private static String Zq;
    private static String dNu;

    private static com.bytedance.sdk.openadsdk.Sj.HiB.Sj f20350dx;
    private static String sef;
    private static String uvD;
    protected com.bytedance.sdk.openadsdk.Sj.HiB.Sj Fmk;
    private String RiZ;
    protected int Ym;

    protected int f20351aa;
    private boolean kF;
    private String sU;
    private final AtomicBoolean zR = new AtomicBoolean(false);

    private int f20352ib = -1;

    public void ib() {
        sU.Sj("BVA", "invoke callback onAdClicked, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdVideoBarClick");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2 = this.Fmk;
        if (sj2 != null) {
            sj2.onAdClicked();
        }
    }

    private JSONObject kF() {
        JSONObject jSONObject = new JSONObject();
        int iDx = (int) this.sP.f20376ib.dx();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_NAME, this.sP.sP.uP());
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, this.sP.sP.wE());
            jSONObject.put("network", TzV.TKC(getApplicationContext()));
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            int iHpB = this.sP.sP.HpB();
            String strTKC = "unKnow";
            if (iHpB == 2) {
                strTKC = Mts.sP();
            } else if (iHpB == 1) {
                strTKC = Mts.TKC();
            }
            jSONObject.put("user_agent", strTKC);
            JSONObject jSONObjectDhB = this.sP.sP.DhB();
            jSONObjectDhB.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
            jSONObject.put("extra", jSONObjectDhB);
            jSONObject.put("media_extra", this.RiZ);
            jSONObject.put("video_duration", this.sP.sP.UHs().K());
            jSONObject.put("play_start_ts", this.Ym);
            jSONObject.put("play_end_ts", this.f20351aa);
            jSONObject.put("duration", iDx);
            jSONObject.put("user_id", this.sU);
            jSONObject.put("trans_id", ib.Sj().replace("-", ""));
            return jSONObject;
        } catch (Throwable th2) {
            sU.Sj("TTAD.RVA", "", th2);
            return null;
        }
    }

    private void uP() {
        Ym ym2;
        if (this.Dq) {
            return;
        }
        this.Dq = true;
        sU.Sj("BVA", "invoke callback onAdClose, ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 != null && (ym2 = sj2.f20379tz) != null) {
            ym2.EjP();
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdClose");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj3 = this.Fmk;
        if (sj3 != null) {
            sj3.sP();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0096  */
    public void zR() {
        com.bytedance.sdk.openadsdk.component.reward.view.sP sPVarSj;
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(this.sP.f20376ib.Jcg());
        sj2.TKC(this.sP.f20376ib.sU());
        sj2.sP(this.sP.f20376ib.Ym());
        sj2.TKC(3);
        sj2.EjP(this.sP.f20376ib.RiZ());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.sP.f20376ib.TKC(), sj2, this.sP.f20376ib.Sj());
        com.bytedance.sdk.openadsdk.core.ib.TKC(this.sP.vS);
        this.sP.f20376ib.Sj("skip", false);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
        if (sj3.TKC) {
            if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(sj3.sP) && (sPVarSj = this.sP.wE.Sj()) != null && sPVarSj.EjP == 0) {
                finish();
            } else {
                Sj(true, 4);
            }
            if (com.bytedance.sdk.openadsdk.core.model.TzV.Sj(this.sP.sP) && !this.sP.uvD.get()) {
                finish();
            }
        } else {
            finish();
        }
        com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = this.sP.sP.GMp();
        if (sjGMp != null) {
            com.bytedance.sdk.openadsdk.core.Ym.EjP ejPSj = sjGMp.Sj();
            long jJcg = this.sP.f20376ib.Jcg();
            ejPSj.vS(jJcg);
            ejPSj.HiB(jJcg);
        }
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.sP.sP, 5);
    }

    @Override
    protected void Jcg() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdShow");
        } else {
            com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2 = this.Fmk;
            if (sj2 != null) {
                sj2.Sj();
            }
        }
        if (sU()) {
            this.sP.wE.TEQ();
        }
    }

    @Override
    public boolean RiZ() {
        return true;
    }

    @Override
    public void Sj(String str, JSONObject jSONObject) {
    }

    @Override
    protected void TzV() {
        final View viewTEQ = this.sP.Wjd.TEQ();
        if (viewTEQ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() {
                /* JADX WARN: Code duplicated, block: B:31:0x00ec  */
                @Override
                public void onClick(View view) {
                    boolean zHiB;
                    if (TTRewardVideoActivity.this.sP.JcM.wE() && TTRewardVideoActivity.this.sP.TEQ.get()) {
                        boolean zFmk = TTRewardVideoActivity.this.sP.WMZ.Fmk();
                        TTRewardVideoActivity.this.sP.JcM.vS(zFmk);
                        TTRewardVideoActivity.this.sP.Wjd.HiB(8);
                        View view2 = viewTEQ;
                        if (view2 instanceof com.bytedance.sdk.openadsdk.core.HiB.EjP) {
                            ((com.bytedance.sdk.openadsdk.core.HiB.EjP) view2).setImageResource(com.bytedance.sdk.component.utils.ib.EjP(TTRewardVideoActivity.this.sP.Ei, "tt_close_btn"));
                        }
                        TTRewardVideoActivity.this.sP.HpB.sendEmptyMessageDelayed(600, 5000L);
                        if (!com.bytedance.sdk.openadsdk.core.model.sU.TKC(TTRewardVideoActivity.this.sP.sP)) {
                            return;
                        }
                        if (com.bytedance.sdk.openadsdk.core.model.sU.TKC(TTRewardVideoActivity.this.sP.sP) && zFmk) {
                            return;
                        }
                    }
                    if (!TTRewardVideoActivity.this.sP.sP.Snq()) {
                        zHiB = false;
                    } else if (TTRewardVideoActivity.this.sP.sP.Ph()) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = TTRewardVideoActivity.this.sP;
                        if (sj2.FPG != null) {
                            sj2.sP.xD(2);
                            zHiB = TTRewardVideoActivity.this.sP.FPG.HiB();
                        } else {
                            zHiB = false;
                        }
                    } else if (TTRewardVideoActivity.this.sP.sP.AE() != 0 || TTRewardVideoActivity.this.sP.JcM.dNu()) {
                        zHiB = false;
                    } else {
                        TTRewardVideoActivity.this.sP.sP.xD(11);
                        if (TTRewardVideoActivity.this.sP.JcM.EjP()) {
                            TTRewardVideoActivity.this.sP.sP.xD(12);
                        }
                        try {
                            TTRewardVideoActivity.this.sP.Wjd.dNu();
                            zHiB = true;
                        } catch (Exception unused) {
                            zHiB = false;
                        }
                    }
                    if (zHiB) {
                        return;
                    }
                    TTRewardVideoActivity.this.sP.JcM.ley();
                    TTRewardVideoActivity.this.sP.WMZ.Ym();
                    TTRewardVideoActivity.this.sP.LqL.vS();
                    if (uP.EjP(TTRewardVideoActivity.this.sP.sP)) {
                        TTRewardVideoActivity.this.Sj(true, true);
                    } else {
                        TTRewardVideoActivity.this.finish();
                    }
                }
            };
            viewTEQ.setOnClickListener(onClickListener);
            viewTEQ.setTag(viewTEQ.getId(), onClickListener);
        }
        this.sP.Mts.Sj(new com.bytedance.sdk.openadsdk.component.reward.top.sP() {
            @Override
            public void Sj(View view) {
                if (TTRewardVideoActivity.this.sP.sP.yr()) {
                    if (TTRewardVideoActivity.this.sP.Wjd.Ym() != null) {
                        TTRewardVideoActivity.this.sP.sP.xD(2);
                        TTRewardVideoActivity.this.sP.Wjd.dNu();
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = TTRewardVideoActivity.this.sP;
                if (!sj2.TKC && sj2.sP.Snq() && !TTRewardVideoActivity.this.sP.sP.Ph()) {
                    TTRewardVideoActivity.this.sP.sP.xD(13);
                    try {
                        TTRewardVideoActivity.this.sP.Wjd.dNu();
                        return;
                    } catch (Exception unused) {
                    }
                }
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                tTRewardVideoActivity.Sj(uP.TKC(tTRewardVideoActivity.sP.sP), false);
            }

            @Override
            public void TKC(View view) {
                View view2 = viewTEQ;
                if (view2 != null) {
                    view2.performClick();
                }
            }

            @Override
            public void sP(View view) {
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                tTRewardVideoActivity.sP.LD.Sj(tTRewardVideoActivity.TKC);
            }

            @Override
            public void Sj(View view, String str) {
                com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = TTRewardVideoActivity.this.TKC;
                if (sPVar != null && sPVar.EjP() != null) {
                    TTRewardVideoActivity.this.TKC.EjP().Sj(TTRewardVideoActivity.this.sP.ndK);
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = TTRewardVideoActivity.this.sP;
                sj2.ndK = !sj2.ndK;
                StringBuilder sb2 = new StringBuilder("will set is Mute ");
                sb2.append(TTRewardVideoActivity.this.sP.ndK);
                sb2.append(" mLastVolume=");
                sb2.append(TTRewardVideoActivity.this.sP.fF.Sj());
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTRewardVideoActivity.this.sP;
                sj3.f20376ib.Sj(sj3.ndK, str);
                if (!uP.RiZ(TTRewardVideoActivity.this.sP.sP) || TTRewardVideoActivity.this.sP.TEQ.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTRewardVideoActivity.this.sP;
                    sj4.JcM.HiB(sj4.ndK);
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = TTRewardVideoActivity.this.sP;
                    sj5.uP.vS(sj5.ndK);
                    com.bytedance.sdk.openadsdk.core.model.sU sUVar = TTRewardVideoActivity.this.sP.sP;
                    if (sUVar == null || sUVar.GMp() == null || TTRewardVideoActivity.this.sP.sP.GMp().Sj() == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = TTRewardVideoActivity.this.sP;
                    if (sj6.f20376ib != null) {
                        if (sj6.ndK) {
                            sj6.sP.GMp().Sj().Dq(TTRewardVideoActivity.this.sP.f20376ib.Jcg());
                        } else {
                            sj6.sP.GMp().Sj().uA(TTRewardVideoActivity.this.sP.f20376ib.Jcg());
                        }
                    }
                }
            }
        });
    }

    @Override
    protected void Zq() {
        com.bytedance.sdk.openadsdk.component.reward.view.sP sPVarSj;
        super.Zq();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || (sPVarSj = sj2.wE.Sj()) == null) {
            return;
        }
        sPVarSj.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.HiB() {
            @Override
            public void Sj() {
                TTRewardVideoActivity.this.ib();
            }
        });
    }

    @Override
    public void aa() {
        dx();
    }

    @Override
    public void c_() {
        ib();
    }

    protected void dx() {
        TKC(0);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        f20350dx = null;
    }

    @Override
    public void finish() {
        if (this.sP != null) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoForceBreak", this.sP.sP);
        }
        uP();
        super.finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        super.onCreate(bundle);
        try {
            if (sef == null) {
                sef = com.bytedance.sdk.component.utils.ib.Sj(this, "tt_reward_msg");
                Zq = com.bytedance.sdk.component.utils.ib.Sj(this, "tt_msgPlayable");
                uvD = com.bytedance.sdk.component.utils.ib.Sj(this, "tt_negtiveBtnBtnText");
                dNu = com.bytedance.sdk.component.utils.ib.Sj(this, "tt_postiveBtnText");
                TzV = com.bytedance.sdk.component.utils.ib.Sj(this, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th2) {
            sU.sP("TTAD.RVA", th2.getMessage());
        }
        if (bundle == null || (sj2 = this.sP) == null || (sUVar = sj2.sP) == null || !sUVar.KTL()) {
            return;
        }
        this.zR.set(true);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        uP();
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("recycleRes");
        }
        this.Fmk = null;
    }

    @Override
    protected void onPause() {
        Ym ym2;
        super.onPause();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || (ym2 = sj2.f20379tz) == null) {
            return;
        }
        ym2.Sj();
    }

    @Override
    protected void onResume() {
        Ym ym2;
        super.onResume();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || (ym2 = sj2.f20379tz) == null) {
            return;
        }
        ym2.sP();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        if (bundle == null) {
            bundle = new Bundle();
        }
        f20350dx = this.Fmk;
        if (this.zR.get() && (sj2 = this.sP) != null) {
            sj2.sP.caU();
        }
        super.onSaveInstanceState(bundle);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0036  */
    @Override
    public void sef() {
        int i10 = dNu.EjP().ley(String.valueOf(this.sP.vS)).vS;
        boolean z10 = true;
        boolean z11 = false;
        if (uP.RiZ(this.sP.sP)) {
            if ((1.0d - (((double) this.vS) / this.sP.f20376ib.Yf())) * 100.0d < i10) {
                z10 = false;
            }
            z11 = z10;
        } else {
            boolean z12 = (1.0f - (this.sP.uP.sP() / ((float) this.sP.sP.oWa()))) * 100.0f >= ((float) i10);
            int iSj = dNu.EjP().Sj(String.valueOf(this.sP.vS));
            if (iSj == 0) {
                boolean zVS = this.sP.JcM.aa().vS();
                if (this.sP.uP.TKC()) {
                    zVS = true;
                }
                if (!z12 || !zVS) {
                    z10 = false;
                }
                z11 = z10;
            } else if (iSj == 1) {
                z11 = z12;
            }
        }
        if (z11) {
            dx();
        }
    }

    @Override
    public void EjP() {
        ib();
        this.sP.sP.jU();
        this.sP.sP.Sj(true);
        if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(this.sP.sP)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = sj2.sP;
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, sj2.HiB, sUVar.SPg());
        }
    }

    @Override
    protected void TKC() {
        this.sP.Mts.Sj(null, TTAdDislikeToast.getSkipText());
        this.sP.Mts.HiB(true);
    }

    public void sP(long j10, long j11) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        boolean z10 = false;
        if (sj2 != null && (sUVar = sj2.sP) != null) {
            if (sUVar.LqL() >= 0 && this.sP.sP.sP() >= 0) {
                z10 = true;
            }
            if (z10) {
                j11 = this.sP.sP.sP();
            }
        }
        long j12 = j10 + (((long) this.sP.UHs) * 1000);
        if (z10) {
            Sj(j12, j11);
            return;
        }
        if (this.f20352ib == -1) {
            this.f20352ib = dNu.EjP().ley(String.valueOf(this.sP.vS)).vS;
        }
        if (j11 <= 0) {
            return;
        }
        if (j11 >= 30000 && j12 >= 27000) {
            dx();
        } else if ((j12 * 100) / j11 >= this.f20352ib) {
            dx();
        }
    }

    protected void TKC(final int i10) {
        if (this.zR.get() || this.kF) {
            return;
        }
        this.zR.set(true);
        Ym ym2 = this.sP.f20379tz;
        if (ym2 != null) {
            ym2.TKC();
        }
        if (dNu.EjP().uvD(String.valueOf(this.sP.vS))) {
            Sj(true, this.sP.sP.wE(), this.sP.sP.uP(), 0, "", i10);
        } else {
            dNu.TKC().Sj(kF(), new RiZ.sP() {
                @Override
                public void Sj(int i11, String str) {
                    TTRewardVideoActivity.this.Sj(false, 0, "", i11, str, i10);
                }

                @Override
                public void Sj(com.bytedance.sdk.openadsdk.core.sU.sP sPVar) {
                    boolean z10 = sPVar.sP;
                    TTRewardVideoActivity.this.Sj(sPVar.sP, sPVar.TKC.Sj(), sPVar.TKC.sP(), 0, "", i10);
                }
            });
        }
    }

    @Override
    protected void Sj() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        super.Sj();
        if (this.zR.get() || (sj2 = this.sP) == null) {
            return;
        }
        sj2.f20379tz = new Ym(new Ym.Sj() {
            @Override
            public void Sj() {
                if (TTRewardVideoActivity.this.zR.get() || TTRewardVideoActivity.this.kF) {
                    return;
                }
                TTRewardVideoActivity.this.TKC(1);
            }
        });
    }

    protected void Sj(String str) {
        Sj(str, false, 0, "", 0, "");
    }

    private void Sj(final String str, final boolean z10, final int i10, final String str2, final int i11, final String str3) {
        JcM.TKC(new Dq("Reward_executeMultiProcessCallback") {
            @Override
            public void run() {
                try {
                    TTRewardVideoActivity.this.sP(0).executeRewardVideoCallback(TTRewardVideoActivity.this.sP.f20374db, str, z10, i10, str2, i11, str3);
                } catch (Throwable th2) {
                    sU.sP("TTAD.RVA", "rewarded_video", "executeRewardVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    @Override
    public void Sj(Bundle bundle) {
        if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            this.Fmk = kF.Sj().TKC();
        }
        if (this.Fmk != null || bundle == null) {
            return;
        }
        this.Fmk = f20350dx;
        f20350dx = null;
    }

    public void Sj(final boolean z10, boolean z11) {
        if (!z11 && this.kF && this.sP.TEQ.get()) {
            if (uP.Dq(this.sP.sP)) {
                this.sP.JcM.Dq();
                return;
            } else if (uP.TEQ(this.sP.sP)) {
                this.sP.uP.dNu();
                return;
            }
        }
        if (!dNu.EjP().Dq(String.valueOf(this.sP.vS))) {
            if (!z11 && this.sP.TEQ.get()) {
                if (uP.Dq(this.sP.sP)) {
                    this.sP.JcM.Dq();
                    return;
                } else if (uP.TEQ(this.sP.sP)) {
                    this.sP.uP.dNu();
                    return;
                }
            }
            if (z10) {
                finish();
                return;
            } else {
                zR();
                return;
            }
        }
        if (this.zR.get()) {
            if (this.sP.TEQ.get()) {
                if (uP.Dq(this.sP.sP)) {
                    this.sP.JcM.Dq();
                    return;
                } else if (uP.TEQ(this.sP.sP)) {
                    this.sP.uP.dNu();
                    return;
                }
            }
            if (z10) {
                finish();
                return;
            } else {
                zR();
                return;
            }
        }
        if (uP.Dq(this.sP.sP) && this.sP.JcM.Ym().getVisibility() == 0) {
            this.sP.JcM.Dq();
            return;
        }
        if (uP.TEQ(this.sP.sP) && this.sP.JcM.TEQ().getVisibility() == 0) {
            this.sP.uP.dNu();
            return;
        }
        this.sP.sU.set(true);
        this.sP.f20376ib.uvD();
        if (z10) {
            this.sP.uP.sef();
        }
        final com.bytedance.sdk.openadsdk.core.widget.sP sPVar = new com.bytedance.sdk.openadsdk.core.widget.sP(this);
        this.TKC.Fmk = sPVar;
        if (z10) {
            sPVar.Sj(Zq).sP(TzV).TKC(uvD);
        } else {
            sPVar.Sj(sef).sP(dNu).TKC(uvD);
        }
        this.TKC.Fmk.Sj(new com.bytedance.sdk.openadsdk.core.widget.sP.Sj() {
            @Override
            public void Sj() {
                TTRewardVideoActivity.this.sP.f20376ib.Zq();
                if (z10) {
                    TTRewardVideoActivity.this.sP.uP.HiB(1000);
                }
                sPVar.dismiss();
                TTRewardVideoActivity.this.sP.sU.set(false);
            }

            @Override
            public void sP() {
                sPVar.dismiss();
                TTRewardVideoActivity.this.kF = true;
                TTRewardVideoActivity.this.sP.sU.set(false);
                TTRewardVideoActivity.this.sP.uP.vS(Integer.MAX_VALUE);
                if (z10) {
                    if (uP.TzV(TTRewardVideoActivity.this.sP.sP)) {
                        if (uP.Dq(TTRewardVideoActivity.this.sP.sP)) {
                            if (TTRewardVideoActivity.this.sP.uP.Sj()) {
                                TTRewardVideoActivity.this.sP.uP.Sj(5);
                                return;
                            } else {
                                TTRewardVideoActivity.this.sP.JcM.Dq();
                                return;
                            }
                        }
                        TTRewardVideoActivity.this.sP.LqL.vS();
                        if (TTRewardVideoActivity.this.sP.uP.Sj()) {
                            TTRewardVideoActivity.this.sP.uP.Sj(4);
                        }
                        TTRewardVideoActivity.this.finish();
                        return;
                    }
                    if (uP.vS(TTRewardVideoActivity.this.sP.sP)) {
                        if (uP.TEQ(TTRewardVideoActivity.this.sP.sP)) {
                            TTRewardVideoActivity.this.sP.uP.dNu();
                            return;
                        } else {
                            TTRewardVideoActivity.this.sP.LqL.vS();
                            TTRewardVideoActivity.this.finish();
                            return;
                        }
                    }
                }
                TTRewardVideoActivity.this.zR();
            }
        }).show();
    }

    @Override
    protected void Sj(@NonNull Intent intent) {
        super.Sj(intent);
        this.RiZ = intent.getStringExtra("media_extra");
        this.sU = intent.getStringExtra("user_id");
    }

    public boolean Sj(long j10, boolean z10) {
        Jcg jcg = new Jcg();
        jcg.Sj(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        sj2.f20376ib.Sj(sj2.Wjd.vS(), jcg);
        b.InterfaceC0920b interfaceC0920b = new b.InterfaceC0920b() {
            boolean Sj;

            @Override
            public void Sj(long j11, int i10) {
                Fmk fmk;
                if (this.Sj) {
                    return;
                }
                this.Sj = true;
                TTRewardVideoActivity.this.EjP.removeMessages(300);
                TTRewardVideoActivity.this.dNu();
                TTRewardVideoActivity.this.dx();
                TTRewardVideoActivity.this.sP.f20376ib.Sj(j11, j11);
                TTRewardVideoActivity.this.sP.RiZ.set(true);
                if (TTRewardVideoActivity.this.sP.sP.dx() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTRewardVideoActivity.this.sP;
                    if (sj3.TKC) {
                        sj3.kF.TKC().EjP();
                        sef.sP();
                    }
                }
                if (TTRewardVideoActivity.this.sP.sP.oDQ()) {
                    TTRewardVideoActivity.this.sP.sP.xD(1);
                    TTRewardVideoActivity.this.sP.Wjd.dNu();
                }
                if (TTRewardVideoActivity.this.sP.sP.dx() == 21 && !TTRewardVideoActivity.this.sP.sP.Dq()) {
                    TTRewardVideoActivity.this.sP.sP.sP(true);
                    TTRewardVideoActivity.this.sP.Wjd.dNu();
                }
                TTRewardVideoActivity.this.f20351aa = (int) (System.currentTimeMillis() / 1000);
                if (com.bytedance.sdk.openadsdk.core.model.TzV.EjP(TTRewardVideoActivity.this.sP.sP) || com.bytedance.sdk.openadsdk.core.model.TzV.sP(TTRewardVideoActivity.this.sP.sP) || com.bytedance.sdk.openadsdk.core.model.TzV.HiB(TTRewardVideoActivity.this.sP.sP)) {
                    TTRewardVideoActivity.this.Sj(false, 5);
                    if (!com.bytedance.sdk.openadsdk.core.model.TzV.sP(TTRewardVideoActivity.this.sP.sP) || (fmk = TTRewardVideoActivity.this.sP.f20380xu) == null) {
                        return;
                    }
                    fmk.Sj(0L);
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.model.TzV.Sj(TTRewardVideoActivity.this.sP.sP) && !TTRewardVideoActivity.this.sP.uvD.get()) {
                    TTRewardVideoActivity.this.sP.Sj(true);
                    TTRewardVideoActivity.this.sP.Mts.HiB(true);
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTRewardVideoActivity.this.sP;
                if (!sj4.TKC) {
                    if (sj4.sP.WM()) {
                        TTRewardVideoActivity.this.sP.Mts.TKC();
                        return;
                    }
                    if (!com.bytedance.sdk.openadsdk.core.model.sU.HiB(TTRewardVideoActivity.this.sP.sP)) {
                        TTRewardVideoActivity.this.sP.f20376ib.Sj("skip", true);
                    }
                    TTRewardVideoActivity.this.finish();
                    return;
                }
                if (sj4.sP.WM()) {
                    TTRewardVideoActivity.this.sP.Mts.TKC();
                    return;
                }
                TTRewardVideoActivity.this.Sj(false, 5);
                if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(TTRewardVideoActivity.this.sP.sP)) {
                    return;
                }
                TTRewardVideoActivity.this.sP.f20376ib.Sj("skip", true);
            }

            @Override
            public void sP(long j11, int i10) {
                TTRewardVideoActivity.this.EjP.removeMessages(300);
                com.bytedance.sdk.openadsdk.core.model.TzV tzV = TTRewardVideoActivity.this.sP.Wjd.Zq;
                if (tzV != null) {
                    tzV.TEQ();
                }
                if (TTRewardVideoActivity.this.sP.f20376ib.sP()) {
                    TTRewardVideoActivity.this.uvD();
                    return;
                }
                TTRewardVideoActivity.this.sP.f20376ib.sef();
                TTRewardVideoActivity.this.dx();
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity.sP.TKC) {
                    tTRewardVideoActivity.Sj(false, true, 3);
                } else {
                    tTRewardVideoActivity.finish();
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.dNu dnu = TTRewardVideoActivity.this.sP.f20376ib;
                dnu.Sj(!dnu.LqL() ? 1 : 0, 2);
            }

            @Override
            public void Sj() {
                TTRewardVideoActivity.this.EjP.removeMessages(300);
                TTRewardVideoActivity.this.dNu();
                TTRewardVideoActivity.this.dx();
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity.sP.TKC) {
                    tTRewardVideoActivity.Sj(false, true, 6);
                } else {
                    tTRewardVideoActivity.finish();
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.dNu dnu = TTRewardVideoActivity.this.sP.f20376ib;
                dnu.Sj(!dnu.LqL() ? 1 : 0, 1 ^ (TTRewardVideoActivity.this.sP.f20376ib.LqL() ? 1 : 0));
                TTRewardVideoActivity.this.sP.f20376ib.sef();
            }

            @Override
            public void Sj(long j11, long j12) {
                int iTEQ;
                com.bytedance.sdk.openadsdk.core.model.sU sUVar;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTRewardVideoActivity.this.sP;
                if (!sj3.qRN && sj3.f20376ib.sP()) {
                    TTRewardVideoActivity.this.sP.f20376ib.uvD();
                }
                if (TTRewardVideoActivity.this.sP.TEQ.get()) {
                    return;
                }
                TTRewardVideoActivity.this.EjP.removeMessages(300);
                if (j11 != TTRewardVideoActivity.this.sP.f20376ib.Dq()) {
                    TTRewardVideoActivity.this.dNu();
                }
                TTRewardVideoActivity.this.sP.f20376ib.Sj(j11, j12);
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                long j13 = j11 / 1000;
                double d10 = j13;
                tTRewardVideoActivity.vS = (int) (tTRewardVideoActivity.sP.f20376ib.Yf() - d10);
                TTRewardVideoActivity tTRewardVideoActivity2 = TTRewardVideoActivity.this;
                int i10 = tTRewardVideoActivity2.vS;
                if (i10 >= 0) {
                    tTRewardVideoActivity2.sP.Mts.Sj(String.valueOf(i10), null);
                }
                TTRewardVideoActivity tTRewardVideoActivity3 = TTRewardVideoActivity.this;
                tTRewardVideoActivity3.vS = (int) (tTRewardVideoActivity3.sP.f20376ib.Yf() - d10);
                int i11 = (int) j13;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTRewardVideoActivity.this.sP;
                if (sj4 != null && (sUVar = sj4.sP) != null && sUVar.sP() >= 0) {
                    iTEQ = TTRewardVideoActivity.this.sP.sP.sP();
                } else {
                    iTEQ = TTRewardVideoActivity.this.sP != null ? dNu.EjP().TEQ(String.valueOf(TTRewardVideoActivity.this.sP.vS)) : 30;
                }
                boolean z11 = iTEQ >= 0;
                if ((TTRewardVideoActivity.this.sP.sU.get() || TTRewardVideoActivity.this.sP.Ym.get()) && TTRewardVideoActivity.this.sP.f20376ib.sP()) {
                    TTRewardVideoActivity.this.sP.f20376ib.uvD();
                }
                TTRewardVideoActivity.this.sP.Wjd.EjP(i11);
                TTRewardVideoActivity.this.sP(j11, j12);
                TTRewardVideoActivity tTRewardVideoActivity4 = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity4.vS > 0) {
                    tTRewardVideoActivity4.sP.Mts.EjP(true);
                    if (z11 && i11 >= iTEQ) {
                        TTRewardVideoActivity.this.sP.Sj(true);
                        TTRewardVideoActivity tTRewardVideoActivity5 = TTRewardVideoActivity.this;
                        tTRewardVideoActivity5.sP.Mts.Sj(String.valueOf(tTRewardVideoActivity5.vS), TTAdDislikeToast.getSkipText());
                        TTRewardVideoActivity.this.sP.Mts.HiB(true);
                        return;
                    }
                    TTRewardVideoActivity tTRewardVideoActivity6 = TTRewardVideoActivity.this;
                    tTRewardVideoActivity6.sP.Mts.Sj(String.valueOf(tTRewardVideoActivity6.vS), null);
                }
            }
        };
        this.sP.f20376ib.Sj(interfaceC0920b);
        com.bytedance.sdk.openadsdk.core.model.TzV tzV = this.sP.Wjd.Zq;
        if (tzV != null) {
            tzV.Sj(interfaceC0920b);
        }
        boolean zSj = this.sP.f20376ib.Sj(j10, z10, null, this.TKC);
        if (zSj && !z10) {
            this.Ym = (int) (System.currentTimeMillis() / 1000);
        }
        return zSj;
    }

    public void Sj(final boolean z10, final int i10, final String str, final int i11, final String str2, final int i12) {
        sU.Sj("BVA", "invoke callback onRewardVerify: " + z10 + ", " + i10 + ", " + str + ", " + i11 + ", " + str2 + "; " + this);
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onRewardVerify", z10, i10, str, i11, str2);
            Ym.Sj(this.sP.sP, z10, i12);
        } else {
            JcM.Sj(new Runnable() {
                @Override
                public void run() {
                    com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2 = TTRewardVideoActivity.this.Fmk;
                    if (sj2 != null) {
                        sj2.Sj(z10, i10, str, i11, str2);
                        Ym.Sj(TTRewardVideoActivity.this.sP.sP, z10, i12);
                    }
                }
            });
        }
    }

    @Override
    public void Sj(int i10) {
        if (i10 == 10000) {
            dx();
        }
    }

    protected void Sj(long j10, long j11) {
        if (j11 <= 0) {
            return;
        }
        if (this.f20352ib == -1) {
            this.f20352ib = Math.min(100, this.sP.sP.LqL());
        }
        if (((j10 / 1000.0f) / j11) * 100.0f >= this.f20352ib) {
            dx();
        }
    }

    @Override
    public void Sj(boolean z10) {
        if (z10) {
            dx();
            return;
        }
        if ((1.0d - (((double) this.vS) / this.sP.f20376ib.Yf())) * 100.0d >= dNu.EjP().ley(String.valueOf(this.sP.vS)).vS) {
            dx();
        }
    }
}
