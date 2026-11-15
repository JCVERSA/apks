package com.bytedance.sdk.openadsdk.core.TEQ.TKC;

import android.R;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import com.bytedance.sdk.component.adexpress.sP.Ym;
import com.bytedance.sdk.component.adexpress.sP.sef;
import com.bytedance.sdk.component.uA.vS;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.Zq;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.Sj.HiB;
import com.bytedance.sdk.openadsdk.utils.TzV;
import com.bytedance.sdk.openadsdk.utils.Wjd;
import org.json.JSONObject;

public class EjP implements Ym, TKC<vS> {
    private Yf EjP;
    private String HiB;
    private int Jcg;
    private Context Sj;
    private vS TKC;
    private sU sP;
    private Sj vS;

    public EjP(Context context, sU sUVar) {
        this.Jcg = 1;
        this.Sj = context;
        this.sP = sUVar;
        this.Jcg = sUVar.liH();
        this.HiB = Zq.sP(this.sP).Sj(this.Jcg == 1);
    }

    private void Dq() {
        Yf yf2 = new Yf(this.Sj);
        this.EjP = yf2;
        yf2.sP(this.TKC).Sj(this.sP).TKC(this.sP.aZ()).EjP(this.sP.mZN()).HiB(this.sP.Lip()).Sj(com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj(0.0f, 0.0f, false, this.sP, null, null)).Sj(this).Sj(this.TKC);
    }

    private void Jcg() {
        this.TKC.setBackgroundColor(0);
        this.TKC.setBackgroundResource(R.color.transparent);
        this.TKC.setVisibility(8);
        Sj(this.TKC);
        if (this.sP != null) {
            this.TKC.setWebViewClient(new HiB(this.Sj, this.EjP, this.sP.aZ(), null, false));
        }
        com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().Sj(this.TKC, this.EjP);
        this.TKC.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.EjP));
    }

    public Yf HiB() {
        return this.EjP;
    }

    @Override
    public void Sj(View view, int i10, com.bytedance.sdk.component.adexpress.TKC tkc) {
    }

    @Override
    public void TKC() {
        Yf yf2 = this.EjP;
        if (yf2 != null) {
            yf2.TKC();
        }
        this.EjP = null;
        try {
            vS vSVar = this.TKC;
            if (vSVar != null) {
                ViewGroup viewGroup = (ViewGroup) vSVar.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.TKC);
                }
                this.TKC.uvD();
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void sP() {
        if (TextUtils.isEmpty(this.HiB)) {
            this.TKC.setVisibility(8);
        } else {
            this.TKC.a_(this.HiB);
        }
    }

    @Override
    public vS EjP() {
        return this.TKC;
    }

    @Override
    public void Sj(sef sefVar) {
    }

    @Override
    public void Sj() {
        this.TKC = new vS(this.Sj);
        Jcg();
        Dq();
        Wjd.Sj(this.TKC, false, this.sP.DKj(), new Wjd.sP() {
            @Override
            public void Sj(View view, boolean z10) {
            }

            @Override
            public void sP() {
                EjP.this.Sj(false);
            }

            @Override
            public void Sj(boolean z10) {
                EjP.this.Sj(z10);
            }

            @Override
            public void Sj() {
                EjP.this.Sj(true);
            }
        }, null);
    }

    @Override
    public void Sj(Sj sj2) {
        this.vS = sj2;
    }

    private void Sj(vS vSVar) {
        if (vSVar == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(this.Sj).Sj(false).Sj(vSVar.getWebView());
            vSVar.setVerticalScrollBarEnabled(false);
            vSVar.setHorizontalScrollBarEnabled(false);
            com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(vSVar);
            vSVar.sef();
            vSVar.setUserAgentString(TzV.Sj(vSVar.getWebView(), BuildConfig.VERSION_CODE));
            vSVar.setMixedContentMode(0);
            vSVar.setJavaScriptEnabled(true);
            vSVar.setJavaScriptCanOpenWindowsAutomatically(true);
            vSVar.setDomStorageEnabled(true);
            vSVar.setDatabaseEnabled(true);
            vSVar.setAllowFileAccess(false);
            vSVar.setSupportZoom(true);
            vSVar.setBuiltInZoomControls(true);
            vSVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            vSVar.setUseWideViewPort(true);
            vSVar.setCacheMode(-1);
        } catch (Exception unused) {
        }
    }

    @Override
    public void Sj(com.bytedance.sdk.openadsdk.core.Dq.sef sefVar) {
        Yf yf2 = this.EjP;
        if (yf2 != null) {
            yf2.Sj(sefVar);
        }
    }

    public void Sj(boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visibleState", !z10 ? 1 : 0);
        } catch (Exception e10) {
            e10.getMessage();
        }
        this.EjP.Sj("visibleStateChange", jSONObject);
    }
}
