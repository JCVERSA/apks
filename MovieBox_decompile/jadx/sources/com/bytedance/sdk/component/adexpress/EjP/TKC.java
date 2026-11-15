package com.bytedance.sdk.component.adexpress.EjP;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

public class TKC {
    public static Drawable Sj(Context context, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        if (context == null || jcg == null) {
            return null;
        }
        return Sj(context, (int) Jcg.Sj(context, jcg.dNu()), jcg.uvD(), jcg.LqL());
    }

    public static Drawable Sj(Context context, int i10, int i11, int i12) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (context != null) {
            gradientDrawable.setStroke(i10, i11);
        }
        gradientDrawable.setColor(i12);
        return gradientDrawable;
    }
}
