package com.transsion.audio.databinding;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;

public final class OsSpinnerItemLayoutBinding implements ViewBinding {
    public final TextView b;

    @Override
    public TextView getRoot() {
        return this.b;
    }
}
