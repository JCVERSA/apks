package com.transsion.effectengine.bounceeffect.adapters;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;

public final class z1OoOtry extends ViewPager2.OnPageChangeCallback implements z1OoOfor {
    public final ViewPager2 z1OoOdo;

    public z1OoOtry(ViewPager2 viewPager2) {
        this.z1OoOdo = viewPager2;
        viewPager2.registerOnPageChangeCallback(this);
        viewPager2.getCurrentItem();
    }

    @Override
    public final View getView() {
        return this.z1OoOdo;
    }

    @Override
    public final boolean isInAbsoluteEnd() {
        int orientation = this.z1OoOdo.getOrientation();
        ViewPager2 viewPager2 = this.z1OoOdo;
        return !(orientation == 1 ? viewPager2.canScrollVertically(1) : viewPager2.canScrollHorizontally(1));
    }

    @Override
    public final boolean isInAbsoluteStart() {
        int orientation = this.z1OoOdo.getOrientation();
        ViewPager2 viewPager2 = this.z1OoOdo;
        return !(orientation == 1 ? viewPager2.canScrollVertically(-1) : viewPager2.canScrollHorizontally(-1));
    }
}
