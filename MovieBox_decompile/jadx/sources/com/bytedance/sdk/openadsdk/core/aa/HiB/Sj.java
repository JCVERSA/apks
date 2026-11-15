package com.bytedance.sdk.openadsdk.core.aa.HiB;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.sP.Sj.Jcg;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.TEQ;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Ym;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.aa;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.uA;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import org.json.JSONObject;
import x5.a;

public class Sj {
    public static final a Sj = new g6.a();

    private static boolean Sj(TKC tkc) {
        return true;
    }

    public static void TKC(TKC tkc, sU sUVar, AdSlot adSlot) {
        if (Sj(tkc)) {
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP((com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj<uA>) new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVar, Mts.TKC(adSlot.getDurationSlotType()), com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(sUVar, (String) null, -1, tkc), new uA(tkc.Fmk(), tkc.TKC())));
        }
    }

    private static void sP(TKC tkc, sU sUVar, AdSlot adSlot) {
        if (Sj(tkc)) {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("load_video_start", new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVar, Mts.TKC(adSlot.getDurationSlotType()), com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(sUVar, (String) null, -1, tkc), new Ym(tkc.Fmk(), tkc.TEQ() ? tkc.uA() : tkc.TKC())));
        }
    }

    public static void Sj(final TKC tkc, final a.InterfaceC0938a interfaceC0938a) {
        sU sUVar;
        AdSlot adSlot;
        if ((tkc.TKC() > 0 || tkc.TEQ()) && tkc.Zq() != -2) {
            if (tkc.Zq() != 1) {
                tkc.EjP(6000);
                tkc.HiB(6000);
                tkc.vS(6000);
                boolean z10 = tkc.HiB("material_meta") != null && (tkc.HiB("material_meta") instanceof sU);
                boolean z11 = tkc.HiB("ad_slot") != null && (tkc.HiB("ad_slot") instanceof AdSlot);
                if (z10 && z11) {
                    sUVar = (sU) tkc.HiB("material_meta");
                    AdSlot adSlot2 = (AdSlot) tkc.HiB("ad_slot");
                    sP(tkc, sUVar, adSlot2);
                    adSlot = adSlot2;
                } else {
                    sUVar = null;
                    adSlot = null;
                }
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                final sU sUVar2 = sUVar;
                final AdSlot adSlot3 = adSlot;
                final a.InterfaceC0938a interfaceC0938a2 = new a.InterfaceC0938a() {
                    @Override
                    public void Sj(TKC tkc2, int i10) {
                        a.InterfaceC0938a interfaceC0938a3 = interfaceC0938a;
                        if (interfaceC0938a3 != null) {
                            interfaceC0938a3.Sj(tkc2, i10);
                        }
                        if (sUVar2 == null || adSlot3 == null) {
                            return;
                        }
                        Sj.sP(tkc, sUVar2, adSlot3, SystemClock.elapsedRealtime() - jElapsedRealtime);
                    }

                    @Override
                    public void sP(TKC tkc2, int i10) {
                        AdSlot adSlot4;
                        a.InterfaceC0938a interfaceC0938a3 = interfaceC0938a;
                        if (interfaceC0938a3 != null) {
                            interfaceC0938a3.Sj(tkc2, i10);
                        }
                        sU sUVar3 = sUVar2;
                        if (sUVar3 != null && (adSlot4 = adSlot3) != null) {
                            Sj.TKC(tkc, sUVar3, adSlot4);
                        }
                        tkc.sef();
                    }

                    @Override
                    public void Sj(TKC tkc2, int i10, String str) {
                        a.InterfaceC0938a interfaceC0938a3 = interfaceC0938a;
                        if (interfaceC0938a3 != null) {
                            interfaceC0938a3.Sj(tkc2, i10, str);
                        }
                        if (sUVar2 == null || adSlot3 == null) {
                            return;
                        }
                        Sj.sP(tkc, sUVar2, adSlot3, SystemClock.elapsedRealtime() - jElapsedRealtime, i10, str);
                    }
                };
                if (!Sj(tkc.Fmk())) {
                    if (interfaceC0938a != null) {
                        interfaceC0938a.Sj(tkc, TTAdConstant.DEEPLINK_FALLBACK_CODE, "unexpected url: " + tkc.Fmk());
                    }
                    sP(tkc, sUVar, adSlot, SystemClock.elapsedRealtime() - jElapsedRealtime, -1, "video url is invalid");
                    return;
                }
                Dq dq2 = new Dq("VideoPreload") {
                    @Override
                    public void run() {
                        try {
                            Sj.Sj.a(dNu.Sj(), tkc, interfaceC0938a2);
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                    }
                };
                if (JcM.vS()) {
                    JcM.sP(dq2);
                    return;
                } else {
                    dq2.run();
                    return;
                }
            }
        }
        if (interfaceC0938a != null) {
            interfaceC0938a.Sj(tkc, 100);
        }
    }

    public static void sP(TKC tkc, sU sUVar, AdSlot adSlot, long j10, int i10, String str) {
        if (Sj(tkc)) {
            String strTKC = Mts.TKC(adSlot.getDurationSlotType());
            JSONObject jSONObjectSj = com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(sUVar, (String) null, -1, tkc);
            TEQ teq = new TEQ();
            teq.Sj(tkc.Fmk());
            teq.Sj(tkc.TKC());
            teq.sP(j10);
            teq.Sj(i10);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            teq.sP(str);
            teq.TKC("");
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj((com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj<TEQ>) new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVar, strTKC, jSONObjectSj, teq));
        }
    }

    public static void sP(TKC tkc, sU sUVar, AdSlot adSlot, long j10) {
        if (Sj(tkc)) {
            String strTKC = Mts.TKC(adSlot.getDurationSlotType());
            JSONObject jSONObjectSj = com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(sUVar, (String) null, -1, tkc);
            aa aaVar = new aa();
            aaVar.Sj(tkc.Fmk());
            aaVar.Sj(tkc.TKC());
            aaVar.sP(j10);
            if (tkc.RiZ() == 1) {
                aaVar.TKC(1L);
            } else {
                aaVar.TKC(0L);
            }
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("load_video_success", new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVar, strTKC, jSONObjectSj, aaVar));
        }
    }

    public static boolean Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.regionMatches(true, 0, "ws:", 0, 3)) {
            str = "http:" + str.substring(3);
        } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
            str = "https:" + str.substring(4);
        }
        return Jcg.TKC(str) != null;
    }

    public static boolean Sj() {
        return com.bytedance.sdk.openadsdk.dx.Sj.Sj("video_lower_support_discard", 0) == 0;
    }
}
