package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import java.util.List;

public class CustomFlexboxLayoutManager extends FlexboxLayoutManager {
    public int F;

    public CustomFlexboxLayoutManager(Context context) {
        super(context);
        this.F = 0;
    }

    public void a0(int i) {
        this.F = i;
    }

    @Override
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof RecyclerView.LayoutParams) {
            return new FlexboxLayoutManager.LayoutParams((RecyclerView.LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new FlexboxLayoutManager.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new FlexboxLayoutManager.LayoutParams(layoutParams);
    }

    @Override
    public List getFlexLinesInternal() {
        List flexLinesInternal = super.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        int i = this.F;
        if (i > 0 && size > i) {
            flexLinesInternal.subList(i, size).clear();
        }
        return flexLinesInternal;
    }

    public CustomFlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.F = 0;
    }
}
