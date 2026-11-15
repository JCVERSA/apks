package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.sP.uA;
import com.bytedance.sdk.openadsdk.component.reward.view.Dq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.bytedance.sdk.openadsdk.utils.sef;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import w5.b;

public class EjP extends Sj {
    int HiB;
    private boolean vS;

    public EjP(sP sPVar, sU sUVar, int i10) {
        super(sPVar, sUVar, i10);
    }

    private void HiB(int i10) {
        this.TKC.Mts.Sj(null, new SpannableStringBuilder(String.format(ib.Sj(dNu.Sj(), "tt_skip_ad_time_text"), Integer.valueOf(i10))));
    }

    @Override
    protected void Jcg() {
        Yf();
        if (this.Dq.EjP()) {
            this.TKC.wE.TEQ();
        }
    }

    @Override
    public void Sj(Bundle bundle) {
    }

    @Override
    public void TKC(Activity activity) {
        super.TKC(activity);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 == null || !sP(sj2.sP) || Sj(this.TKC.sP)) {
            return;
        }
        if (this.vS) {
            this.vS = false;
            ley();
        } else if (this.TKC.JcM.WMZ()) {
            ley();
        }
    }

    @Override
    protected boolean a_() {
        return false;
    }

    @Override
    public String b_() {
        return "fullscreen_interstitial_ad";
    }

    @Override
    public void c_() {
        if (this.TKC.sP.tY() != 100.0f) {
            this.vS = true;
        }
        LD();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override
    public void sP() {
        if (sU.HiB(this.TKC.sP)) {
            this.TKC.Mts.Sj(null, TTAdDislikeToast.getSkipText());
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
            if (sj2.TKC) {
                this.TKC.Mts.Sj(null, TTAdDislikeToast.getSkipText());
            } else {
                sj2.Mts.Sj(null, "X");
            }
        }
        this.TKC.Mts.HiB(true);
    }

    private boolean Sj(sU sUVar) {
        return sUVar == null || sUVar.tY() == 100.0f;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0040  */
    @Override
    public boolean Sj(long j10, boolean z10) {
        Jcg jcg;
        if (this.Dq.EjP()) {
            Dq dq2 = this.TKC.wE;
            if (dq2 != null && dq2.Sj() != null) {
                jcg = this.TKC.wE.Sj().getAdShowTime();
            } else {
                jcg = new Jcg();
            }
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
            if (sPVar == null || !(sPVar instanceof uA)) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
                sj2.f20376ib.Sj(sj2.wE.sP(), jcg);
            } else {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
                if (!sj3.dwU) {
                    sj3.f20376ib.Sj(((uA) sPVar).Yf(), jcg);
                } else {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.TKC;
                    sj4.f20376ib.Sj(sj4.wE.sP(), jcg);
                }
            }
            HashMap map = new HashMap();
            Dq dq3 = this.TKC.wE;
            if (dq3 != null) {
                map.put("dynamic_show_type", Integer.valueOf(dq3.uA()));
                JSONObject jSONObjectSj = this.TKC.wE.Sj((JSONObject) null);
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
            this.TKC.f20376ib.Sj(new b.InterfaceC0920b() {
                boolean Sj;

                @Override
                public void Sj(long j11, int i10) {
                    if (this.Sj) {
                        return;
                    }
                    this.Sj = true;
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    EjP.this.Fmk();
                    EjP.this.TKC.f20376ib.Sj(j11, j11);
                    EjP.this.TKC.wE.sP(true);
                    if (EjP.this.TKC.sP.dx() == 36) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = EjP.this.TKC;
                        if (sj5.TKC) {
                            sj5.kF.TKC().EjP();
                            sef.sP();
                        }
                    }
                    if (EjP.this.TKC.sP.dx() == 21 && !EjP.this.TKC.sP.Dq()) {
                        EjP.this.TKC.sP.sP(true);
                        EjP.this.TKC.Wjd.dNu();
                    }
                    EjP ejP = EjP.this;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = ejP.TKC;
                    if (sj6.gR) {
                        sP.HiB hiBSP = ejP.sP(5);
                        hiBSP.HiB = true;
                        EjP.this.uP().Sj(EjP.this, hiBSP);
                        return;
                    }
                    if (sj6.TKC) {
                        if (sj6.sP.WM()) {
                            if (EjP.this.TKC.wE.uA() == 1) {
                                EjP.this.TKC.Mts.TKC();
                                return;
                            }
                            return;
                        } else {
                            EjP.this.Sj(false, 5);
                            if (sU.HiB(EjP.this.TKC.sP)) {
                                return;
                            }
                            EjP.this.TKC.f20376ib.Sj("skip", true);
                            return;
                        }
                    }
                    if (sU.HiB(sj6.sP)) {
                        EjP.this.ley();
                        return;
                    }
                    Dq dq4 = EjP.this.TKC.wE;
                    if (dq4 == null || dq4.Sj() == null) {
                        return;
                    }
                    EjP.this.TKC.wE.Sj().setTime("0", 0, 0, false);
                    if (EjP.this.TKC.wE.Dq()) {
                        EjP.this.TKC.Mts.Sj("0", "X");
                        EjP.this.TKC.Mts.HiB(true);
                        EjP.this.TKC.Mts.TKC();
                    }
                }

                @Override
                public void sP(long j11, int i10) {
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    TzV tzV = EjP.this.TKC.Wjd.Zq;
                    if (tzV != null) {
                        tzV.TEQ();
                    }
                    if (EjP.this.TKC.f20376ib.sP()) {
                        EjP.this.HiB();
                        return;
                    }
                    EjP.this.TKC.f20376ib.sef();
                    EjP.this.TKC.wE.Sj(true);
                    sP sPVarUP = EjP.this.uP();
                    EjP ejP = EjP.this;
                    sPVarUP.Sj(ejP, ejP.sP(3));
                }

                @Override
                public void Sj() {
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    EjP.this.Fmk();
                    sP sPVarUP = EjP.this.uP();
                    EjP ejP = EjP.this;
                    sPVarUP.Sj(ejP, ejP.sP(6));
                }

                @Override
                public void Sj(long j11, long j12) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = EjP.this.TKC;
                    if (!sj5.qRN && sj5.f20376ib.sP()) {
                        EjP.this.TKC.f20376ib.uvD();
                    }
                    if (EjP.this.TKC.TEQ.get()) {
                        return;
                    }
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    if (j11 != EjP.this.TKC.f20376ib.Dq()) {
                        EjP.this.Fmk();
                    }
                    if (EjP.this.TKC.f20376ib.sP()) {
                        EjP.this.TKC.f20376ib.Sj(j11, j12);
                        EjP ejP = EjP.this;
                        long j13 = j11 / 1000;
                        ejP.HiB = (int) (ejP.TKC.f20376ib.Yf() - j13);
                        int i10 = (int) j13;
                        if ((EjP.this.TKC.sU.get() || EjP.this.TKC.Ym.get()) && EjP.this.TKC.f20376ib.sP()) {
                            EjP.this.TKC.f20376ib.uvD();
                        }
                        Dq dq4 = EjP.this.TKC.wE;
                        if (dq4 != null && dq4.Sj() != null) {
                            EjP.this.TKC.wE.Sj().setTime(String.valueOf(EjP.this.HiB), i10, 0, false);
                        }
                        EjP.this.Sj((j11 * 1.0f) / j12);
                        if (EjP.this.TKC.wE.Dq() || EjP.this.TKC.sP.Fqk()) {
                            EjP.this.TKC(i10);
                            EjP ejP2 = EjP.this;
                            if (ejP2.HiB >= 0) {
                                ejP2.TKC.Mts.EjP(true);
                                EjP ejP3 = EjP.this;
                                ejP3.TKC.Mts.Sj(String.valueOf(ejP3.HiB), null);
                            }
                        }
                    }
                }
            });
            return this.TKC.f20376ib.Sj(j10, z10, map, this.sP);
        }
        Jcg jcg2 = new Jcg();
        jcg2.Sj(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar2 = this.sP;
        if (sPVar2 != null && (sPVar2 instanceof uA)) {
            this.TKC.f20376ib.Sj(((uA) sPVar2).Yf(), jcg2);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.TKC;
            sj5.f20376ib.Sj(sj5.Wjd.vS(), jcg2);
        }
        b.InterfaceC0920b interfaceC0920b = new b.InterfaceC0920b() {
            boolean Sj;

            @Override
            public void Sj(long j11, int i10) {
                Fmk fmk;
                if (this.Sj) {
                    return;
                }
                this.Sj = true;
                ((Sj) EjP.this).Sj.removeMessages(300);
                EjP.this.Fmk();
                EjP.this.TKC.f20376ib.Sj(j11, j11);
                EjP.this.TKC.RiZ.set(true);
                if (EjP.this.TKC.sP.oDQ()) {
                    EjP.this.TKC.sP.xD(1);
                    EjP.this.TKC.Wjd.dNu();
                }
                if (EjP.this.TKC.sP.dx() == 21 && !EjP.this.TKC.sP.Dq()) {
                    EjP.this.TKC.sP.sP(true);
                    EjP.this.TKC.Wjd.dNu();
                }
                EjP ejP = EjP.this;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = ejP.TKC;
                if (sj6.gR) {
                    sP.HiB hiBSP = ejP.sP(5);
                    hiBSP.HiB = true;
                    EjP.this.uP().Sj(EjP.this, hiBSP);
                    return;
                }
                if (!sj6.TKC) {
                    if (sj6.sP.WM()) {
                        EjP.this.TKC.Mts.TKC();
                        return;
                    }
                    if (!sU.HiB(EjP.this.TKC.sP)) {
                        EjP.this.TKC.f20376ib.Sj("skip", true);
                    }
                    EjP.this.ley();
                    return;
                }
                if (sj6.sP.WM()) {
                    EjP.this.TKC.Mts.TKC();
                    return;
                }
                EjP.this.Sj(false, 5);
                if (TzV.sP(EjP.this.TKC.sP) && (fmk = EjP.this.TKC.f20380xu) != null) {
                    fmk.Sj(0L);
                }
                if (sU.HiB(EjP.this.TKC.sP)) {
                    return;
                }
                EjP.this.TKC.f20376ib.Sj("skip", true);
            }

            @Override
            public void sP(long j11, int i10) {
                ((Sj) EjP.this).Sj.removeMessages(300);
                TzV tzV = EjP.this.TKC.Wjd.Zq;
                if (tzV != null) {
                    tzV.TEQ();
                }
                if (EjP.this.TKC.f20376ib.sP()) {
                    EjP.this.HiB();
                    return;
                }
                EjP.this.TKC.f20376ib.sef();
                sP sPVarUP = EjP.this.uP();
                EjP ejP = EjP.this;
                sPVarUP.Sj(ejP, ejP.sP(3));
            }

            @Override
            public void Sj() {
                ((Sj) EjP.this).Sj.removeMessages(300);
                EjP.this.Fmk();
                sP sPVarUP = EjP.this.uP();
                EjP ejP = EjP.this;
                sPVarUP.Sj(ejP, ejP.sP(6));
            }

            @Override
            public void Sj(long j11, long j12) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = EjP.this.TKC;
                if (!sj6.qRN && sj6.f20376ib.sP()) {
                    EjP.this.TKC.f20376ib.uvD();
                }
                if (EjP.this.TKC.TEQ.get()) {
                    return;
                }
                ((Sj) EjP.this).Sj.removeMessages(300);
                if (j11 != EjP.this.TKC.f20376ib.Dq()) {
                    EjP.this.Fmk();
                }
                EjP.this.TKC.f20376ib.Sj(j11, j12);
                EjP ejP = EjP.this;
                long j13 = j11 / 1000;
                ejP.HiB = (int) (ejP.TKC.f20376ib.Yf() - j13);
                int i10 = (int) j13;
                if ((EjP.this.TKC.sU.get() || EjP.this.TKC.Ym.get()) && EjP.this.TKC.f20376ib.sP()) {
                    EjP.this.TKC.f20376ib.uvD();
                }
                EjP.this.TKC(i10);
                EjP.this.Sj((j11 * 1.0f) / j12);
                EjP ejP2 = EjP.this;
                int i11 = ejP2.HiB;
                if (i11 >= 0) {
                    ejP2.TKC.Mts.Sj(String.valueOf(i11), null);
                }
            }
        };
        this.TKC.f20376ib.Sj(interfaceC0920b);
        TzV tzV = this.TKC.Wjd.Zq;
        if (tzV != null) {
            tzV.Sj(interfaceC0920b);
        }
        return this.TKC.f20376ib.Sj(j10, z10, null, this.sP);
    }

    private boolean sP(sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        return dNu.EjP().sU(String.valueOf(this.TKC.vS));
    }

    @Override
    protected void TKC() {
        final View viewTEQ = this.TKC.Wjd.TEQ();
        if (viewTEQ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() {
                /* JADX WARN: Code duplicated, block: B:28:0x00d4  */
                @Override
                public void onClick(View view) {
                    boolean zHiB;
                    if (EjP.this.TKC.JcM.wE() && EjP.this.TKC.TEQ.get()) {
                        boolean zFmk = EjP.this.TKC.WMZ.Fmk();
                        EjP.this.TKC.JcM.vS(zFmk);
                        EjP.this.TKC.Wjd.HiB(8);
                        EjP.this.TKC.HpB.sendEmptyMessageDelayed(600, 5000L);
                        if (!sU.TKC(EjP.this.TKC.sP)) {
                            return;
                        }
                        if (sU.TKC(EjP.this.TKC.sP) && zFmk) {
                            return;
                        }
                    }
                    if (!EjP.this.TKC.sP.Snq()) {
                        zHiB = false;
                    } else if (EjP.this.TKC.sP.Ph()) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = EjP.this.TKC;
                        if (sj2.FPG != null) {
                            sj2.sP.xD(2);
                            zHiB = EjP.this.TKC.FPG.HiB();
                        } else {
                            zHiB = false;
                        }
                    } else if (EjP.this.TKC.sP.AE() != 0 || EjP.this.TKC.JcM.dNu()) {
                        zHiB = false;
                    } else {
                        EjP.this.TKC.sP.xD(11);
                        if (EjP.this.TKC.JcM.EjP()) {
                            EjP.this.TKC.sP.xD(12);
                        }
                        try {
                            EjP.this.TKC.Wjd.dNu();
                            zHiB = true;
                        } catch (Exception unused) {
                            zHiB = false;
                        }
                    }
                    if (zHiB) {
                        return;
                    }
                    EjP.this.TKC.JcM.ley();
                    EjP.this.TKC.WMZ.Ym();
                    EjP.this.TKC.LqL.vS();
                    EjP.this.ley();
                }
            };
            viewTEQ.setOnClickListener(onClickListener);
            viewTEQ.setTag(viewTEQ.getId(), onClickListener);
        }
        this.TKC.Mts.Sj(new com.bytedance.sdk.openadsdk.component.reward.top.sP() {
            @Override
            public void Sj(View view) {
                if (uP.Dq(EjP.this.TKC.sP) && (uP.TzV(EjP.this.TKC.sP) || EjP.this.TKC.TEQ.get())) {
                    if (EjP.this.TKC.uP.Sj()) {
                        EjP.this.TKC.uP.Sj(5);
                        return;
                    } else {
                        EjP.this.TKC.JcM.Dq();
                        return;
                    }
                }
                if (uP.TzV(EjP.this.TKC.sP) || (TzV.Sj(EjP.this.TKC.sP) && !EjP.this.TKC.uvD.get())) {
                    if (!uP.Dq(EjP.this.TKC.sP) && EjP.this.TKC.uP.Sj()) {
                        EjP.this.TKC.uP.Sj(4);
                    }
                    EjP.this.ley();
                    return;
                }
                if (EjP.this.TKC.sP.yr()) {
                    if (EjP.this.TKC.Wjd.Ym() != null) {
                        EjP.this.TKC.sP.xD(2);
                        EjP.this.TKC.Wjd.dNu();
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = EjP.this.TKC;
                if (!sj2.TKC && sj2.sP.Snq() && !EjP.this.TKC.sP.Ph()) {
                    EjP.this.TKC.sP.xD(13);
                    try {
                        EjP.this.TKC.Wjd.dNu();
                        return;
                    } catch (Exception unused) {
                    }
                }
                Zq.Sj sj3 = new Zq.Sj();
                sj3.Sj(EjP.this.TKC.f20376ib.Jcg());
                sj3.TKC(EjP.this.TKC.f20376ib.sU());
                sj3.sP(EjP.this.TKC.f20376ib.Ym());
                sj3.TKC(3);
                sj3.EjP(EjP.this.TKC.f20376ib.RiZ());
                com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(EjP.this.TKC.f20376ib.TKC(), sj3, EjP.this.TKC.f20376ib.Sj());
                com.bytedance.sdk.openadsdk.core.ib.TKC(EjP.this.TKC.vS);
                EjP.this.TKC.f20376ib.Sj("skip", false);
                EjP.this.TKC.Mts.EjP(false);
                EjP ejP = EjP.this;
                if (ejP.TKC.TKC) {
                    ejP.Sj(true, 4);
                } else {
                    ejP.ley();
                }
                sU sUVar = EjP.this.TKC.sP;
                if (sUVar != null && sUVar.GMp() != null) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = EjP.this.TKC;
                    if (sj4.f20376ib != null) {
                        sj4.sP.GMp().Sj().vS(EjP.this.TKC.f20376ib.Jcg());
                        EjP.this.TKC.sP.GMp().Sj().HiB(EjP.this.TKC.f20376ib.Jcg());
                    }
                }
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(EjP.this.TKC.sP, 5);
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
                EjP ejP = EjP.this;
                ejP.TKC.LD.Sj(ejP.sP);
            }

            @Override
            public void Sj(View view, String str) {
                EjP ejP = EjP.this;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = ejP.TKC;
                sj2.ndK = !sj2.ndK;
                com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = ejP.sP;
                if (sPVar != null && sPVar.EjP() != null) {
                    EjP.this.sP.EjP().Sj(EjP.this.TKC.ndK);
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = EjP.this.TKC;
                sj3.f20376ib.Sj(sj3.ndK, str);
                if (!uP.RiZ(EjP.this.TKC.sP) || EjP.this.TKC.TEQ.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = EjP.this.TKC;
                    sj4.JcM.HiB(sj4.ndK);
                    sU sUVar = EjP.this.TKC.sP;
                    if (sUVar == null || sUVar.GMp() == null || EjP.this.TKC.sP.GMp().Sj() == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = EjP.this.TKC;
                    if (sj5.f20376ib != null) {
                        if (sj5.ndK) {
                            sj5.sP.GMp().Sj().Dq(EjP.this.TKC.f20376ib.Jcg());
                        } else {
                            sj5.sP.GMp().Sj().uA(EjP.this.TKC.f20376ib.Jcg());
                        }
                    }
                }
            }
        });
    }

    public void TKC(int i10) {
        int iRiZ;
        sU sUVar;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 != null && (sUVar = sj2.sP) != null) {
            iRiZ = sUVar.Sj();
        } else {
            iRiZ = sj2 != null ? dNu.EjP().RiZ(String.valueOf(this.TKC.vS)) : 5;
        }
        if (!dNu.EjP().vS(String.valueOf(this.TKC.vS)) || (!sU.HiB(this.TKC.sP) && !this.TKC.TKC)) {
            if (i10 >= iRiZ) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
                if (!sj3.gY) {
                    sj3.Sj(true);
                }
                sP();
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.TKC;
        if (!sj4.gY) {
            sj4.Sj(true);
        }
        if (i10 <= iRiZ) {
            HiB(iRiZ - i10);
            this.TKC.Mts.HiB(false);
        } else {
            sP();
        }
    }
}
