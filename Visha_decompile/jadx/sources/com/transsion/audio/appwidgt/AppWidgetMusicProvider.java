package com.transsion.audio.appwidgt;

import android.appwidget.AppWidgetManager;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.c;
import com.transsion.audio.R;
import com.transsion.audio.service.MusicService;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.tv6;
import defpackage.vf;

public class AppWidgetMusicProvider extends BaseAppMusicProvider {
    @Override
    public void C(RemoteViews remoteViews, int i, AppWidgetManager appWidgetManager) {
        super.C(remoteViews, i, appWidgetManager);
        remoteViews.setTextViewText(R.id.artist, this.c);
        if (this.e) {
            remoteViews.setImageViewBitmap(R.id.iv_far, tv6.b());
        } else {
            tv6.c();
            remoteViews.setImageViewResource(R.id.iv_far, R.drawable.ic_music_widget_farvorite_w);
        }
        MusicService musicService = this.f;
        if (musicService != null) {
            remoteViews.setOnClickPendingIntent(R.id.root, musicService.s());
        } else {
            remoteViews.setOnClickPendingIntent(R.id.root, vf.d(this.g));
        }
    }

    @Override
    public Class h() {
        return AppWidgetMusicProvider.class;
    }

    @Override
    public int i() {
        if (!c.e() || p()) {
            return 90;
        }
        return q() ? 68 : 82;
    }

    @Override
    public int j() {
        if (!c.e() || p()) {
            return R.layout.layout_app_widgt_one;
        }
        return q() ? R.layout.layout_app_widgt_one_flat_land : R.layout.layout_app_widgt_one_flat;
    }

    @Override
    public int k() {
        return 20;
    }

    @Override
    public int l() {
        return 3;
    }

    @Override
    public int m() {
        return (!c.e() || p()) ? TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL : MediaPlayer.Event.Prepared;
    }
}
