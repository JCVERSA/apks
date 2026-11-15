package com.transsion.effectengine.bounceeffect.adapters;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

public final class z1OoOnew implements z1OoOfor, ViewPager.OnPageChangeListener {
    public final ViewPager z1OoOdo;
    public float z1OoOfor;
    public int z1OoOif;

    public z1OoOnew(ViewPager viewPager) {
        this.z1OoOif = 0;
        this.z1OoOdo = viewPager;
        viewPager.addOnPageChangeListener(this);
        this.z1OoOif = viewPager.getCurrentItem();
        this.z1OoOfor = 0.0f;
    }

    @Override
    public final View getView() {
        return this.z1OoOdo;
    }

    @Override
    public final boolean isInAbsoluteEnd() {
        return this.z1OoOif == this.z1OoOdo.getAdapter().getCount() - 1 && this.z1OoOfor == 0.0f;
    }

    @Override
    public final boolean isInAbsoluteStart() {
        return this.z1OoOif == 0 && this.z1OoOfor == 0.0f;
    }

    @Override
    public final void onPageScrollStateChanged(int i) {
    }

    @Override
    public final void onPageScrolled(int i, float f, int i2) {
        this.z1OoOif = i;
        this.z1OoOfor = f;
    }

    @Override
    public final void onPageSelected(int i) {
    }
}
