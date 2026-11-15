package com.youth.banner.listener;

import androidx.annotation.Px;

public interface OnPageChangeListener {
    void onPageScrollStateChanged(int i);

    void onPageScrolled(int i, float f, @Px int i2);

    void onPageSelected(int i);
}
