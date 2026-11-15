package com.transsion.audio.databinding;

import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;

public final class ListEmptyViewBinding implements ViewBinding {
    public final RelativeLayout b;

    @Override
    public RelativeLayout getRoot() {
        return this.b;
    }
}
