package com.transsion.audio.databinding;

import androidx.viewbinding.ViewBinding;
import com.transsion.audio.widgets.AudioAppFootActionBar;

public final class BottomAudioBarBinding implements ViewBinding {
    public final AudioAppFootActionBar b;

    @Override
    public AudioAppFootActionBar getRoot() {
        return this.b;
    }
}
