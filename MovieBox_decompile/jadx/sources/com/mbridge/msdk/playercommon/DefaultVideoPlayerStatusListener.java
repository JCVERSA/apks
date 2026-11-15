package com.mbridge.msdk.playercommon;

import com.mbridge.msdk.foundation.tools.o0;

public class DefaultVideoPlayerStatusListener implements VideoPlayerStatusListener {
    protected static final String TAG = "DefaultVideoPlayerStatusListener";

    @Override
    public void onBufferingEnd() {
        o0.a(TAG, "OnBufferingEnd");
    }

    @Override
    public void onBufferingStart(String str) {
        o0.a(TAG, "OnBufferingStart:" + str);
    }

    @Override
    public void onBufferingTimeOut(String str) {
        o0.a(TAG, "onBufferingTimeOut:" + str);
    }

    @Override
    public void onPlayCompleted() {
        o0.a(TAG, "onPlayCompleted");
    }

    @Override
    public void onPlayError(String str) {
        o0.a(TAG, "onPlayError:" + str);
    }

    @Override
    public void onPlayProgress(int i10, int i11) {
        o0.a(TAG, "onPlayProgress:" + i10 + ",allDuration:" + i11);
    }

    @Override
    public void onPlayProgressMS(int i10, int i11) {
        o0.a(TAG, "onPlayProgressMS:");
    }

    @Override
    public void onPlaySetDataSourceError(String str) {
        o0.a(TAG, "onPlaySetDataSourceError:" + str);
    }

    @Override
    public void onPlayStarted(int i10) {
        o0.a(TAG, "onPlayStarted:" + i10);
    }
}
