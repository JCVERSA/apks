package com.transsion.audio.appwidgt;

import android.appwidget.AppWidgetManager;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.c;
import com.transsion.audio.R;
import com.transsion.audio.service.MusicService;
import defpackage.vf;

public class AppWidgetMusicSecondProvider extends BaseAppMusicProvider {
    @Override
    public void C(RemoteViews remoteViews, int i, AppWidgetManager appWidgetManager) {
        super.C(remoteViews, i, appWidgetManager);
        remoteViews.setTextViewText(R.id.artist, this.c);
        MusicService musicService = this.f;
        if (musicService != null) {
            remoteViews.setOnClickPendingIntent(R.id.root, musicService.s());
        } else {
            remoteViews.setOnClickPendingIntent(R.id.root, vf.d(this.g));
        }
    }

    @Override
    public Class h() {
        return AppWidgetMusicSecondProvider.class;
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
            return R.layout.layout_app_widgt_two;
        }
        return q() ? R.layout.layout_app_widgt_two_flat_land : R.layout.layout_app_widgt_two_flat;
    }

    @Override
    public int k() {
        return 20;
    }

    @Override
    public int l() {
        return 2;
    }

    @Override
    public int m() {
        if (!c.e() || p()) {
            return 148;
        }
        return q() ? 128 : 134;
    }
}
