package com.transsion.magicvideo.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.blankj.utilcode.util.b;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.h27;

public class VideoPlayerActivityInner extends VideoPlayerActivity {
    public static void F2(Context context, PlayVideoData playVideoData) {
        Intent intent = new Intent(context, (Class<?>) VideoPlayerActivity.class);
        MIMediaInfo miMediaInfo = playVideoData.getMiMediaInfo();
        if (miMediaInfo != null) {
            playVideoData.setNeedRecordVideoStates(miMediaInfo.getMediaNeedRecordPlayInfo());
        } else {
            playVideoData.setNeedRecordVideoStates(true);
        }
        playVideoData.setShowPicInPic(!playVideoData.isFromNet);
        playVideoData.toIntent(intent);
        boolean z = context instanceof Activity;
        if (!z) {
            intent.addFlags(268435456);
        }
        BaseActivity.startActivitySafely(context, intent);
        if (z) {
            ((Activity) context).overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
        }
    }

    public static void G2(PlayVideoData playVideoData) {
        if (b.f()) {
            LiveEventBus.b().c("launch_video_player_activity", playVideoData);
        } else {
            h27.c().e(1181, playVideoData);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        VideoPlayManager.X().E(getApplicationContext());
        super.onCreate(bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        VideoPlayManager.X().t2(getApplicationContext());
    }

    @Override
    public void onNewIntent(Intent intent) {
        Log.d("VideoPlayer_Activity", "onNewIntent " + intent);
        super.onNewIntent(intent);
    }

    @Override
    public void onPause() {
        super.onPause();
        overridePendingTransition(0, 0);
    }

    @Override
    public void onResume() {
        super.onResume();
        overridePendingTransition(0, 0);
    }

    @Override
    public void onStart() {
        super.onStart();
        VideoPlayManager.X().G1();
    }

    @Override
    public void onStop() {
        super.onStop();
    }
}
