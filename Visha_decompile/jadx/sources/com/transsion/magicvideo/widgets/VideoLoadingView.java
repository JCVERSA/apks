package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.transsion.magicvideo.R;
import defpackage.e07;

public class VideoLoadingView extends LinearLayout {
    public Context b;
    public ImageView c;
    public TextView d;
    public Runnable e;

    public VideoLoadingView(Context context) {
        this(context, null);
    }

    public static String getTextSpeed(long j) {
        if (j >= 0 && j < 1024) {
            return j + " KB/s";
        }
        if (j >= 1024 && j < 1048576) {
            return Long.toString(j / 1024) + " KB/s";
        }
        if (j < 1048576 || j >= 1073741824) {
            return "";
        }
        return Long.toString(j / 1048576) + " MB/s";
    }

    public void init() {
        View viewInflate = View.inflate(this.b, R.layout.video_loading_view, this);
        this.c = (ImageView) viewInflate.findViewById(R.id.iv_logo);
        this.d = (TextView) viewInflate.findViewById(R.id.tv_net_speed);
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            post(this.e);
        } else {
            removeCallbacks(this.e);
        }
    }

    public void showOrHideLogo(boolean z) {
        this.c.setVisibility(z ? 0 : 8);
    }

    public VideoLoadingView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoLoadingView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new Runnable() {
            @Override
            public void run() {
                VideoLoadingView.this.d.setText(VideoLoadingView.getTextSpeed(e07.b(VideoLoadingView.this.b)));
                VideoLoadingView.this.postDelayed(this, 500L);
            }
        };
        this.b = context;
        init();
    }
}
