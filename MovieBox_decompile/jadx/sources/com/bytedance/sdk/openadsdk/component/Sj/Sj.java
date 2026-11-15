package com.bytedance.sdk.openadsdk.component.Sj;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sP.TKC;
import com.bytedance.sdk.openadsdk.kF.sP.HiB;
import java.util.HashMap;

public class Sj extends com.bytedance.sdk.openadsdk.core.sP.Sj {
    private final com.bytedance.sdk.openadsdk.component.Dq.Sj Sj;

    public Sj(@NonNull Context context, @NonNull sU sUVar, @NonNull String str, int i10, com.bytedance.sdk.openadsdk.component.Dq.Sj sj2) {
        super(context, sUVar, str, i10);
        this.Sj = sj2;
    }

    @Override
    public void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        if (view.getTag() == "open_ad_click_button_tag") {
            Sj("click_bar");
        } else {
            Sj("click_material");
        }
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(this.Sj.sP()));
        Sj(map);
        super.Sj(view, f10, f11, f12, f13, sparseArray, z10);
        HiB.Sj(((com.bytedance.sdk.openadsdk.core.sP.sP) this).vS, 9);
    }
}
