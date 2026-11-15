package com.mgadplus.viewgroup.convenientbanner.c;

import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;

public class a implements ViewPager.OnPageChangeListener {
    public ArrayList b;
    public int[] c;
    public ViewPager.OnPageChangeListener d;

    public a(ArrayList arrayList, int[] iArr) {
        this.b = arrayList;
        this.c = iArr;
    }

    public void a(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.d = onPageChangeListener;
    }

    @Override
    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    @Override
    public void onPageSelected(int i) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            if (i == i2) {
                ((ImageView) this.b.get(i2)).setImageResource(this.c[1]);
            } else {
                ((ImageView) this.b.get(i2)).setImageResource(this.c[0]);
            }
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }
}
