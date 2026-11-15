package com.to.aboomy.pager2banner;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;

public class b implements ViewPager2.PageTransformer {

    private float f40746a = 0.85f;

    @Override
    public void transformPage(View view, float f10) {
        int width = view.getWidth();
        view.setPivotY(view.getHeight() >> 1);
        view.setPivotX(width >> 1);
        if (f10 < -1.0f) {
            view.setScaleX(this.f40746a);
            view.setScaleY(this.f40746a);
            view.setPivotX(width);
            return;
        }
        if (f10 > 1.0f) {
            view.setPivotX(0.0f);
            view.setScaleX(this.f40746a);
            view.setScaleY(this.f40746a);
        } else {
            if (f10 < 0.0f) {
                float f11 = this.f40746a;
                float f12 = ((f10 + 1.0f) * (1.0f - f11)) + f11;
                view.setScaleX(f12);
                view.setScaleY(f12);
                view.setPivotX(width * (((-f10) * 0.5f) + 0.5f));
                return;
            }
            float f13 = 1.0f - f10;
            float f14 = this.f40746a;
            float f15 = ((1.0f - f14) * f13) + f14;
            view.setScaleX(f15);
            view.setScaleY(f15);
            view.setPivotX(width * f13 * 0.5f);
        }
    }
}
