package com.transsion.vishaplayersdk.gsyplayer.listener;

public interface VideoAllCallBack {
    void onAdComplete();

    void onAdStartPlaying();

    void onAutoComplete(String str, Object... objArr);

    void onBufferingUpdate(boolean z, Object... objArr);

    void onClickBlank(String str, Object... objArr);

    void onClickBlankFullscreen(String str, Object... objArr);

    void onClickResume(String str, Object... objArr);

    void onClickResumeFullscreen(String str, Object... objArr);

    void onClickSeekbar(String str, Object... objArr);

    void onClickSeekbarFullscreen(String str, Object... objArr);

    void onClickStartError(String str, Object... objArr);

    void onClickStartIcon(String str, Object... objArr);

    void onClickStartThumb(String str, Object... objArr);

    void onClickStop(String str, Object... objArr);

    void onClickStopFullscreen(String str, Object... objArr);

    void onEnterFullscreen(String str, Object... objArr);

    void onEnterImmerse();

    void onEnterSmallWidget(String str, Object... objArr);

    void onExitPlayer(String str, Object... objArr);

    void onNeedVip();

    void onOutImmerse();

    void onPlayError(String str, Object... objArr);

    void onPrepared(String str, Object... objArr);

    void onQuitFullscreen(String str, Object... objArr);

    void onQuitSmallWidget(String str, Object... objArr);

    void onRequestVip(String str, Object... objArr);

    void onRetryPlay();

    void onSetMute(boolean z);

    void onStartPrepared(String str, Object... objArr);

    void onTouchScreenSeekLight(String str, Object... objArr);

    void onTouchScreenSeekPosition(String str, Object... objArr);

    void onTouchScreenSeekVolume(String str, Object... objArr);

    void onVideoAuthFailed(String str, Object... objArr);

    void onVideoAuthSuccess(String str, Object... objArr);

    void onVideoPause(String str, Object... objArr);

    void onVideoStartShow(String str, Object... objArr);
}
