package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class aa extends EjP {
    public aa(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> Sj() {
        int i10;
        int i11;
        this.TKC.setTag(2097610711, Integer.valueOf(this.sP.EjP()));
        View view = this.TKC;
        if (view == null || !com.bytedance.sdk.component.adexpress.EjP.sP.Sj(view.getContext())) {
            i10 = 0;
            i11 = 1;
        } else {
            i11 = 0;
            i10 = 1;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "shineValue", i10, i11).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        return arrayList;
    }
}
