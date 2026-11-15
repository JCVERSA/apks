package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class Ym extends View {
    private final int Sj;

    public Ym(Context context) {
        this(context, Color.parseColor("#25000000"));
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        setMeasuredDimension(getMeasuredWidth(), this.Sj);
    }

    public Ym(Context context, int i10) {
        super(context);
        setBackgroundColor(i10);
        this.Sj = FPG.sP(getContext(), 0.66f);
    }
}
