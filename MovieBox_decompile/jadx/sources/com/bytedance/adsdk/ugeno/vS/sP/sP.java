package com.bytedance.adsdk.ugeno.vS.sP;

import android.view.View;
import com.bytedance.adsdk.ugeno.Dq.TKC;

public class sP implements TKC.HiB {
    @Override
    public void Sj(View view, float f10) {
        if (f10 < -1.0f || f10 > 1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        view.setAlpha(1.0f);
        view.setTranslationX(view.getWidth() * (-f10));
        view.setTranslationY(f10 * view.getHeight());
    }
}
