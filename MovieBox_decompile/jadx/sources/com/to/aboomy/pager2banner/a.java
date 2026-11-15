package com.to.aboomy.pager2banner;

import android.view.View;
import android.widget.RelativeLayout;

public interface a {
    RelativeLayout.LayoutParams getParams();

    View getView();

    void initIndicatorCount(int i10, int i11);

    void onPageScrollStateChanged(int i10);

    void onPageScrolled(int i10, float f10, int i11);

    void onPageSelected(int i10);
}
