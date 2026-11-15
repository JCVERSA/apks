package com.bytedance.sdk.openadsdk.api.nativeAd;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class PAGMediaView extends FrameLayout {
    protected Integer Sj;

    public PAGMediaView(@NonNull Context context) {
        super(context);
    }

    public void setMrcTrackerKey(Integer num) {
        this.Sj = num;
    }

    public PAGMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PAGMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public PAGMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    public void close() {
    }

    public void setVideoAdListener(PAGVideoAdListener pAGVideoAdListener) {
    }
}
