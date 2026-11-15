package com.bytedance.sdk.openadsdk.Sj.sP.Sj;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.model.sef;

public class Sj extends com.bytedance.sdk.openadsdk.core.Dq.Sj {
    private com.bytedance.sdk.openadsdk.Sj.sP.Sj Fmk;
    private RiZ Sj;

    public Sj(@NonNull Context context) {
        super(context);
    }

    @Override
    protected void Sj(View view, int i10, sef sefVar) {
        RiZ riZ = this.Sj;
        if (riZ != null) {
            riZ.Sj(view, i10, sefVar);
        }
    }

    public void setExtraFuncationHelper(com.bytedance.sdk.openadsdk.Sj.sP.Sj sj2) {
        this.Fmk = sj2;
    }

    public void Sj(RiZ riZ) {
        this.Sj = riZ;
        riZ.addView(this, new FrameLayout.LayoutParams(-1, -1));
    }
}
