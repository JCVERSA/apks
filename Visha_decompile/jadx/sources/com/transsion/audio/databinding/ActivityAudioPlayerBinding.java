package com.transsion.audio.databinding;

import androidx.viewbinding.ViewBinding;
import com.transsion.widgets.CustomSwipeBackLayout;

public final class ActivityAudioPlayerBinding implements ViewBinding {
    public final CustomSwipeBackLayout b;

    @Override
    public CustomSwipeBackLayout getRoot() {
        return this.b;
    }
}
