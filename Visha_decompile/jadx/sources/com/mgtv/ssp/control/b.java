package com.mgtv.ssp.control;

import android.view.View;
import android.view.animation.Animation;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface b {
    void attach(@NonNull a aVar);

    @Nullable
    View getView();

    void onLockStateChanged(boolean z);

    void onPlayStateChanged(int i);

    void onPlayerStateChanged(int i);

    void onVisibilityChanged(boolean z, Animation animation);

    void setProgress(int i, int i2);
}
