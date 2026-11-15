package com.facebook.ads.redexgen.core;

import android.os.Build;

public class C05290h extends C06826g {
    public static String[] A00 = {"4mrgyhu5NuMSfoRJ7wvth", "0QrbVGKHuGc2eSGsbm7N10peHve4GVgP", "Meba3O6SWeMBrZzPyfP10SBJe7jX", "3Oa5wanHMWuCrkjHvXNfwyLB0ZtCKHr4", "YOQh7xYBrfW2123ECT3lDkRgUFpenV07", "JuO7BKBrPjkMVs4", "5m", "UWhmaXdvjdchgK72Wd2HML9QO634NCpp"};

    public C05290h(C1635dL c1635dL) {
        super(c1635dL);
        setCarouselLayoutManager(c1635dL);
    }

    public FG getFullscreenCarouselRecyclerViewAdapter() {
        getAdapter();
        if (0 != 0) {
            getAdapter();
            return null;
        }
        if (A00[6].length() != 2) {
            throw new RuntimeException();
        }
        A00[2] = "XAsjP5XwQSgGjSaOGRXjEIyXW47w";
        return null;
    }

    @Override
    public C1815gI getLayoutManager() {
        return (C1815gI) super.getLayoutManager();
    }

    public QT getOnScrollListener() {
        return new OC(this);
    }

    private void setCarouselLayoutManager(C1635dL c1635dL) {
        C1815gI c1815gI = new C1815gI(c1635dL, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            c1815gI.A1T(true);
        }
        super.setLayoutManager(c1815gI);
    }

    @Override
    public void setLayoutManager(QO qo) {
    }
}
