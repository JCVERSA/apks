package com.transsion.audio.databinding;

import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;

public final class PlaylistHeaderViewBinding implements ViewBinding {
    public final LinearLayout b;

    @Override
    public LinearLayout getRoot() {
        return this.b;
    }
}
