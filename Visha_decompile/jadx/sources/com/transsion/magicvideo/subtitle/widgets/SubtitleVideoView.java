package com.transsion.magicvideo.subtitle.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.avery.subtitle.widget.TracksSubtitleView;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.player.b;
import defpackage.f16;
import defpackage.pp3;

public class SubtitleVideoView extends TracksSubtitleView {
    public VideoPlayManager B;

    public SubtitleVideoView(Context context) {
        super(context);
    }

    @Override
    public void bindToIPlayer(b bVar) {
        super.bindToIPlayer(bVar);
    }

    @Override
    public int g() {
        return pp3.j() ? R.layout.subtitles_visha_layout : super.g();
    }

    @Override
    public void initView(Context context) {
        this.B = VideoPlayManager.X();
        super.initView(context);
    }

    @Override
    public void setFirstTrackDelay(long j) {
        if (pp3.j()) {
            this.B.f2(j);
        } else {
            super.setFirstTrackDelay(j);
        }
    }

    @Override
    public void setFirstTrackSubtitle(SubtitleTrackInfo subtitleTrackInfo) {
        if (!pp3.j()) {
            super.setFirstTrackSubtitle(subtitleTrackInfo);
            return;
        }
        boolean z = subtitleTrackInfo == null || (subtitleTrackInfo.isInnerSubtitle && subtitleTrackInfo.sub_inner_id == -1);
        String str = subtitleTrackInfo == null ? null : subtitleTrackInfo.path;
        if (z || (!subtitleTrackInfo.isInnerSubtitle && (TextUtils.isEmpty(str) || "NULL".equals(str)))) {
            this.c.onSubtitleText("");
            this.B.h2(-1);
        } else {
            if (subtitleTrackInfo.isInnerSubtitle) {
                this.B.h2(subtitleTrackInfo.sub_inner_id);
            } else {
                this.B.z(subtitleTrackInfo.path);
            }
            f16.a = subtitleTrackInfo.sub_format;
        }
    }

    @Override
    public void setSecondTrackDelay(long j) {
        if (pp3.j()) {
            return;
        }
        super.setFirstTrackDelay(j);
    }

    @Override
    public void setSecondTrackSubtitle(SubtitleTrackInfo subtitleTrackInfo) {
        if (pp3.j()) {
            return;
        }
        super.setSecondTrackSubtitle(subtitleTrackInfo);
    }

    public SubtitleVideoView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SubtitleVideoView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
