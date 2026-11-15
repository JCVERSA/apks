package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

public class NavigationRailMenuView extends NavigationBarMenuView {
    private int H;
    private final FrameLayout.LayoutParams I;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        this.H = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.I = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        setItemActiveIndicatorResizeable(true);
    }

    private int n(int i10, int i11, int i12) {
        int iMax = i11 / Math.max(1, i12);
        int size = this.H;
        if (size == -1) {
            size = View.MeasureSpec.getSize(i10);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, iMax), 0);
    }

    private int o(View view, int i10, int i11) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        view.measure(i10, i11);
        return view.getMeasuredHeight();
    }

    private int p(int i10, int i11, int i12, View view) {
        int iN = view == null ? n(i10, i11, i12) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int iO = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt != view) {
                iO += o(childAt, i10, iN);
            }
        }
        return iO;
    }

    private int q(int i10, int i11, int i12) {
        int iO;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            iO = o(childAt, i10, n(i10, i11, i12));
            i11 -= iO;
            i12--;
        } else {
            iO = 0;
        }
        return iO + p(i10, i11, i12, childAt);
    }

    @Override
    protected NavigationBarItemView d(Context context) {
        return new a(context);
    }

    public int getItemMinimumHeight() {
        return this.H;
    }

    int getMenuGravity() {
        return this.I.gravity;
    }

    boolean m() {
        return (this.I.gravity & 112) == 48;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i15;
                childAt.layout(0, i15, i14, measuredHeight);
                i15 = measuredHeight;
            }
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int size2 = getMenu().G().size();
        setMeasuredDimension(View.MeasureSpec.getSize(i10), View.resolveSizeAndState((size2 <= 1 || !f(getLabelVisibilityMode(), size2)) ? p(i10, size, size2, null) : q(i10, size, size2), i11, 0));
    }

    public void setItemMinimumHeight(int i10) {
        if (this.H != i10) {
            this.H = i10;
            requestLayout();
        }
    }

    void setMenuGravity(int i10) {
        FrameLayout.LayoutParams layoutParams = this.I;
        if (layoutParams.gravity != i10) {
            layoutParams.gravity = i10;
            setLayoutParams(layoutParams);
        }
    }
}
