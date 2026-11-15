package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

public class dNu extends vS {
    private TextView Sj;

    private TextView f20276dx;

    private LinearLayout f20277ib;
    private TextView sP;
    private TextView sU;
    private TextView zR;

    public dNu(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.Sj = new TextView(this.Ym);
        this.sP = new TextView(this.Ym);
        this.sU = new TextView(this.Ym);
        this.f20277ib = new LinearLayout(this.Ym);
        this.f20276dx = new TextView(this.Ym);
        this.zR = new TextView(this.Ym);
        this.Sj.setTag(9);
        this.sP.setTag(10);
        this.sU.setTag(12);
        this.f20277ib.addView(this.sU);
        this.f20277ib.addView(this.zR);
        this.f20277ib.addView(this.sP);
        this.f20277ib.addView(this.f20276dx);
        this.f20277ib.addView(this.Sj);
        addView(this.f20277ib, getWidgetLayoutParams());
    }

    @Override
    protected boolean EjP() {
        this.Sj.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.Sj.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.sP.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.sP.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.sU.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.sU.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        return true;
    }

    @Override
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.Jcg, this.Dq);
    }

    @Override
    public boolean uA() {
        this.sU.setText("Function");
        this.sP.setText("Permission list");
        this.f20276dx.setText(" | ");
        this.zR.setText(" | ");
        this.Sj.setText("Privacy policy");
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg = this.f20273aa;
        if (jcg != null) {
            this.sU.setTextColor(jcg.Jcg());
            this.sU.setTextSize(this.f20273aa.HiB());
            this.sP.setTextColor(this.f20273aa.Jcg());
            this.sP.setTextSize(this.f20273aa.HiB());
            this.f20276dx.setTextColor(this.f20273aa.Jcg());
            this.zR.setTextColor(this.f20273aa.Jcg());
            this.Sj.setTextColor(this.f20273aa.Jcg());
            this.Sj.setTextSize(this.f20273aa.HiB());
            return false;
        }
        this.sU.setTextColor(-1);
        this.sU.setTextSize(12.0f);
        this.sP.setTextColor(-1);
        this.sP.setTextSize(12.0f);
        this.f20276dx.setTextColor(-1);
        this.zR.setTextColor(-1);
        this.Sj.setTextColor(-1);
        this.Sj.setTextSize(12.0f);
        return false;
    }
}
