package com.bytedance.sdk.component.adexpress.dynamic.Sj;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.TKC;
import com.bytedance.sdk.component.adexpress.dynamic.EjP.vS;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Mts;
import com.bytedance.sdk.component.adexpress.sP.Dq;
import com.bytedance.sdk.component.adexpress.sP.EjP;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.bytedance.sdk.component.adexpress.sP.Jcg;
import com.bytedance.sdk.component.adexpress.sP.Ym;
import com.bytedance.sdk.component.adexpress.sP.sef;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.utils.uA;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class Sj implements EjP<DynamicRootView>, Ym {
    private AtomicBoolean Dq = new AtomicBoolean(false);
    private Jcg EjP;
    private Dq HiB;
    private ScheduledFuture<?> Jcg;
    private DynamicRootView Sj;
    private Context TKC;
    private com.bytedance.sdk.component.adexpress.dynamic.HiB.Dq sP;
    private Fmk vS;

    private class RunnableC0199Sj implements Runnable {
        private int sP;

        public RunnableC0199Sj(int i10) {
            this.sP = i10;
        }

        @Override
        public void run() {
            if (this.sP == 2) {
                Sj.this.Sj.callBackRenderFail(Sj.this.sP instanceof com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg ? 127 : Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, null);
            }
        }
    }

    public Sj(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.dynamic.HiB.Dq dq2, Fmk fmk, com.bytedance.sdk.component.adexpress.dynamic.vS.Sj sj2) {
        this.TKC = context;
        DynamicRootView dynamicRootView = new DynamicRootView(context, themeStatusBroadcastReceiver, z10, fmk, sj2);
        this.Sj = dynamicRootView;
        this.sP = dq2;
        this.vS = fmk;
        dynamicRootView.setRenderListener(this);
        this.vS = fmk;
    }

    public void Dq() {
        try {
            ScheduledFuture<?> scheduledFuture = this.Jcg;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.Jcg.cancel(false);
            this.Jcg = null;
        } catch (Throwable unused) {
        }
    }

    private boolean Jcg() {
        DynamicRootView dynamicRootView = this.Sj;
        return (dynamicRootView == null || dynamicRootView.getChildCount() == 0) ? false : true;
    }

    public void vS() {
        this.vS.HiB().sP(TKC());
        JSONObject jSONObjectTKC = this.vS.TKC();
        if (com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(jSONObjectTKC)) {
            this.sP.Sj(new com.bytedance.sdk.component.adexpress.dynamic.vS.sP() {
                @Override
                public void Sj(final com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
                    Sj.this.Dq();
                    Sj.this.vS.HiB().TKC(Sj.this.TKC());
                    Sj.this.Sj(dq2);
                    Sj.this.sP(dq2);
                    if (Looper.getMainLooper() == Looper.myLooper()) {
                        Sj.this.TKC(dq2);
                    } else {
                        new Handler(Looper.getMainLooper()).post(new Runnable() {
                            @Override
                            public void run() {
                                Sj.this.TKC(dq2);
                            }
                        });
                    }
                    if (Sj.this.Sj == null || dq2 == null) {
                        return;
                    }
                    Sj.this.Sj.setBgColor(dq2.Sj());
                    Sj.this.Sj.setBgMaterialCenterCalcColor(dq2.sP());
                }
            });
            this.sP.Sj(this.vS);
            return;
        }
        int i10 = this.sP instanceof com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg ? Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE : 113;
        DynamicRootView dynamicRootView = this.Sj;
        StringBuilder sb2 = new StringBuilder("data null is ");
        sb2.append(jSONObjectTKC == null);
        dynamicRootView.callBackRenderFail(i10, sb2.toString());
    }

    public DynamicRootView EjP() {
        return this.Sj;
    }

    public void sP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        float fJcg;
        float fVS;
        List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm;
        if (dq2 == null) {
            return;
        }
        List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm2 = dq2.Ym();
        if (listYm2 == null || listYm2.size() <= 0) {
            fJcg = 0.0f;
        } else {
            fJcg = 0.0f;
            for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 : listYm2) {
                if (dq3.Jcg() > dq2.Jcg() - dq3.uA() || (listYm = dq3.Ym()) == null || listYm.size() <= 0) {
                    fVS = 0.0f;
                } else {
                    fVS = 0.0f;
                    for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq4 : listYm) {
                        if (dq4.TEQ().sP().equals("logo-union")) {
                            fVS = dq4.TEQ().vS();
                            fJcg = (((-fVS) + dq2.Jcg()) - dq3.Jcg()) + dq3.TEQ().HiB().oWa();
                        }
                    }
                }
                sP(dq3);
                if (fVS <= -15.0f) {
                    dq3.vS(dq3.uA() - fVS);
                    dq3.EjP(dq3.Jcg() + fVS);
                    for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq5 : dq3.Ym()) {
                        dq5.EjP(dq5.Jcg() - fVS);
                    }
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dqAa = dq2.aa();
        if (dqAa == null) {
            return;
        }
        float fVS2 = dq2.vS() - dqAa.vS();
        float fJcg2 = dq2.Jcg() - dqAa.Jcg();
        dq2.TKC(fVS2);
        dq2.EjP(fJcg2);
        if (fJcg > 0.0f) {
            dq2.EjP(dq2.Jcg() - fJcg);
            dq2.vS(dq2.uA() + fJcg);
            for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq6 : dq2.Ym()) {
                dq6.EjP(dq6.Jcg() + fJcg);
            }
        }
    }

    @Override
    public void Sj(Jcg jcg) {
        this.EjP = jcg;
        int iVS = this.vS.vS();
        if (iVS < 0) {
            this.Sj.callBackRenderFail(this.sP instanceof com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg ? 127 : Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, "time is ".concat(String.valueOf(iVS)));
            return;
        }
        this.Jcg = com.bytedance.sdk.component.adexpress.EjP.EjP.Sj(new RunnableC0199Sj(2), iVS, TimeUnit.MILLISECONDS);
        if (Looper.getMainLooper() == Looper.myLooper() && this.vS.uA() <= 0) {
            vS();
        } else {
            uA.sP().postDelayed(new Runnable() {
                @Override
                public void run() {
                    Sj.this.vS();
                }
            }, this.vS.uA());
        }
    }

    @Override
    public int TKC() {
        return this.sP instanceof com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg ? 3 : 2;
    }

    public void TKC(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        if (dq2 == null) {
            this.Sj.callBackRenderFail(this.sP instanceof com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg ? Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE : 113, "layoutUnit is null");
            return;
        }
        this.vS.HiB().EjP(TKC());
        try {
            this.Sj.render(dq2, TKC());
        } catch (Exception e10) {
            int i10 = this.sP instanceof com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg ? 128 : Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE;
            this.Sj.callBackRenderFail(i10, "exception is " + e10.getMessage());
        }
    }

    public void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm;
        if (dq2 == null || (listYm = dq2.Ym()) == null || listYm.size() <= 0) {
            return;
        }
        Collections.sort(listYm, new Comparator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>() {
            @Override
            public int compare(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq4) {
                vS vSVarHiB = dq3.TEQ().HiB();
                vS vSVarHiB2 = dq4.TEQ().HiB();
                if (vSVarHiB == null || vSVarHiB2 == null) {
                    return 0;
                }
                return vSVarHiB.eMB() >= vSVarHiB2.eMB() ? 1 : -1;
            }
        });
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 : listYm) {
            if (dq3 != null) {
                Sj(dq3);
            }
        }
    }

    @Override
    public DynamicRootView HiB() {
        return EjP();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Sj(View view) {
        if (view == 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            int i10 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i10 >= viewGroup.getChildCount()) {
                    break;
                }
                Sj(viewGroup.getChildAt(i10));
                i10++;
            }
        }
        if (view instanceof Mts) {
            ((Mts) view).sP();
        }
    }

    public void Sj(Dq dq2) {
        this.HiB = dq2;
    }

    @Override
    public void Sj(sef sefVar) {
        if (this.Dq.get()) {
            return;
        }
        this.Dq.set(true);
        if (sefVar.TKC() && Jcg()) {
            this.Sj.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.EjP.Sj(HiB(), sefVar);
            return;
        }
        this.EjP.Sj(sefVar.Ym(), sefVar.TEQ());
    }

    public void sP() {
        Sj(HiB());
    }

    @Override
    public void Sj(View view, int i10, TKC tkc) {
        Dq dq2 = this.HiB;
        if (dq2 != null) {
            dq2.Sj(view, i10, tkc);
        }
    }
}
