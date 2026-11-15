package com.transsion.effectengine.bounceeffect.adapters;

import android.view.View;
import android.widget.HorizontalScrollView;

public final class z1OoOif implements z1OoOfor {
    public final HorizontalScrollView z1OoOdo;

    public z1OoOif(HorizontalScrollView horizontalScrollView) {
        this.z1OoOdo = horizontalScrollView;
    }

    @Override
    public final View getView() {
        return this.z1OoOdo;
    }

    @Override
    public final boolean isInAbsoluteEnd() {
        return !this.z1OoOdo.canScrollHorizontally(1);
    }

    @Override
    public final boolean isInAbsoluteStart() {
        return !this.z1OoOdo.canScrollHorizontally(-1);
    }
}
