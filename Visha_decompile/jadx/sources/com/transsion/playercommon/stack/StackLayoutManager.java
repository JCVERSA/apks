package com.transsion.playercommon.stack;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.utils.a;
import defpackage.c39;
import defpackage.ro1;

public class StackLayoutManager extends RecyclerView.LayoutManager {
    public Context e;
    public int f;
    public int g;

    @Override
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        byte b;
        char c;
        detachAndScrapAttachedViews(recycler);
        int itemCount = getItemCount();
        int i = 0;
        if (itemCount > 3) {
            for (int i2 = 3; i2 >= 0; i2--) {
                View viewForPosition = recycler.getViewForPosition(i2);
                addView(viewForPosition);
                measureChildWithMargins(viewForPosition, 0, 0);
                int width = (getWidth() - getDecoratedMeasuredWidth(viewForPosition)) / 2;
                int height = (getHeight() - getDecoratedMeasuredHeight(viewForPosition)) / 2;
                layoutDecoratedWithMargins(viewForPosition, width, height, width + getDecoratedMeasuredWidth(viewForPosition), height + getDecoratedMeasuredHeight(viewForPosition));
                if (i2 == 2) {
                    viewForPosition.setRotation(-1.0f);
                } else if (i2 == 1) {
                    viewForPosition.setRotation(0.0f);
                    viewForPosition.setTranslationX(c39.a(4.0f));
                    viewForPosition.setTranslationY(-c39.a(4.0f));
                } else if (i2 == 0) {
                    viewForPosition.setRotation(-5.0f);
                    viewForPosition.setTranslationX(c39.a(4.0f));
                    viewForPosition.setTranslationY(-c39.a(4.0f));
                }
            }
            return;
        }
        int i3 = itemCount - 1;
        int i4 = i3;
        while (i4 >= 0) {
            View viewForPosition2 = recycler.getViewForPosition(i4);
            addView(viewForPosition2);
            measureChildWithMargins(viewForPosition2, i, i);
            int width2 = (getWidth() - getDecoratedMeasuredWidth(viewForPosition2)) / 2;
            int height2 = (getHeight() - getDecoratedMeasuredHeight(viewForPosition2)) / 2;
            int i5 = i4;
            int i6 = i3;
            layoutDecoratedWithMargins(viewForPosition2, width2, height2, width2 + getDecoratedMeasuredWidth(viewForPosition2), height2 + getDecoratedMeasuredHeight(viewForPosition2));
            if (itemCount == 3) {
                if (i5 == i6) {
                    viewForPosition2.setRotation(-1.0f);
                    ro1.a(viewForPosition2, this.f, a.d(this.e, 10.0f), this.g, a.d(this.e, 10.0f), 0, 0);
                } else {
                    if (i5 == itemCount - 2) {
                        viewForPosition2.setRotation(0.0f);
                        viewForPosition2.setTranslationX(c39.a(4.0f));
                        viewForPosition2.setTranslationY(-c39.a(4.0f));
                    } else {
                        b = -1063256064;
                        viewForPosition2.setRotation(-5.0f);
                        viewForPosition2.setTranslationX(c39.a(4.0f));
                        viewForPosition2.setTranslationY(-c39.a(4.0f));
                        ro1.a(viewForPosition2, this.f, a.d(this.e, 10.0f), this.g, a.d(this.e, 10.0f), 0, 0);
                    }
                    c = 2;
                }
                b = -1063256064;
                c = 2;
            } else {
                b = -1063256064;
                c = 2;
                if (itemCount != 2) {
                    viewForPosition2.setRotation(0.0f);
                    ro1.a(viewForPosition2, this.f, a.d(this.e, 10.0f), this.g, a.d(this.e, 10.0f), 0, 0);
                } else if (i5 == i6) {
                    viewForPosition2.setRotation(0.0f);
                    ro1.a(viewForPosition2, this.f, a.d(this.e, 10.0f), this.g, a.d(this.e, 10.0f), 0, 0);
                } else {
                    viewForPosition2.setRotation(0.0f);
                    viewForPosition2.setTranslationX(c39.a(4.0f));
                    viewForPosition2.setTranslationY(-c39.a(4.0f));
                    ro1.a(viewForPosition2, this.f, a.d(this.e, 10.0f), this.g, a.d(this.e, 10.0f), 0, 0);
                }
            }
            i4 = i5 - 1;
            i3 = i6;
            i = 0;
        }
    }
}
