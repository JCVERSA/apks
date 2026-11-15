package com.mgtv.ssp.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.adview.AdTopBar;
import com.hunantv.imgo.util.t;
import com.mgtv.ssp.R;

public class AdHolder extends BaseHolder {
    public FrameLayout a;
    public FrameLayout b;
    public AdTopBar c;
    int d;

    public AdHolder(@NonNull View view) {
        super(view);
        this.a = (FrameLayout) view.findViewById(R.id.card_p);
        this.b = (FrameLayout) view.findViewById(R.id.ad_container);
        this.c = (AdTopBar) view.findViewById(R.id.ad_top);
        this.d = t.a(BaseApplication.getContext(), 12.0f);
        view.setTag(this);
    }

    public void a(boolean z) {
        FrameLayout frameLayout = this.a;
        if (frameLayout == null) {
            return;
        }
        try {
            if (z) {
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                if (layoutParams == null || !(layoutParams instanceof RecyclerView.LayoutParams)) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) layoutParams)).bottomMargin = 0;
                return;
            }
            if (this.d <= 0) {
                this.d = 40;
            }
            ViewGroup.LayoutParams layoutParams2 = frameLayout.getLayoutParams();
            if (layoutParams2 == null || !(layoutParams2 instanceof RecyclerView.LayoutParams)) {
                return;
            }
            ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) layoutParams2)).bottomMargin = this.d;
        } catch (Throwable unused) {
        }
    }
}
