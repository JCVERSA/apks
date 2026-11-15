package com.transsion.audio.databinding;

import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;

public final class AudioFragmentMainBinding implements ViewBinding {
    public final CoordinatorLayout b;

    @Override
    public CoordinatorLayout getRoot() {
        return this.b;
    }
}
