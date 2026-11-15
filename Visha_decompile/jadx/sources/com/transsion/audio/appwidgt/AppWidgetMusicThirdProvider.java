package com.transsion.audio.appwidgt;

import android.appwidget.AppWidgetManager;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.c;
import com.transsion.audio.R;
import com.transsion.audio.service.MusicService;
import com.transsion.audio.widgets.MusicHelper;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.tn;
import defpackage.tv6;
import defpackage.vf;

public class AppWidgetMusicThirdProvider extends BaseAppMusicProvider {
    @Override
    public void C(final RemoteViews remoteViews, final int i, final AppWidgetManager appWidgetManager) {
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
        remoteViews.setOnClickPendingIntent(R.id.farvorites, vf.a(this.g));
        remoteViews.setOnClickPendingIntent(R.id.history, vf.b(this.g));
        MusicHelper.loadPlayListBackground(this.g, new tn.b() {
            @Override
            public final void a(Bitmap bitmap) {
                this.a.H(remoteViews, appWidgetManager, i, bitmap);
            }
        }, 32);
        MusicHelper.loadPlayListBackground(this.g, new tn.b() {
            @Override
            public final void a(Bitmap bitmap) {
                this.a.I(remoteViews, appWidgetManager, i, bitmap);
            }
        }, 33);
    }

    public final void H(RemoteViews remoteViews, AppWidgetManager appWidgetManager, int i, Bitmap bitmap) {
        remoteViews.setTextColor(R.id.tv_his, this.g.getResources().getColor(R.color.widget_cover_text_color));
        remoteViews.setImageViewResource(R.id.iv_his_logo, R.drawable.ic_music_widget_history_white);
        remoteViews.setImageViewResource(R.id.iv_his_bg, J());
        remoteViews.setImageViewBitmap(R.id.iv_his_cover, bitmap);
        appWidgetManager.updateAppWidget(i, remoteViews);
    }

    public final void I(RemoteViews remoteViews, AppWidgetManager appWidgetManager, int i, Bitmap bitmap) {
        remoteViews.setTextColor(R.id.tv_far, this.g.getResources().getColor(R.color.widget_cover_text_color));
        remoteViews.setImageViewResource(R.id.iv_far_logo, R.drawable.ic_music_widget_favorites_white);
        remoteViews.setImageViewResource(R.id.iv_far_bg, J());
        remoteViews.setImageViewBitmap(R.id.iv_far_cover, bitmap);
        appWidgetManager.updateAppWidget(i, remoteViews);
    }

    public int J() {
        if (o()) {
            return q() ? R.drawable.bg_appwidget_far_flat_land : R.drawable.bg_appwidget_far_flat;
        }
        return R.drawable.bg_appwidget_far;
    }

    @Override
    public Class h() {
        return AppWidgetMusicThirdProvider.class;
    }

    @Override
    public int i() {
        if (!c.e() || p()) {
            return 160;
        }
        return q() ? 128 : 148;
    }

    @Override
    public int j() {
        if (!c.e() || p()) {
            return R.layout.layout_app_widgt_three;
        }
        return q() ? R.layout.layout_app_widgt_three_flat_land : R.layout.layout_app_widgt_three_flat;
    }

    @Override
    public int k() {
        return 24;
    }

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return (!c.e() || p()) ? TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL : MediaPlayer.Event.Prepared;
    }
}
