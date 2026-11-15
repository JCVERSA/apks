package com.transsion.vishaplayersdk.gsyplayer.listener;

import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import java.util.List;

public interface GSYMediaPlayerListener {
    void onAdComplete(IMediaPlayer iMediaPlayer);

    void onAdCountdown(IMediaPlayer iMediaPlayer, int i);

    void onAdPrepared(IMediaPlayer iMediaPlayer);

    void onAdStartPlaying(IMediaPlayer iMediaPlayer);

    void onAuthorizeResult(String str, String str2, Object obj);

    void onAutoCompletion();

    void onBackFullscreen();

    void onBufferingUpdate(int i);

    void onCompletion();

    void onError(int i, int i2);

    void onInfo(int i, int i2);

    void onPlayerInitResult(IMediaPlayer iMediaPlayer, GSYModel gSYModel);

    void onPrepared();

    void onSeekComplete();

    void onSetSubtitlesFailed(String str);

    void onSetSubtitlesSuccess(String str);

    void onSubtitlesAvailable(List<VideoSubtitle> list);

    void onVideoFirstFrameShow();

    void onVideoPause();

    void onVideoResume();

    void onVideoResume(boolean z);

    void onVideoSizeChanged();

    void onVideoStart();
}
