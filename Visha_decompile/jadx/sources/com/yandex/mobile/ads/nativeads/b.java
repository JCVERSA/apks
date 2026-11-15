package com.yandex.mobile.ads.nativeads;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.monetization.ads.nativeads.CustomizableMediaView;

public abstract class b extends CustomizableMediaView {
    public b(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setVideoControls(int i) {
        a(i);
    }
}
