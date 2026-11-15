package com.transsion.btdownload;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.ao;
import defpackage.hk3;
import defpackage.pz2;
import defpackage.raa;
import defpackage.tpb;
import java.io.File;

public abstract class FileItemUtils {
    public static void a(BaseActivity baseActivity, String str, String str2) {
        int iLastIndexOf;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        String strSubstring = (TextUtils.isEmpty(str2) || (iLastIndexOf = str2.lastIndexOf(Consts.DOT)) <= 0) ? "unknow" : str2.substring(iLastIndexOf);
        if (hk3.a.contains(strSubstring)) {
            d(baseActivity, str2);
            return;
        }
        if (hk3.d.contains(strSubstring)) {
            b(str2);
            return;
        }
        if (hk3.e.contains(strSubstring)) {
            raa.j(baseActivity, new File(str));
        } else if (hk3.g.contains(strSubstring)) {
            c(baseActivity, str);
        } else {
            raa.j(baseActivity, new File(str));
        }
    }

    public static void b(final String str) {
        ThreadUtils.i(new ThreadUtils.SimpleTask<AudioItem>() {
            @Override
            public AudioItem doInBackground() throws Throwable {
                return ao.U().E(str);
            }

            @Override
            public void onSuccess(AudioItem audioItem) {
                PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
                if (playAudioDataConvertToPlayAudioData != null) {
                    playAudioDataConvertToPlayAudioData.listFlag = 22;
                    playAudioDataConvertToPlayAudioData.autoPlay = true;
                    playAudioDataConvertToPlayAudioData.folderName = "Visha";
                    playAudioDataConvertToPlayAudioData.sourceAction = "";
                    playAudioDataConvertToPlayAudioData.artistName = audioItem.artistName;
                }
                LiveEventBus.b().c("launch_audio_player_activity", playAudioDataConvertToPlayAudioData);
            }
        });
    }

    public static void c(Context context, String str) {
        MediaItem mediaItemB = pz2.b(context, str, false);
        if (mediaItemB != null) {
            raa.k(context, mediaItemB.uri);
        }
    }

    public static void d(BaseActivity baseActivity, String str) {
        int iD0;
        MediaItem mediaItemI = tpb.j0().I(str);
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItemI);
        if (playVideoDataConvertToPlayVideoData != null) {
            playVideoDataConvertToPlayVideoData.setShowPicInPic(true);
            playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(true);
            playVideoDataConvertToPlayVideoData.folderName = "";
            playVideoDataConvertToPlayVideoData.listFlag = 2;
        }
        if (mediaItemI != null && mediaItemI.equals(VideoPlayManager.X().c0()) && (iD0 = VideoPlayManager.X().d0()) != 0) {
            playVideoDataConvertToPlayVideoData.playPosition = iD0;
        }
        if (VideoPlayManager.X().x0() && baseActivity.isAlertWindowPermissionGranted()) {
            VideoPlayManager.X().o2(playVideoDataConvertToPlayVideoData);
        } else {
            VideoPlayerActivityInner.G2(playVideoDataConvertToPlayVideoData);
        }
    }
}
