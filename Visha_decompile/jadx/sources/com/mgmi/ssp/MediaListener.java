package com.mgmi.ssp;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.hunantv.media.widget.IVideoView;

public interface MediaListener extends BasicADListener {
    int getCurrentTime();

    IVideoView getPositiveView();

    Bitmap getSnapshot(int i, int i2);

    int getVideoHeight();

    int getVideoWith();

    boolean isContentPlaying();

    boolean isFullScreen();

    void onAdClick();

    void onAdClick(String str);

    void onAdComplete();

    void onAdCountClicked();

    void onAdError(@NonNull AdError adError);

    void onAdPrepared();

    void onAdRequestSuccess();

    void onAdStart();

    void onClickBackButton();

    void onClickFullScreenButton();

    void onUpdateAdTime(int i);

    void onUpdateStatus(boolean z, boolean z2, boolean z3);

    void onVideoSizeChanged(int i, int i2);

    void resumePlay();
}
