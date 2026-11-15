package com.transsion.effectengine.bounceeffect.adapters;

import android.view.View;
import android.widget.AbsListView;

public final class z1OoOdo implements z1OoOfor {
    public final AbsListView z1OoOdo;

    public z1OoOdo(AbsListView absListView) {
        this.z1OoOdo = absListView;
    }

    @Override
    public final View getView() {
        return this.z1OoOdo;
    }

    @Override
    public final boolean isInAbsoluteEnd() {
        if (this.z1OoOdo.getChildCount() > 0) {
            int childCount = this.z1OoOdo.getChildCount();
            int count = this.z1OoOdo.getCount();
            int firstVisiblePosition = this.z1OoOdo.getFirstVisiblePosition() + childCount;
            int bottom = this.z1OoOdo.getChildAt(childCount - 1).getBottom();
            if (firstVisiblePosition >= count && bottom <= this.z1OoOdo.getHeight() - this.z1OoOdo.getListPaddingBottom()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean isInAbsoluteStart() {
        if (this.z1OoOdo.getChildCount() > 0) {
            return this.z1OoOdo.getFirstVisiblePosition() <= 0 && this.z1OoOdo.getChildAt(0).getTop() >= this.z1OoOdo.getListPaddingTop();
        }
        return false;
    }
}
