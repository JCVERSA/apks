package com.transsion.effectengine.bounceeffect.adapters;

import android.view.View;
import android.widget.ScrollView;

public final class z1OoOint implements z1OoOfor {
    public final ScrollView z1OoOdo;

    public z1OoOint(ScrollView scrollView) {
        this.z1OoOdo = scrollView;
    }

    @Override
    public final View getView() {
        return this.z1OoOdo;
    }

    @Override
    public final boolean isInAbsoluteEnd() {
        return !this.z1OoOdo.canScrollVertically(1);
    }

    @Override
    public final boolean isInAbsoluteStart() {
        return !this.z1OoOdo.canScrollVertically(-1);
    }
}
