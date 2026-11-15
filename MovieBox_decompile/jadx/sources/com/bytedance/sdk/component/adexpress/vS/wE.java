package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;

public class wE extends LinearLayout {
    private Sj EjP;
    private LinearLayout HiB;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ Jcg;
    private TextView Sj;
    private TextView TKC;
    private com.bytedance.sdk.component.utils.kF sP;
    private com.bytedance.adsdk.sP.vS vS;

    public interface Sj {
    }

    public wE(@NonNull Context context, View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ teq) {
        super(context);
        this.Jcg = teq;
        Sj(context, view);
    }

    public TextView getTopTextView() {
        return this.Sj;
    }

    public LinearLayout getWriggleLayout() {
        return this.HiB;
    }

    public View getWriggleProgressIv() {
        return this.vS;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.sP == null) {
                this.sP = new com.bytedance.sdk.component.utils.kF(getContext().getApplicationContext(), 2);
            }
            new Object() {
            };
            com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ teq = this.Jcg;
            if (teq != null) {
                teq.TKC();
                this.Jcg.HiB();
                this.Jcg.vS();
                this.Jcg.Dq();
            }
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            com.bytedance.adsdk.sP.vS vSVar = this.vS;
            if (vSVar != null) {
                vSVar.HiB();
            }
        } catch (Exception unused) {
        }
    }

    public void setOnShakeViewListener(Sj sj2) {
        this.EjP = sj2;
    }

    public void setShakeText(String str) {
        this.TKC.setText(str);
    }

    private void Sj(Context context, View view) {
        setClipChildren(false);
        addView(view);
        this.HiB = (LinearLayout) findViewById(2097610722);
        this.Sj = (TextView) findViewById(2097610719);
        this.TKC = (TextView) findViewById(2097610718);
        com.bytedance.adsdk.sP.vS vSVar = (com.bytedance.adsdk.sP.vS) findViewById(2097610706);
        this.vS = vSVar;
        vSVar.setAnimation("lottie_json/twist_multi_angle.json");
        this.vS.setImageAssetsFolder("images/");
        this.vS.Sj(true);
    }

    public void Sj() {
        postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    wE.this.vS.Sj();
                } catch (Throwable unused) {
                }
            }
        }, 500L);
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
    }
}
