package com.mgmi.ViewGroup.convenientbanner.c;

import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;

public class a implements ViewPager.OnPageChangeListener {
    private ArrayList<ImageView> a;
    private int[] b;
    private ViewPager.OnPageChangeListener c;

    public a(ArrayList<ImageView> arrayList, int[] iArr) {
        this.a = arrayList;
        this.b = iArr;
    }

    public void a(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.c = onPageChangeListener;
    }

    @Override
    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.c;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.c;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    @Override
    public void onPageSelected(int i) {
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            this.a.get(i).setImageResource(this.b[1]);
            if (i != i2) {
                this.a.get(i2).setImageResource(this.b[0]);
            }
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.c;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }
}
