package com.bytedance.sdk.openadsdk.component;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.core.Dq;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.ib;
import com.bytedance.sdk.openadsdk.core.model.ley;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import java.util.concurrent.atomic.AtomicBoolean;

public class Jcg implements LqL.Sj {
    private int Dq;
    private PAGAppOpenAdLoadListener Jcg;
    private final Context Sj;
    private final vS TKC;
    private boolean Ym;
    private final RiZ<com.bytedance.sdk.openadsdk.EjP.Sj> sP;
    private AdSlot vS;
    private final AtomicBoolean EjP = new AtomicBoolean(false);
    private int HiB = 0;
    private volatile int uA = 0;
    private final ley TEQ = new ley();

    public Jcg(Context context) {
        if (context != null) {
            this.Sj = context.getApplicationContext();
        } else {
            this.Sj = dNu.Sj();
        }
        this.sP = dNu.TKC();
        this.TKC = vS.Sj(this.Sj);
    }

    private void sP(@NonNull final AdSlot adSlot) {
        final WMZ wmzSP = WMZ.sP();
        this.uA = 1;
        ib ibVar = new ib();
        ibVar.TEQ = this.TEQ;
        ibVar.EjP = 1;
        ibVar.Dq = 2;
        this.sP.Sj(adSlot, ibVar, 3, new RiZ.Sj() {
            @Override
            public void Sj(int i10, String str) {
                Jcg.this.uA = 3;
                Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(2, 100, i10, str));
            }

            @Override
            public void Sj(final com.bytedance.sdk.openadsdk.core.model.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
                Jcg.this.uA = 2;
                if (sj2 == null || sj2.EjP() == null || sj2.EjP().size() == 0) {
                    Jcg.this.uA = 3;
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(2, 100, 20001, Dq.Sj(20001)));
                    tkc.Sj(-3);
                    com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                    return;
                }
                final sU sUVar = sj2.EjP().get(0);
                long jRiZ = sUVar.RiZ();
                Jcg.this.TEQ.sP = jRiZ;
                boolean zVS = sU.vS(sUVar);
                if (sUVar.yfI()) {
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2));
                    return;
                }
                if (zVS || sUVar.ODI()) {
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2));
                    if (sU.HiB(sUVar)) {
                        Jcg.this.Sj(sUVar, adSlot, false, sj2);
                        return;
                    } else {
                        Jcg.this.Sj(sUVar, false, sj2);
                        return;
                    }
                }
                if (sU.HiB(sUVar)) {
                    int iYm = dNu.EjP().Ym();
                    if (iYm == 1 || iYm == 3) {
                        Jcg.this.TEQ.sP = -1L;
                        Jcg.this.TEQ.Sj(3);
                        Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2));
                        Jcg.this.Sj(sUVar, adSlot, false, sj2);
                        return;
                    }
                    Jcg jcg = Jcg.this;
                    jcg.Sj(sUVar, adSlot, !jcg.TEQ.Sj, sj2);
                } else {
                    if (dNu.EjP().TEQ() == 1) {
                        Jcg.this.TEQ.sP = -1L;
                        Jcg.this.TEQ.Sj(3);
                        Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2));
                        Jcg.this.Sj(sUVar, false, sj2);
                        return;
                    }
                    Jcg jcg2 = Jcg.this;
                    jcg2.Sj(sUVar, !jcg2.TEQ.Sj, sj2);
                }
                if (Jcg.this.TEQ.Sj) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(sUVar, wmzSP.EjP());
                    if (jRiZ == 0) {
                        Jcg.this.TEQ.Sj(2);
                        Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2));
                    } else {
                        sef.sP().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                Jcg.this.TEQ.Sj(2);
                                Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2));
                            }
                        }, jRiZ);
                    }
                }
            }
        });
    }

    public static Jcg Sj(Context context) {
        return new Jcg(context);
    }

    public void Sj(@NonNull AdSlot adSlot, com.bytedance.sdk.openadsdk.common.vS vSVar, int i10) {
        if (vSVar == null) {
            return;
        }
        if (i10 <= 0) {
            i10 = 3500;
        }
        this.vS = adSlot;
        this.TEQ.Sj = !TextUtils.isEmpty(adSlot.getBidAdm());
        if (vSVar instanceof PAGAppOpenAdLoadListener) {
            this.Jcg = (PAGAppOpenAdLoadListener) vSVar;
        }
        this.HiB = Sj(this.vS);
        this.Dq = i10;
        this.TEQ.Sj(WMZ.sP());
        if (this.TEQ.Sj || Fmk.gq().uP(this.vS.getCodeId()) == 0) {
            sP(this.vS);
        }
        if (this.TEQ.Sj) {
            return;
        }
        new LqL(sef.sP().getLooper(), this).sendEmptyMessageDelayed(1, i10);
        Sj();
    }

    private void Sj() {
        JcM.sP(new com.bytedance.sdk.component.Dq.Dq("tryGetAppOpenAdFromCache") {
            @Override
            public void run() {
                int iYm;
                sU sUVarHiB = Jcg.this.TKC.HiB(Jcg.this.HiB);
                if (sUVarHiB == null) {
                    Jcg.this.Sj(false);
                    return;
                }
                if (sUVarHiB.xD() == null) {
                    sUVarHiB.Sj(Jcg.this.vS);
                }
                boolean zHiB = sU.HiB(sUVarHiB);
                if (sUVarHiB.yfI()) {
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 101, sUVarHiB, (com.bytedance.sdk.openadsdk.core.model.Sj) null));
                    return;
                }
                if (!zHiB && dNu.EjP().TEQ() == 1) {
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 101, sUVarHiB, (com.bytedance.sdk.openadsdk.core.model.Sj) null));
                    return;
                }
                if (zHiB && ((iYm = dNu.EjP().Ym()) == 2 || iYm == 3)) {
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 101, sUVarHiB, (com.bytedance.sdk.openadsdk.core.model.Sj) null));
                    return;
                }
                if (!Jcg.this.TKC.sP(Jcg.this.HiB) && !Jcg.this.TKC.EjP(Jcg.this.HiB)) {
                    Jcg.this.Sj(true);
                    return;
                }
                if (Fmk.gq().uP(Jcg.this.vS.getCodeId()) == 0) {
                    Jcg.this.TKC.Jcg(Jcg.this.HiB);
                }
                if (zHiB) {
                    if (!TextUtils.isEmpty(Jcg.this.TKC.Sj(sUVarHiB))) {
                        Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 101, sUVarHiB, (com.bytedance.sdk.openadsdk.core.model.Sj) null));
                        return;
                    } else {
                        Jcg.this.Sj(false);
                        com.bytedance.sdk.openadsdk.component.EjP.Sj.sP(sUVarHiB);
                        return;
                    }
                }
                if (Jcg.this.TKC.sP(sUVarHiB)) {
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 101, sUVarHiB, (com.bytedance.sdk.openadsdk.core.model.Sj) null));
                } else {
                    Jcg.this.Sj(false);
                    com.bytedance.sdk.openadsdk.component.EjP.Sj.sP(sUVarHiB);
                }
            }
        });
    }

    public void Sj(boolean z10) {
        if (z10) {
            this.TKC.Jcg(this.HiB);
        }
        if (Fmk.gq().uP(this.vS.getCodeId()) == 1) {
            sP(this.vS);
        }
    }

    public void Sj(@NonNull final sU sUVar, AdSlot adSlot, final boolean z10, final com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        this.TKC.Sj(sUVar, adSlot, this.TEQ, new vS.TKC() {
            @Override
            public void Sj() {
                if (z10) {
                    Jcg.this.uA = 4;
                    com.bytedance.sdk.openadsdk.component.HiB.sP sPVar = new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2);
                    sPVar.Sj(true);
                    Jcg.this.Sj(sPVar);
                }
            }

            @Override
            public void Sj(int i10, String str) {
                if (z10) {
                    Jcg.this.uA = 5;
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(2, 100, 10003, Dq.Sj(10003)));
                }
            }
        });
    }

    public void Sj(@NonNull final sU sUVar, final boolean z10, final com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        this.TKC.Sj(sUVar, this.TEQ, new vS.sP() {
            @Override
            public void Sj(com.bytedance.sdk.openadsdk.TzV.Sj.sP sPVar) {
                if (z10) {
                    Jcg.this.uA = 4;
                    com.bytedance.sdk.openadsdk.component.HiB.sP sPVar2 = new com.bytedance.sdk.openadsdk.component.HiB.sP(1, 100, sUVar, sj2);
                    sPVar2.Sj(true);
                    Jcg.this.Sj(sPVar2);
                }
            }

            @Override
            public void Sj() {
                if (z10) {
                    Jcg.this.uA = 5;
                    Jcg.this.Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(2, 100, 10003, Dq.Sj(10003)));
                }
            }
        });
    }

    public void Sj(com.bytedance.sdk.openadsdk.component.HiB.sP sPVar) {
        int iTKC = sPVar.TKC();
        int iEjP = sPVar.EjP();
        if (this.EjP.get()) {
            if (iTKC == 1 && iEjP == 100 && sPVar.sP()) {
                vS.Sj(dNu.Sj()).Sj(new com.bytedance.sdk.openadsdk.component.HiB.Sj(this.HiB, sPVar.HiB(), sPVar.Sj()));
                if (this.Ym) {
                    return;
                }
                com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(sPVar.HiB(), 1, this.TEQ);
                return;
            }
            return;
        }
        if (iTKC != 1) {
            if (iTKC == 2 || iTKC == 3) {
                PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener = this.Jcg;
                if (pAGAppOpenAdLoadListener != null) {
                    pAGAppOpenAdLoadListener.onError(sPVar.vS(), sPVar.Jcg());
                }
                this.EjP.set(true);
                if (iTKC == 3) {
                    com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(this.uA, this.Dq);
                    return;
                }
                return;
            }
            return;
        }
        if (this.Jcg != null) {
            this.Jcg.onAdLoaded(new EjP(this.Sj, sPVar.HiB(), iEjP == 101, this.vS));
        }
        this.EjP.set(true);
        if (iEjP == 101) {
            com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(sPVar.HiB(), this.TEQ.Sj().EjP());
            return;
        }
        if (iEjP == 100) {
            com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(sPVar.HiB(), 0, this.TEQ);
            this.Ym = true;
            if (this.TEQ.Sj || sU.vS(sPVar.HiB())) {
                return;
            }
            sU sUVarHiB = sPVar.HiB();
            if (Fmk.gq().uP(this.vS.getCodeId()) == 0 && sUVarHiB != null && !sUVarHiB.ODI()) {
                this.TKC.Sj(this.vS);
            } else {
                this.TKC.Sj(new com.bytedance.sdk.openadsdk.component.HiB.Sj(this.HiB, sPVar.HiB(), sPVar.Sj()));
            }
        }
    }

    public int Sj(@NonNull AdSlot adSlot) {
        try {
            return Integer.parseInt(adSlot.getCodeId());
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override
    public void Sj(Message message) {
        if (message.what != 1 || this.EjP.get()) {
            return;
        }
        Sj(new com.bytedance.sdk.openadsdk.component.HiB.sP(3, 102, 10002, Dq.Sj(10002)));
    }
}
