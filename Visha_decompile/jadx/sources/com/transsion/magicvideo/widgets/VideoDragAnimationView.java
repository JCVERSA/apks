package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.magicvideo.R;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import defpackage.wna;
import defpackage.z7c;

public class VideoDragAnimationView extends RoundFrameLayout {
    public Context i;
    public MediaItem j;
    public RoundFrameLayout k;
    public ImageView l;
    public TextView m;

    public VideoDragAnimationView(Context context, MediaItem mediaItem) {
        super(context);
        this.i = context;
        this.j = mediaItem;
        a(mediaItem);
    }

    public final void a(MediaItem mediaItem) {
        View viewInflate = LayoutInflater.from(this.i).inflate(R.layout.view_video_drag_animation, this);
        this.k = (RoundFrameLayout) viewInflate.findViewById(R.id.round_framelayout);
        this.l = (ImageView) viewInflate.findViewById(R.id.iv_bucket_fragment_item);
        this.m = (TextView) viewInflate.findViewById(R.id.tv_main_fragment_item_duration);
        z7c.d(this.i, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.i.getResources(), R.drawable.main_fragment_placeholder, this.i.getTheme()), this.l, false);
        this.l.setAlpha(0.7f);
        if (mediaItem.duration == 0) {
            this.m.setVisibility(8);
        } else {
            this.m.setVisibility(0);
            this.m.setText(wna.c(mediaItem.duration));
        }
    }
}
