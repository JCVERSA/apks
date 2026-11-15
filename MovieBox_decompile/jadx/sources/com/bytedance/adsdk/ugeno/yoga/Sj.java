package com.bytedance.adsdk.ugeno.yoga;

import android.view.View;
import android.view.ViewGroup;

public class Sj extends ViewGroup {
    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Sj) {
            throw null;
        }
        aa aaVarSj = Fmk.Sj();
        Dq.Sj(new Dq.Sj(layoutParams), aaVarSj, view);
        aaVarSj.Sj(view);
        aaVarSj.Sj((uA) new Dq.sP());
        throw null;
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Dq.Sj;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new Dq.Sj(-1, -1);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Dq.Sj(layoutParams);
    }

    public aa getYogaNode() {
        throw null;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        throw new RuntimeException("Attempting to layout a VirtualYogaLayout");
    }
}
