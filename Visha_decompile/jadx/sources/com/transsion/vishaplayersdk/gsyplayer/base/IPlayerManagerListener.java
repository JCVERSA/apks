package com.transsion.vishaplayersdk.gsyplayer.base;

import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;

public interface IPlayerManagerListener {
    void onAdComplete(IMediaPlayer iMediaPlayer);

    void onAdCountdown(IMediaPlayer iMediaPlayer, int i);

    void onAdPrepared(IMediaPlayer iMediaPlayer);

    void onAdStartPlaying(IMediaPlayer iMediaPlayer);

    void onAuthorizeResult(String str, String str2, Object obj);

    void onPlayerInitResult(IMediaPlayer iMediaPlayer, GSYModel gSYModel);
}
